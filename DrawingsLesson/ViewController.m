//
//  ViewController.m
//  DrawingsLesson
//
//  Created by Vladislav Kalaev on 06.01.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

#import "ViewController.h"
#import "ASDrivingView.h"

@interface ViewController ()

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

#pragma mark - Orientation

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    [self.drowingView setNeedsDisplay];
}

@end
