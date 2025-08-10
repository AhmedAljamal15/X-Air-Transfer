

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_air_transfer/controllers/wifi_direct_controller.dart';
import 'package:x_air_transfer/models/wifi_direct_models.dart';
import 'package:x_air_transfer/widgets/chat_tab.dart';
import 'package:x_air_transfer/widgets/connection_tab.dart';
import 'package:x_air_transfer/widgets/file_transfer_tab.dart';
import 'package:x_air_transfer/widgets/settings_tab.dart';
import 'package:x_air_transfer/widgets/speed_test_tab.dart';
import 'package:x_air_transfer/wifi_direct_service.dart';

class WiFiDirectHomePage extends StatefulWidget {
  const WiFiDirectHomePage({super.key});

  @override
  State<WiFiDirectHomePage> createState() => _WiFiDirectHomePageState();
}

class _WiFiDirectHomePageState extends State<WiFiDirectHomePage>
    with TickerProviderStateMixin {
  late WiFiDirectController _controller;
  late TabController _tabController;
  WiFiDirectState _state = WiFiDirectState();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _controller = WiFiDirectController(WiFiDirectService());
    _initializeController();
  }

  void _initializeController() {
    // Listen to state changes from the controller
    _controller.stateStream.listen((newState) {
      if (mounted) {
        setState(() {
          _state = newState;
        });
      }
    });

    // Controller initializes automatically in constructor
  }

  @override
  void dispose() {
    _tabController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: SafeArea(
          child: Column(
            children: [
              // Modern tab bar with elevated design
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardTheme.color,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Theme.of(context).shadowColor.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: TabBar(
                    controller: _tabController,
                    indicator: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorPadding: const EdgeInsets.all(2),
                    labelColor: Colors.white,
                    unselectedLabelColor: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.color?.withOpacity(0.6),
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    tabs: const [
                      Tab(icon: Icon(Icons.wifi, size: 20), height: 60),
                      Tab(
                        icon: Icon(Icons.chat_bubble_outline, size: 20),
                        height: 60,
                      ),
                      Tab(icon: Icon(Icons.speed, size: 20), height: 60),
                      Tab(icon: Icon(Icons.folder, size: 20), height: 60),
                      Tab(icon: Icon(Icons.settings, size: 20), height: 60),
                    ],
                  ),
                ),
              ),
              // Tab content with padding
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ConnectionTab(controller: _controller, state: _state),
                      ChatTab(controller: _controller, state: _state),
                      SpeedTestTab(controller: _controller, state: _state),
                      FileTransferTab(controller: _controller, state: _state),
                      SettingsTab(controller: _controller, state: _state),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


