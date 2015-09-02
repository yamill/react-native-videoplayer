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

@end