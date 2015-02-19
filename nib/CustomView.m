//
//  CustomView.m
//  nib
//
//  Created by Haviv, Idan [ICG-IT] on 2/19/15.
//  Copyright (c) 2015 idan.haviv.org. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self setup];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self setup];
    }
    
    return self;
}

- (void)setup
{
    //first trial (works)
    
    UINib *nib = [UINib nibWithNibName:@"CustomView" bundle:nil];
    UIView *view = [[nib instantiateWithOwner:self options:nil] lastObject];
    
    if (view)
    {
        view.frame = self.bounds;
        view.backgroundColor = [UIColor blackColor];
        view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self addSubview:view];
    }
    
    //second trial
    
//    UINib *nib = [UINib nibWithNibName:@"CustomView" bundle:nil];
//    [[nib instantiateWithOwner:self options:nil] lastObject];
//    
//    self.mainView.frame = self.bounds;
//    self.mainView.backgroundColor = [UIColor blackColor];
//    self.mainView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    [self addSubview:self.mainView];
    
}

@end
