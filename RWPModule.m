#import "RWPModule.h"

@interface AXSettings
//-(BOOL) reduceWhitePointEnabled;
+(id) sharedInstance;
-(void) setReduceWhitePointEnabled:(BOOL)arg1;
@end

@implementation RWPModule



//Return the icon of your module here
- (UIImage *)iconGlyph
{
	return [UIImage imageNamed:@"ReduceWhiteOFF" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

- (UIImage *)selectedIconGlyph
{
	return [UIImage imageNamed:@"ReduceWhiteON" inBundle:[NSBundle bundleForClass:[self class]] compatibleWithTraitCollection:nil];
}

//Return the color selection color of your module here
- (UIColor *)selectedColor
{
	return [UIColor blueColor];
}

- (BOOL)isSelected
{
  return _selected;
}

- (void)setSelected:(BOOL)selected
{
	_selected = selected;

  [super refreshState];

  if(_selected)
  {
    [[AXSettings sharedInstance] setReduceWhitePointEnabled:TRUE];
  }
  else
  {
    [[AXSettings sharedInstance] setReduceWhitePointEnabled:FALSE];
  }
}

@end
