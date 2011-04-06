//
//  SampleViewController.m
//  Sample
//
//  Created by Mike on 11-04-05.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SampleViewController.h"
#import "MAConfirmButton.h"

@implementation SampleViewController

- (void)dealloc{
    [super dealloc];
}

- (void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

- (void)awakeFromNib{
	
	MAConfirmButton *defaultButton = [MAConfirmButton buttonWithTitle:@"$9.99" confirm:@"BUY NOW"];
	[defaultButton addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];
	[defaultButton setAnchor:CGPointMake(270, 50)];
	[self.view addSubview:defaultButton];
	
	MAConfirmButton *tintedButton = [MAConfirmButton buttonWithTitle:@"Tinted" confirm:@"Confirm String"];
	[tintedButton addTarget:self action:@selector(confirmAction:) forControlEvents:UIControlEventTouchUpInside];	
	[tintedButton setTintColor:[UIColor colorWithRed:0.176 green:0.569 blue:0.820 alpha:1]];
	[tintedButton setAnchor:CGPointMake(270, 100)];	
	[self.view addSubview:tintedButton];	
	
	MAConfirmButton *disabledButton = [MAConfirmButton buttonWithDisabledTitle:@"DISABLED"];
	[disabledButton setAnchor:CGPointMake(270, 150)];		
	[self.view addSubview:disabledButton];
	
}

- (void)confirmAction:(id)sender{
	[sender disableWithTitle:@"CONFIRMED"];
}

@end
