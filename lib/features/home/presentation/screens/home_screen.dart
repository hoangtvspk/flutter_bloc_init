import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/config/app_color.dart';
import '../../business_logic/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    super.initState();
    _homeBloc = HomeBloc()..add(const HomeEvent.started());
  }

  @override
  void dispose() {
    _homeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColor.brownDark,
              AppColor.gray,
              AppColor.grayLight,
            ],
          ),
        ),
        child: SafeArea(
          child: BlocProvider(
            create: (context) => _homeBloc,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return CustomScrollView(
                  slivers: [
                    // App Bar
                    const SliverAppBar(
                      expandedHeight: 120,
                      floating: false,
                      pinned: true,
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      flexibleSpace: FlexibleSpaceBar(
                        title: Text(
                          'BLoC Pattern Demo',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        centerTitle: false,
                        titlePadding: EdgeInsets.only(
                          left: 20,
                          bottom: 16,
                        ),
                      ),
                    ),

                    // Content
                    SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverList(
                        delegate: SliverChildListDelegate([
                          // Status Card
                          _buildStatusCard(context, state),

                          const SizedBox(height: 20),

                          // Counter Card
                          _buildCounterCard(context, state),

                          const SizedBox(height: 20),

                          // Features Card
                          _buildFeaturesCard(context, state),

                          const SizedBox(height: 20),

                          // Actions Card
                          _buildActionsCard(context, state),
                        ]),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatusCard(BuildContext context, HomeState state) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.gray.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColor.tertiary.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.info_outline,
                color: AppColor.tertiary,
                size: 24,
              ),
              SizedBox(width: 12),
              Text(
                'Data Status',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          state.statusLoadData.maybeWhen(
            idle: () => _buildStatusItem(
                'Idle', Icons.pause_circle_outline, Colors.grey),
            loading: () => _buildStatusItem(
              'Loading...',
              Icons.hourglass_empty,
              Colors.blue,
              isLoading: true,
            ),
            failure: (error) => _buildStatusItem(
              'Error: $error',
              Icons.error_outline,
              Colors.red,
            ),
            success: () => _buildStatusItem(
              'Loaded Successfully',
              Icons.check_circle_outline,
              Colors.green,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusItem(
    String text,
    IconData icon,
    Color color, {
    bool isLoading = false,
  }) {
    return Row(
      children: [
        if (isLoading)
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(color),
            ),
          )
        else
          Icon(icon, color: color, size: 20),
        const SizedBox(width: 12),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildCounterCard(BuildContext context, HomeState state) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColor.primary.withValues(alpha: 0.8),
            AppColor.secondary.withValues(alpha: 0.6),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColor.primary.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          const Text(
            'Counter',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '${state.counter}',
            style: const TextStyle(
              fontSize: 64,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIconButton(
                icon: Icons.remove,
                onPressed: () {
                  context
                      .read<HomeBloc>()
                      .add(const HomeEvent.decrementCounter());
                },
                color: Colors.red.shade300,
              ),
              const SizedBox(width: 20),
              _buildIconButton(
                icon: Icons.add,
                onPressed: () {
                  context
                      .read<HomeBloc>()
                      .add(const HomeEvent.incrementCounter());
                },
                color: Colors.green.shade300,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required VoidCallback onPressed,
    required Color color,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.2),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: IconButton(
        icon: Icon(icon, color: Colors.white),
        onPressed: onPressed,
        iconSize: 28,
      ),
    );
  }

  Widget _buildFeaturesCard(BuildContext context, HomeState state) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.gray.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColor.tertiary.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(
                Icons.star_outline,
                color: AppColor.tertiary,
                size: 24,
              ),
              SizedBox(width: 12),
              Text(
                'BLoC Features',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          if (state.statusLoadData.maybeWhen(
            loading: () => true,
            orElse: () => false,
          ))
            const Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: CircularProgressIndicator(),
              ),
            )
          else if (state.features.isEmpty)
            const Text(
              'No features loaded',
              style: TextStyle(color: Colors.grey),
            )
          else
            ...state.features.asMap().entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                        color: AppColor.tertiary,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        entry.value,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
        ],
      ),
    );
  }

  Widget _buildActionsCard(BuildContext context, HomeState state) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColor.gray.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColor.tertiary.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Actions',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: _buildActionButton(
                  context: context,
                  label: 'Refresh Data',
                  icon: Icons.refresh,
                  isLoading: state.statusRefreshData.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  onPressed: () {
                    context.read<HomeBloc>().add(const HomeEvent.refreshData());
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _buildActionButton(
                  context: context,
                  label: 'Reload',
                  icon: Icons.restart_alt,
                  onPressed: () {
                    context.read<HomeBloc>().add(const HomeEvent.started());
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required String label,
    required IconData icon,
    required VoidCallback onPressed,
    bool isLoading = false,
  }) {
    return ElevatedButton.icon(
      onPressed: isLoading ? null : onPressed,
      icon: isLoading
          ? const SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
