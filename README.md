# scroll_glow_color

#### Change color of glow effect of scrollable widgets or remove the glow effect

![photo4972372527678597406](https://user-images.githubusercontent.com/3827308/79910597-6270b080-83f5-11ea-941a-e865cbf26248.jpg)


```dart
ScrollGlowColor( // Use ScrollGlowColor as parent of "Scrollables" widgets
  color: Color(0xFFB900A5), // use a custom color instead default accentColor theme color
  hideGlow: false, // default is false
  child: ListView.builder(
    itemCount: 50,
    itemBuilder: (_, i) {
      return ListTile(
        title: Text(' Tile ${i + 1}'),
      );
    },
  ),
)
```
