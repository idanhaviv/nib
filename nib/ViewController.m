//
//  ViewController.m
//  nib
//
//  Created by Haviv, Idan [ICG-IT] on 2/19/15.
//  Copyright (c) 2015 idan.haviv.org. All rights reserved.
//

#import "ViewController.h"
#import "CustomView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *redView;
@property (weak, nonatomic) IBOutlet UIView *greenView;
@property (weak, nonatomic) IBOutlet UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidLayoutSubviews
{
    [self addPhotoWithLabelsToView:self.redView];
    [self addPhotoWithLabelsToView:self.greenView];
    [self addPhotoWithLabelsToView:self.yellowView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addPhotoWithLabelsToView:(UIView *)view
{
    CustomView *customView = [[CustomView alloc] initWithFrame:view.bounds];
    UINib *nib = [UINib nibWithNibName:@"CustomView" bundle:nil];
    [nib instantiateWithOwner:customView options:nil];
    [customView setup];
    [view addSubview:customView];
}

@end
