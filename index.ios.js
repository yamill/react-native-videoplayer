// JavaScript

var React = require('react-native');
var { requireNativeComponent } = React;

class VideoPlayer extends React.Component {
  render() {
    return <VideoPlayerView {...this.props} />;
  }
}
VideoPlayer.propTypes = {
  url: React.PropTypes.string
};

var VideoPlayerView = requireNativeComponent('VideoPlayerView', VideoPlayer);
module.exports = VideoPlayer;
