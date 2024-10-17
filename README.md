
# Codeness Lab Task - Flutter App 🚀

This Flutter application is designed to manage tasks with functionality to filter them by status (All, Done, Not Done). It follows clean architecture principles and leverages dependency injection for maintainability and modularity.

## Features 🌟

- **Task Management**: Allows users to add, filter, and delete tasks.
- **Clean Architecture**: The project is structured with clear separation of concerns for easier maintenance.
- **Dependency Injection (DI)**: Implemented for modularity and easier testing.
- **State Management**: Uses Cubit for efficient state handling across the app.

## Project Structure 📂

```bash
lib
│
├── codeness_lab_task.dart
├── core
│   ├── constants
│   │   ├── app_colors.dart
│   │   ├── app_constants.dart
│   │   └── app_style.dart
│   ├── di
│   │   └── dependency_injection.dart
│   ├── helpers
│   │   └── spacing.dart
│   └── routing
│       ├── app_router.dart
│       └── routes.dart
│
├── features
│   └── task
│       ├── data
│       │   ├── models
│       │   │   ├── task_model.dart
│       │   │   └── task_model.g.dart
│       ├── logic
│       │   ├── task_cubit.dart
│       │   └── task_state.dart
│       └── ui
│           ├── task_screen.dart
│           └── widgets
│               ├── custom_button.dart
│               ├── custom_text_form_field.dart
│               ├── tabbar_row.dart
│               ├── tab_container.dart
│               ├── tasks_bloc_builder.dart
│               ├── task_row.dart
│               └── task_screen_body.dart
│
└── main.dart
```

### Local Storage (Hive) 🔗

The app uses Hive as a local storage system to persist tasks, ensuring that users can manage their tasks even offline. Tasks are saved and retrieved efficiently using this lightweight database.

### Getting Started 🚀

1. Clone the repository:

```bash
   git clone https://github.com/jemyJR/codeness_lab_task
```

2. Install dependencies:

```bash
   flutter pub get
```

3. Run the app:

```bash
   flutter run
```

### Dependencies 📦

The app uses the following packages:
- **flutter_screenutil**: For responsive UI design.
- **hive**: For local storage of tasks.
- **flutter_bloc**: For state management using Cubit, ensuring efficient state handling.
- **get_it**: For managing dependency injection and modularity.

### Screenshots 📸

Here are some screenshots of the app in action:

<img src="https://github.com/user-attachments/assets/c34697ea-59b4-4ec5-b08b-23d4efe5bdc3" width="200" />
<img src="https://github.com/user-attachments/assets/edf76e76-478d-4c96-9105-3d65c7c20d89" width="200" />
<img src="https://github.com/user-attachments/assets/2323048b-7987-4c86-863f-7cafb532c41f" width="200" />
<img src="https://github.com/user-attachments/assets/478f5f23-7cc9-404d-9d52-0dae35baec50" width="200" />






