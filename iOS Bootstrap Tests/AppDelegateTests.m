//
//  AppDelegateTests.m
//  iOS Bootstrap Tests
//
//  Created by Kyle LeNeau on 9/12/12.
//  Copyright (c) 2012 Kyle LeNeau. All rights reserved.
//

#import "AppDelegateTests.h"
#import "IOBAppDelegate.h"

@implementation AppDelegateTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testAppDelegate
{
    id appDelegate = [[UIApplication sharedApplication] delegate];
    STAssertTrue([appDelegate isKindOfClass:[IOBAppDelegate class]], @"Cannot find the application delegate.");
}

@end
