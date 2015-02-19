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
@property (weak, nonatomic) IBOutlet UIView *smallView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPress:(id)sender
{
    CustomView *customView = [[CustomView alloc] initWithFrame:self.smallView.bounds];
    UINib *nib = [UINib nibWithNibName:@"CustomView" bundle:nil];
    [nib instantiateWithOwner:customView options:nil];
    [customView setup];
    [self.smallView addSubview:customView];
}

@end
