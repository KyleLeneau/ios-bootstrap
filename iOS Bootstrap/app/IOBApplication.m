//
//  ADLApplication.m
//  iOS Bootstrap
//
//  Created by Kyle LeNeau on 8/2/12.
//
//

#import "IOBApplication.h"

@implementation IOBApplication

+ (NSString *) documentsDirectory {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [paths objectAtIndex:0];
}

@end
