# 🧭 Navigate with Bottom-NavBar

A structured Flutter application demonstrating efficient multi-screen navigation using the `BottomNavigationBar` widget. This project focuses on **State Management** to switch screens instantly without rebuilding the entire app structure.

### 🛠️ Tech Stack
* **Framework:** Flutter (Material 3)
* **Language:** Dart
* **Widgets:** `BottomNavigationBar`, `Scaffold`, `StatefulWidget`

## 📂 File Structure
This project follows a professional directory structure:
```text
lib/
├── pages/
│   ├── first_page.dart   (Main Controller & BottomBar)
│   ├── home_page.dart    (Screen 1)
│   ├── profile_page.dart (Screen 2)
│   └── setting_page.dart (Screen 3)
└── main.dart             (Entry Point)

## 🌟 Features
* **Instant Navigation:** Switches between Home, Profile, and Settings screens with zero lag using `setState`.
* **Clean Architecture:** modular code structure where every screen is separated into its own `.dart` file (`home_page.dart`, `profile_page.dart`, etc.).
* **Active State Tracking:** Visually highlights the selected tab with custom icons and opacity changes.
* **Material 3 Design:** Implemented with a Deep Purple color scheme for a modern look.

## 🧠 The Logic: How it Works
Instead of using `Navigator.push` (which stacks screens), this app uses a **List-based approach** to render content dynamically within the same Scaffold.

### Core Logic Snippet:
```dart
// 1. Define the Pages in a List
final List _pages = [
  HomePage(),
  ProfilePage(),
  SettingPage(),
];

// 2. Track the Current Index
int _selectIndex = 0;

// 3. Update UI on Tap
void _navigateBottomBar(int index) {
  setState(() {
    _selectIndex = index;
  });
}

## 👨‍💻 Author
Aspiring Flutter Developer turning logic into pixel-perfect apps.

* 🔗 **LinkedIn:** [https://www.linkedin.com/in/mayur-kariya] 
* 🔗 **GitHub:** [https://github.com/mayur6164]

