//
//  MAConfirmButton.h
//  CVM
//
//  Created by Mike on 11-03-28.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
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

+ (MAConfirmButton *)buttonWithTitle:(NSString *)t confirm:(NSString *)c;
+ (MAConfirmButton *)buttonWithDisabledTitle:(NSString *)t;
- (id)initWithTitle:(NSString *)t confirm:(NSString *)c;
- (id)initWithDisabledTitle:(NSString *)t;
- (void)disableWithTitle:(NSString *)t;
- (void)setAnchor:(CGPoint)a;
- (void)setTintColor:(UIColor *)color;

@end
