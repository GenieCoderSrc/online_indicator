# online_indicator

A simple Flutter widget to display an online status indicator, ideal for user profile images, avatars, or contact lists.

## Features

- Display a small online indicator over any widget (typically an avatar).
- Customizable size, colors, border width, and icon.
- Lightweight and easy to integrate.

## Getting Started

Add `online_indicator` to your `pubspec.yaml`:

```yaml
dependencies:
  online_indicator: latest_version
```

Then import it:

```dart
import 'package:online_indicator/online_indicator.dart';
```

## Usage

Wrap the `OnlineIndicator` inside a `Stack` positioned over the widget you want to show the indicator on.

```dart
Stack(
  children: [
    CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage('https://example.com/avatar.jpg'),
    ),
    const OnlineIndicator(
      isOnline: true,
      radius: 12.0,
      borderWide: 2.0,
      bgColor: Colors.green,
      borderColor: Colors.white,
    ),
  ],
)
```

### Parameters

| Parameter   | Type        | Description |
|-------------|-------------|-------------|
| `isOnline`  | `bool`       | Whether the user is online (show the indicator) or not. |
| `iconData`  | `IconData?`  | Optional: Custom icon inside the indicator. |
| `bgColor`   | `Color?`     | Background color of the indicator. Defaults to the theme's primary color. |
| `iconColor` | `Color?`     | Color of the icon if provided. |
| `radius`    | `double`     | Size of the online indicator. |
| `borderWide`| `double`     | Width of the border around the indicator. |
| `borderColor`| `Color?`    | Color of the border. Defaults to transparent. |

## Example

![Example Preview](https://dummyimage.com/300x100/cccccc/000000&text=Online+Indicator)

## License

[MIT License](LICENSE)

---

Maintained with ❤️ by your package authors.
