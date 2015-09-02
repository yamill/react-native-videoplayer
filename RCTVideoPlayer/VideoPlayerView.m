#import "VideoPlayerView.h"
#import "RCTRootView.h"

@interface VideoPlayerView ()

@property (nonatomic, retain) AVPlayerViewController *avPlayerViewcontroller;
@property (nonatomic, retain) UIView *view;

@end

@implementation VideoPlayerView
{
  UIView *_reactView;
}


- (instancetype)init
{
  if ((self = [super init])) {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(deviceOrientationChange:) name:@"UIDeviceOrientationDidChangeNotification" object:nil];
  }
  return self;
  
}

- (void)setUrl:(NSString *)url {
  AVPlayerViewController *playerViewController = [[AVPlayerViewController alloc] init];
  
  playerViewController.player = [AVPlayer playerWithURL:[NSURL URLWithString: url]];
  
  self.avPlayerViewcontroller = playerViewController;
  [self.avPlayerViewcontroller setShowsPlaybackControls:YES];
  
  self.avPlayerViewcontroller.videoGravity = AVLayerVideoGravityResizeAspect;
  
  [self addSubview:playerViewController.view];
  self.autoresizesSubviews = TRUE;
  
  [self.avPlayerViewcontroller.player play];
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  self.avPlayerViewcontroller.view.frame = self.bounds;
}

- (void)viewDidDisappear:(BOOL)animated {
  NSLog(@"test");
}


- (void)deviceOrientationChange:(NSNotification *)notification
{
  
  UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
  
  switch (orientation) {
    case UIDeviceOrientationPortrait:
    case UIDeviceOrientationPortraitUpsideDown:
      self.avPlayerViewcontroller.videoGravity = AVLayerVideoGravityResizeAspect;
      break;
    case UIDeviceOrientationLandscapeLeft:
    case UIDeviceOrientationLandscapeRight:
      
      self.avPlayerViewcontroller.videoGravity = AVLayerVideoGravityResizeAspectFill;
      break;
    default:
      self.avPlayerViewcontroller.videoGravity = AVLayerVideoGravityResizeAspect;
      break;
  }
}


@end