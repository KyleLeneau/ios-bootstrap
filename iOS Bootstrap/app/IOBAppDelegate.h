//
//  IOBAppDelegate.h
//  iOS Bootstrap
//
//  Created by Kyle LeNeau on 9/12/12.
//  Copyright (c) 2012 Kyle LeNeau. All rights reserved.
//

#import "IOBMasterViewController.h"
#import "IOBDetailsViewController.h"

@interface IOBAppDelegate : UIResponder <UIApplicationDelegate, UISplitViewControllerDelegate>

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) UISplitViewController *splitViewController;
@property (nonatomic, strong) UINavigationController *masterViewController;
@property (nonatomic, strong) IOBDetailsViewController *detailViewController;

@end
