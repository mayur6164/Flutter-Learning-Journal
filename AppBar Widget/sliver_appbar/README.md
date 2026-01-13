# 🎢 Dynamic SliverAppBar with Scroll Logic

A highly interactive UI demonstration using Flutter's **Sliver Architecture**. Unlike standard headers, this project implements a `SliverAppBar.large` that reacts dynamically to the user's scroll position, creating a premium collapsing header effect (similar to modern apps like WhatsApp or Telegram).

## 🛠️ Tech Stack
* **Framework:** Flutter (Material 3 Enabled)
* **Language:** Dart
* **Widgets:** `CustomScrollView`, `SliverAppBar.large`, `SliverToBoxAdapter`, `LayoutBuilder`, `ClipRRect`

## 🌟 Key Features
* **Material 3 Design:** Utilizes `SliverAppBar.large` for a bold, modern aesthetic.
* **Smart Typography:** The title text automatically transitions from **Normal** to **Bold** as the app bar collapses into the top bar.
* **Smooth Scrolling:** Implemented using `CustomScrollView` and `SliverToBoxAdapter` for native performance.
* **Cohesive Theme:** A Deep Purple color palette (`deepPurple[200]` to `[500]`) ensuring high contrast and visual hierarchy.

## 🧠 The Logic: Why this is Special?
Most beginners use a static AppBar. In this project, I used a `LayoutBuilder` to detect real-time height constraints.

### How the "Magic" Works:
1.  **Tracking Height:** The `LayoutBuilder` inside `flexibleSpace` calculates the current height of the AppBar as the user scrolls.
2.  **Threshold Check:** I implemented a logic check `top < 110` to detect when the AppBar has collapsed.
3.  **Dynamic Styling:** The UI reacts instantly to this state change:

## 👨‍💻 Author
Aspiring Flutter Developer focused on Logic-First UI Design.

* 🔗 **LinkedIn:** [https://www.linkedin.com/in/mayur-kariya]
* 🔗 **GitHub:** [https://github.com/mayur6164]
* 
```dart
// Real-time height calculation
var top = constraints.biggest.height;
bool isCollapsed = top < 110;

// Text gets BOLD when collapsed, lighter when expanded
fontWeight: isCollapsed ? FontWeight.w500 : FontWeight.bold,
