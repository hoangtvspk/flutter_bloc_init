import 'package:bui_bloc/core/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../business_logic/home_bloc.dart';
import '../widgets/bloc_documentation_card.dart';
import '../widgets/category_filter_chips.dart';
import '../widgets/statistics_card.dart';
import '../widgets/task_card.dart';
import '../widgets/task_input_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final HomeBloc _homeBloc;
  late final AnimationController _headerAnimationController;
  late final AnimationController _contentAnimationController;

  @override
  void initState() {
    super.initState();
    _homeBloc = HomeBloc()..add(const HomeEvent.started());

    _headerAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _contentAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _headerAnimationController.forward();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) _contentAnimationController.forward();
    });
  }

  @override
  void dispose() {
    _homeBloc.close();
    _headerAnimationController.dispose();
    _contentAnimationController.dispose();
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
              Color(0xFF0F0C29), // Deep navy
              Color(0xFF302B63), // Dark purple
              Color(0xFF24243E), // Dark blue
            ],
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: SafeArea(
          child: BlocProvider(
            create: (context) => _homeBloc,
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    // Animated App Bar
                    _buildAnimatedAppBar(state),

                    // Loading Overlay
                    if (state.statusLoadData.maybeWhen(
                      loading: () => true,
                      orElse: () => false,
                    ))
                      _buildLoadingOverlay()
                    else ...[
                      // Category Filter
                      SliverToBoxAdapter(
                        child: _buildAnimatedSection(
                          delay: 0.1,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 16, bottom: 16),
                            child: CategoryFilterChips(),
                          ),
                        ),
                      ),

                      // Content
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        sliver: SliverList(
                          delegate: SliverChildListDelegate([
                            // Task Input Card
                            _buildAnimatedSection(
                              delay: 0.2,
                              child: const TaskInputCard(),
                            ),

                            const SizedBox(height: 20),

                            // Statistics Card
                            _buildAnimatedSection(
                              delay: 0.3,
                              child: const StatisticsCard(),
                            ),

                            const SizedBox(height: 24),

                            // Tasks Section Header
                            _buildAnimatedSection(
                              delay: 0.4,
                              child: _buildSectionHeader(
                                'Your Tasks',
                                Icons.task_alt,
                                state,
                              ),
                            ),

                            const SizedBox(height: 12),

                            // Tasks List
                            _buildTasksList(state),

                            const SizedBox(height: 24),

                            // Documentation Section
                            _buildAnimatedSection(
                              delay: 0.5,
                              child: BlocDocumentationCard(
                                features: state.features,
                              ),
                            ),

                            const SizedBox(height: 32),
                          ]),
                        ),
                      ),
                    ],
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedAppBar(HomeState state) {
    return SliverAppBar(
      expandedHeight: 100,
      floating: false,
      pinned: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        title: AnimatedBuilder(
          animation: _headerAnimationController,
          builder: (context, child) {
            final animation = CurvedAnimation(
              parent: _headerAnimationController,
              curve: Curves.easeOutCubic,
            );

            return FadeTransition(
              opacity: animation,
              child: SlideTransition(
                position: Tween<Offset>(
                  begin: const Offset(-0.2, 0),
                  end: Offset.zero,
                ).animate(animation),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF8B5CF6), Color(0xFF6366F1)],
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.task_alt,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      'BLoC Tasks',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        centerTitle: false,
        titlePadding: const EdgeInsets.only(left: 20, bottom: 16),
      ),
    );
  }

  Widget _buildLoadingOverlay() {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 1000),
              builder: (context, value, child) {
                return Transform.scale(
                  scale: 0.8 + (value * 0.2),
                  child: Opacity(
                    opacity: value,
                    child: child,
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF8B5CF6), Color(0xFF6366F1)],
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF8B5CF6).withValues(alpha: 0.5),
                      blurRadius: 30,
                      spreadRadius: 10,
                    ),
                  ],
                ),
                child: const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  strokeWidth: 3,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const AppText(
              'Loading your tasks...',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedSection({
    required double delay,
    required Widget child,
  }) {
    return AnimatedBuilder(
      animation: _contentAnimationController,
      builder: (context, child) {
        final animation = CurvedAnimation(
          parent: _contentAnimationController,
          curve: Interval(
            delay.clamp(0.0, 1.0),
            (delay + 0.4).clamp(0.0, 1.0),
            curve: Curves.easeOutCubic,
          ),
        );

        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 0.1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  Widget _buildSectionHeader(String title, IconData icon, HomeState state) {
    final filteredTasks = state.selectedCategory == 'All'
        ? state.tasks
        : state.tasks.where((t) => t.category == state.selectedCategory).toList();

    return Row(
      children: [
        Icon(icon, color: const Color(0xFF8B5CF6), size: 24),
        const SizedBox(width: 12),
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF8B5CF6).withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF8B5CF6).withValues(alpha: 0.3),
            ),
          ),
          child: Text(
            '${filteredTasks.length} ${filteredTasks.length == 1 ? 'task' : 'tasks'}',
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Color(0xFF8B5CF6),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTasksList(HomeState state) {
    final filteredTasks = state.selectedCategory == 'All'
        ? state.tasks
        : state.tasks.where((t) => t.category == state.selectedCategory).toList();

    if (filteredTasks.isEmpty) {
      return _buildEmptyState();
    }

    return Column(
      children: filteredTasks.asMap().entries.map((entry) {
        return TaskCard(
          key: ValueKey(entry.value.id),
          task: entry.value,
          index: entry.key,
        );
      }).toList(),
    );
  }

  Widget _buildEmptyState() {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOutCubic,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.scale(
            scale: 0.8 + (value * 0.2),
            child: child,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.05),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.1),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF8B5CF6).withValues(alpha: 0.2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.task_outlined,
                size: 48,
                color: const Color(0xFF8B5CF6).withValues(alpha: 0.6),
              ),
            ),
            const SizedBox(height: 16),
            AppText(
              'No tasks yet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(height: 8),
            AppText(
              'Create your first task to get started!',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
