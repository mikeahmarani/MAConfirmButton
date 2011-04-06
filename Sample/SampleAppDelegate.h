//
//  SampleAppDelegate.h
//
//  Created by Mike on 11-04-05.
//  Copyright 2011 Mike Ahmarani. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SampleViewController;

@interface SampleAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet SampleViewController *viewController;

@end
