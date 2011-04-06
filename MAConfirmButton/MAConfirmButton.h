//
//  MAConfirmButton.h
//
//  Created by Mike on 11-03-28.
//  Copyright 2011 Mike Ahmarani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class MAConfirmButtonOverlay;

@interface MAConfirmButton : UIButton {
	BOOL selected;
	BOOL confirmed;
	CALayer *colorLayer;
	CALayer *darkenLayer;
	UIButton *cancelOverlay;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *confirm;
@property (nonatomic, retain) NSString *disabled;
@property (nonatomic, retain) UIColor *tint;

+ (MAConfirmButton *)buttonWithTitle:(NSString *)titleString confirm:(NSString *)confirmString;
+ (MAConfirmButton *)buttonWithDisabledTitle:(NSString *)disabledString;
- (id)initWithTitle:(NSString *)titleString confirm:(NSString *)confirmString;
- (id)initWithDisabledTitle:(NSString *)disabledString;
- (void)disableWithTitle:(NSString *)disabledString;
- (void)setAnchor:(CGPoint)anchor;
- (void)setTintColor:(UIColor *)color;

@end
