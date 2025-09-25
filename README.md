Anime App
A Flutter-based mobile application that brings anime content to life with an intuitive and visually appealing interface.

📱 About pubspec.yaml:1-2
This anime application provides users with a comprehensive platform to explore, discover, and enjoy anime content. The app features a modern design with smooth navigation and rich visual elements.

✨ Features
🏠 Home Screen
Anime Categories: Browse through different anime categories including All, Popular, Trending, New Releases, and Top Rated anime_tabs.dart:12-18
Character Gallery: Explore top anime characters home_content.dart:22-23
Interactive Tabs: Dynamic tab selection for different anime content anime_tabs.dart:31-44
🧭 Navigation
The app includes a bottom navigation bar with five main sections:

Home
Library
Search
Explore
Settings main_layout.dart:24-30
📄 Details & Subscription
Anime Details: Dedicated screen for detailed anime information app_router.dart:27-33
Subscription Plans: Premium subscription options for enhanced features app_router.dart:34-40
🎨 Design & UI
The application features a modern purple-themed design with:

Primary Color: Purple (#5436F8) app_colors.dart:17
Background: Light blue gradient (#D3E3FF) app_colors.dart:15
Custom Fonts: Integration with Google Fonts for enhanced typography pubspec.yaml:38
Icons: Beautiful icons from Iconsax and Lucide Icons packages pubspec.yaml:39-40
🏗️ Architecture
The project follows a clean, feature-based architecture:

lib/  
├── core/  
│   ├── routes/          # App navigation and routing  
│   └── widgets/         # Shared UI components  
└── features/  
    ├── home/            # Home screen functionality  
    ├── details/         # Anime details feature  
    └── subscription/    # Subscription management  
core:1 features:1

🛠️ Technology Stack
Framework: Flutter pubspec.yaml:31-32
Navigation: GoRouter for declarative routing pubspec.yaml:37
UI Components: Custom widgets with Material Design
State Management: StatefulWidget for local state management
Assets: Organized image assets for anime content, characters, and UI elements pubspec.yaml:67-71
📋 Requirements
Flutter SDK: Version 3.7.2 or higher pubspec.yaml:21-22
Dart: Compatible with Flutter SDK version
Platforms: Android, iOS, Web, Windows, macOS, Linux
🚀 Getting Started
Prerequisites
Make sure you have Flutter installed on your system. If not, follow the official Flutter installation guide.

Installation
Clone the repository

git clone https://github.com/NohaAhmedk/anime_app.git  
cd anime_app
Install dependencies

flutter pub get
Run the app

flutter run
📱 Platform Support
This app supports multiple platforms:

📱 Mobile: Android & iOS
💻 Desktop: Windows, macOS, Linux
🌐 Web: Progressive Web App
🎯 App Navigation
The app uses GoRouter for navigation with the following routes:

/ - Main layout with bottom navigation app_router.dart:12-18
/home - Home screen app_router.dart:20-26
/detailsscreen - Anime details app_router.dart:27-33
/subscriptionscreen - Subscription management app_router.dart:34-40
📦 Dependencies
Key packages used in this project:

go_router: Navigation and routing
google_fonts: Custom typography
iconsax_flutter: Beautiful icon set
lucide_icons_flutter: Additional icon library
cupertino_icons: iOS-style icons pubspec.yaml:36-40
🎨 Assets
The app includes organized assets for:

Anime images
Character images
Detail page images
Subscription-related images pubspec.yaml:67-71
📄 License
This project is for educational and demonstration purposes.

🤝 Contributing
Contributions, issues, and feature requests are welcome! Feel free to check the issues page.
