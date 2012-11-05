//
//  IOBDetailsViewController.m
//  iOS Bootstrap
//
//  Created by Kyle LeNeau on 11/4/12.
//  Copyright (c) 2012 Kyle LeNeau. All rights reserved.
//

#import "IOBDetailsViewController.h"

@interface IOBDetailsViewController ()

@property (nonatomic, strong) UILabel *itemLabel;

@end


@implementation IOBDetailsViewController

- (id)init
{
    self = [super init];
    if (self) {
        //
        [self setView:[[UIView alloc] init]];
        [[self view] setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth];
        [[self view] setBackgroundColor:[UIColor underPageBackgroundColor]];
        
        UILabel *l = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 100)];
        [l setNumberOfLines:3];
        [l setBackgroundColor:[UIColor clearColor]];
        [l setFont:[UIFont boldSystemFontOfSize:24]];
        [l setTextAlignment:NSTextAlignmentCenter];
        [self setItemLabel:l];
        [[self view] addSubview:_itemLabel];
    }
    return self;
}

- (void)setItem:(NSString *)item
{
    _item = nil;
    _item = item;
    
    [_itemLabel setText:_item];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
