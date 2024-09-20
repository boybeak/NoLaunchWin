# NoLaunchWin
If you want to make a pure menubar app, you do not need the launch window. But under the swiftUI framework, you must provide a WindowGroup at the app's entry like this.
```swift
@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```
You can just replace `WindowGroup` and `ContentView` with `Settings` to hide the launch window before macOS 15.
```swift
@main
struct MyApp: App {
    var body: some Scene {
        Settings {}
    }
}
``` 
But start with macOS 15, this doesn't work. You can use this library to disable launch window.

## Installation
Open your project in XCode, **File** -> **Add Package Dependencies**, copy and paste `https://github.com/boybeak/NoLaunchWin.git` into the search input, then search library info and **Add Package**.

## Usage
It's very easy to use.
```swift
import NoLaunchWin

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NoLaunchWinView()
        }
    }
}
```

## More
If you're making a pure menubar app. You can take a look at the [**Tray**](https://github.com/boybeak/Tray) library. It helps you to make a menubar app easily.
