## react-native-videoplayer
A native ios video player component

### Add it to your project

1. Run `npm install react-native-videoplayer --save`
2. Open your project in XCode, right click on your project and click `Add Files to "Your Project Name"`
3. Add `RCTVideoPlayer` from your `node_modules/react-native-videoplayer` folder.
4. Whenever you want to use it within React Native code now you can:
`var VideoPlayer = require('react-native-videoplayer');`

<img src="screenshot.png" width="250">

## Usage

```javascript
<View style={styles.container}>
  <VideoPlayer style={styles.video} url="http://somevideourl.mp4"/>
</View>

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center'
  },
  video: {
    position: 'absolute',
    top: 0, left: 0, right: 0, bottom: 0,
    alignItems: 'center',
    justifyContent: 'center',
    backgroundColor: 'transparent'
  }
});
```

## Attributes

`url`

Must be a url to a video resource.
