//
//  IOBAppDelegate.m
//  iOS Bootstrap
//
//  Created by Kyle LeNeau on 9/12/12.
//  Copyright (c) 2012 Kyle LeNeau. All rights reserved.
//

#import "IOBAppDelegate.h"

@implementation IOBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    CGRect windowBounds = [[UIScreen mainScreen] bounds];
    [self setWindow:[[UIWindow alloc] initWithFrame:windowBounds]];
    
    UIViewController *windowRoot = nil;
    IOBMasterViewController *masterRoot = [[IOBMasterViewController alloc] initWithStyle:UITableViewStyleGrouped];
    UINavigationController *master = [[UINavigationController alloc] initWithRootViewController:masterRoot];
    [self setMasterViewController:master];
    
    if (ISIPAD) {
        IOBDetailsViewController *detail = [[IOBDetailsViewController alloc] init];
        [detail setItem:@"Please Select and Item"];
        [self setDetailViewController:detail];
        
        UISplitViewController *split = [[UISplitViewController alloc] init];
        [split setDelegate:self];
        [split setViewControllers:@[master, detail]];
        windowRoot = split;

        [self setSplitViewController:split];
    } else {
        windowRoot = master;
    }
    
    [[self window] setRootViewController:windowRoot];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

#pragma mark - UISplitViewController Delegate Methods

// This will leave the "master" view controller always visible, even in portrait
- (BOOL)splitViewController:(UISplitViewController *)svc shouldHideViewController:(UIViewController *)vc inOrientation:(UIInterfaceOrientation)orientation
{
    return NO;
}

@end
