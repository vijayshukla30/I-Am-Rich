# Topics
* MaterialApp
* Scaffold
* Layout
* Container
* EdgeInsets
* Column
* SafeArea
* Row
* CircleAvatar
* AssetImage
* Text
* TextStyle
* Icon
* ListTile
* Divider

## MaterialApp
An application that uses Material Design.
```
MaterialApp(
  home: Scaffold(
      body: Container()
    )
  )
```
## Scaffold
It provides standard app elements like an AppBar and a Drawer
## Layout
Arrange other widget columns, rows, and many other.
* Single-Child Layout (ex: Container, Padding, Center)
* Multi-Child Layout (ex: Column, Row, Stack)

## Container
* A widget that combines common painting, positioning and sizing widget.
* Container with no children try to be as big as possible unless constraints.
* Container with children size themselves to their children.
* ex:
```
void main(){
  runApp(MyApp());
}
class MyApp extends StatlessWidget{
  Widget build (BuildingContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade900,
        body: Container()
        )
      )
  }
}
```
* Important Container args:
```
Container(
  height: double,
  width: double,
  color: Colors.teal,
  child: Text('Hello', TextStyle(.,.)),
  margin: EdgeInsets (used for outside of the box as in html)
  padding: EdgeInsets (used inside of the box as in html)
  )
```
## EdgeInsets
Types of
* all(double): from all four side.
* symmetric(vertical double, horizontal double) | vertical-> Top, Bottom and horizontal-> Left, Right.
* fromLTRB(left double, top double, right double, bottom double).
* only(key: double) | key-> left, right, top, bottom

## Column
* Column will automatically trying take up vertical space, but limited on their children. To change this behaviour use *mainAxisSize*
* By default column align from top to bottom. To change this use *verticalDirection*
 * VerticalDirection.up
 * VerticalDirection.down
* By default align to start. To change this use *mainAxisAlignment*
  * MainAxisAlignment.end
  * MainAxisAlignment.center
  * MainAxisalignment.spaceEvenly
  * MainAxisAlignment.spaceBetween
* You can change crossAxisAlignment
  * CrossAxisAlignment.start
  * CrossAxisAlignment.end
  * CrossAxisAlignment.stretch
* To add space between columns and rows we can use *SizedBox()*

```
Column(
  children: <Widget>[],
  mainAxisSize: MainAxisSize,
  verticalDirection: VerticalDirection,
  mainAxisAlignment: MainAxisAlignment,
  crossAxisAlignment: CrossAxisAlignment
  )
```

## SafeArea
```
SafeArea(
  height: double,
  width: double
  )
```
## Row
This is similar to Column only difference is it for horizontal and column is for vertical.

## CircleAvatar
This is for circular avatar
```
CircleAvatar(
  radius: double
  backgroundImage: AssetImage()
  )
```
## AssetImage
This is used load image from asset folder
```
AssetImage('image_path_in_asset_folder')
```
## Text
This is used to show text.
```
Text(
  'textmessage',
  TextStyle()
  )
```
## TextStyle
This is used to change text style like fontFamily, fontWeight, fontSize
```
TextStyle(
  fontWeight: FontWeight.bold
  fontSize: double,
  fontFamily: 'fontFamilyName as mentioned in pubspec.yml'
  )
```
## Icon
To show Icons
```
Icon(
  Icons.icon,
  size: double,
  color: Colors.white
  )
```

## ListTile
A single fixed-height row that typically contains some text as well as leading or trailing icon.
```
ListTile(
  leading: Icon(),
  title: 'string',
  trailing: Icon()
  )
```
## Divider
A thin horizontal line.
```
Divider(
  color: Colors.black[200],
  height: double
  )
```
