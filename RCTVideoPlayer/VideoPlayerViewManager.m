#import "VideoPlayerViewManager.h"
#import "VideoPlayerView.h"

@implementation VideoPlayerViewManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
  return [[VideoPlayerView alloc] init];
}

RCT_EXPORT_VIEW_PROPERTY(url, NSString);

@end