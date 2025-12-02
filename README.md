# 📱 Flutter BLoC Task Manager

A beautiful Flutter template showcasing the **BLoC (Business Logic Component)** pattern with a fully-featured task management application.

## ✨ Features

### 🎯 Task Management
- ✅ Create, complete, and delete tasks
- 🏷️ Categorize tasks (Learning, Development, Design, Personal, Work)
- 🔍 Filter tasks by category
- 📊 Real-time statistics and progress tracking

### 🎨 Rich Animations
- Smooth page transitions
- Animated task cards with staggered entrance
- Interactive buttons with scale and rotation effects
- Progress bars with animated counters
- Expandable/collapsible components
- Swipe-to-delete with animation

### 📚 Built-in Documentation
- Interactive BLoC pattern documentation
- Tabbed interface explaining concepts, benefits, and flow
- Visual flow diagrams
- Best practices and key features

### 🏗️ Architecture Highlights
- **Clean Architecture**: Separation of concerns with feature-based organization
- **BLoC Pattern**: Unidirectional data flow with events and states
- **Freezed**: Immutable state management
- **Reactive UI**: Stream-based state updates
- **Modular Widgets**: Each component in its own file for maintainability

## 📁 Project Structure

```
lib/
├── features/
│   └── home/
│       ├── business_logic/
│       │   ├── home_bloc.dart       # Main BLoC logic
│       │   ├── home_event.dart      # Events (Add, Delete, Toggle, etc.)
│       │   └── home_state.dart      # State & Task model
│       └── presentation/
│           ├── screens/
│           │   └── home_screen.dart # Main screen
│           └── widgets/
│               ├── task_card.dart              # Individual task item
│               ├── task_input_card.dart        # Add task form
│               ├── statistics_card.dart        # Progress & stats
│               ├── category_filter_chips.dart  # Category filters
│               └── bloc_documentation_card.dart # BLoC docs
└── core/
    ├── config/          # App theme, routes
    ├── models/          # Status model
    └── widgets/         # Reusable widgets
```

## 🎨 Design Features

- **Dark Gradient Theme**: Modern dark UI with vibrant purple/blue gradients
- **Glassmorphism**: Translucent cards with backdrop blur effects
- **Smooth Animations**: Every interaction is animated for premium feel
- **Responsive Layout**: Adapts to different screen sizes
- **Custom Color System**: Category-based color coding

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.0+)
- Dart SDK (3.0+)

### Installation

1. Clone the repository
```bash
git clone <your-repo-url>
cd flutter_bloc
```

2. Install dependencies
```bash
flutter pub get
```

3. Generate freezed files
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

4. Run the app
```bash
flutter run
```

## 🧩 BLoC Pattern Overview

This project demonstrates the BLoC pattern with:

### Events (Input)
- `started` - Initialize app and load data
- `addTask` - Create a new task
- `toggleTaskCompletion` - Mark task as complete/incomplete
- `deleteTask` - Remove a task
- `changeCategory` - Filter tasks by category
- `refreshData` - Reload data

### States (Output)
- `tasks` - List of all tasks
- `selectedCategory` - Current filter
- `features` - BLoC features for documentation
- `statusLoadData` - Loading state for initial data
- `statusRefreshData` - Loading state for refresh
- `statusAddTask` - Loading state for adding tasks

### BLoC Flow
```
UI Event → BLoC → Business Logic → Emit New State → UI Rebuild
```

## 🎓 Learning Resources

The app includes an **interactive documentation section** with:
- Overview of BLoC pattern
- Key benefits and features
- Step-by-step flow diagram
- Real-world implementation examples

## 🛠️ Technologies Used

- **Flutter** - UI framework
- **flutter_bloc** - State management
- **freezed** - Code generation for immutable classes
- **freezed_annotation** - Annotations for freezed
- **dio** - HTTP client
- Custom animations and transitions

## 📱 Screenshots

The app showcases:
- Animated splash screen loading
- Task input with expandable form
- Category-based filtering
- Statistics dashboard
- Interactive documentation
- Smooth task management

## 🤝 Contributing

This is a template project designed for learning and as a starting point for Flutter applications using BLoC pattern.

Feel free to:
- Use it as a base for your projects
- Learn from the code structure
- Extend it with more features
- Customize the design

## 📄 License

This project is open source and available for educational purposes.

## 👨‍💻 Author

Created as a comprehensive Flutter BLoC template with focus on:
- Clean architecture
- Best practices
- Beautiful UI/UX
- Comprehensive documentation

---

**Happy Coding! 🚀**
