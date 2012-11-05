//
//  IOBCommon.h
//  iOS Bootstrap
//
//  Created by Kyle LeNeau on 8/2/12.
//
//


#define APP		((IOBApplication *) [UIApplication sharedApplication])
#define APPDEL	((IOBAppDelegate *) APP.delegate)
#define ISIPAD  UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad

#define TESTING 1
#define TEST_FLIGHT_TOKEN @"TEST_FLIGHT_TOKEN_VALUE"


// Keep at the bottom
#import "IOBAppDelegate.h"
#import "IOBApplication.h"