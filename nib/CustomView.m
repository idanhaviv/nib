//
//  CustomView.m
//  nib
//
//  Created by Haviv, Idan [ICG-IT] on 2/19/15.
//  Copyright (c) 2015 idan.haviv.org. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)setup
{
    self.mainView.backgroundColor = [UIColor blackColor];
    self.mainView.frame = self.bounds;
    [self addSubview:self.mainView];
}

@end
