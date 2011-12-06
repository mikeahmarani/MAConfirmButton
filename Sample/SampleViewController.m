//
//  SampleViewController.m
//
//  Created by Mike on 11-04-05.
//  Copyright 2011 Mike Ahmarani. All rights reserved.
//

#import "SampleViewController.h"
#import "MAConfirmButton.h"

@interface SampleViewController ()

- (void)setupView;
- (void)resetUI;
- (void)confirmAction:(id)sender;

@end

@implementation SampleViewController

- (void)dealloc{
  [super dealloc];
}

- (void)didReceiveMemoryWarning{
  [super didReceiveMemoryWarning];
}

- (void)awakeFromNib{
  
  [self setupView];
  
}

- (void)setupView{
  
  for(UIView *view in self.view.subviews){
    [view removeFromSuperview];
  }
  
  MAConfirmButton *defaultButton = [MAConfirmButton buttonWithTitle:@"$9.99" confirm:@"BUY NOW"];
  [defaultButton addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];
  [defaultButton setAnchor:CGPointMake(200, 50)];
  [self.view addSubview:defaultButton];
  
  MAConfirmButton *tintedButton = [MAConfirmButton buttonWithTitle:@"Tinted" confirm:@"Confirm String"];
  [tintedButton addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];	
  [tintedButton setTintColor:[UIColor colorWithRed:0.176 green:0.569 blue:0.820 alpha:1]];
  [tintedButton setAnchor:CGPointMake(200, 100)];	
  [self.view addSubview:tintedButton];	
  
  MAConfirmButton *disabledButton = [MAConfirmButton buttonWithDisabledTitle:@"DISABLED"];
  [disabledButton setAnchor:CGPointMake(200, 150)];		
  [self.view addSubview:disabledButton];
  
  MAConfirmButton *toggleRightButton = [MAConfirmButton buttonWithTitle:@"$0.99" confirm:@"Toggled to Right"];
  toggleRightButton.toggleAnimation = MAConfirmButtonToggleAnimationRight;
  [toggleRightButton addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];
  [toggleRightButton setAnchor:CGPointMake(200, 200)];
  [self.view addSubview:toggleRightButton];
  
  resetButton = [MAConfirmButton buttonWithTitle:@"Reset" confirm:@"Are you sure?"];
  [resetButton addTarget:self action:@selector(resetUI) forControlEvents:UIControlEventTouchUpInside];
  [resetButton setTintColor:[UIColor colorWithRed:0.694 green:0.184 blue:0.196 alpha:1]];
  [resetButton setAnchor:CGPointMake(200, 250)];
  [self.view addSubview:resetButton];
  
}

- (void)resetUI{
  [self setupView];
}

- (void)confirmAction:(id)sender{
  [sender disableWithTitle:@"CONFIRMED"];
}

@end
