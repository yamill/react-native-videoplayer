## react-native-videoplayer
A native ios video player component

### Add it to your project

1. Run `npm install react-native-videoplayer --save`
2. Open your project in XCode, right click on your project and click `Add Files to "Your Project Name"`
3. Add `RCTVideoPlayer` from your `node_modules/react-native-videoplayer` folder.
4. Whenever you want to use it within React Native code now you can:
`var VideoPlayer = require('react-native-videoplayer');`


## Usage

```javascript
<View style={{flex: 1, justifyContent: 'center', alignItems: 'center'}}>
  <VideoPlayer width={320} height={240} url="http://somevideourl.mp4"/>
</View>
```

## Attributes

`url`

Must be a url to a video resource.
