//
//  ViewController.m
//  UIViewController
//
//  Created by Vladislav Kalaev on 29.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Loading

- (void) loadView {
    [super loadView];
    NSLog(@"loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"viewDidLoad");
}

#pragma mark - Views

- (void)viewWillAppear:(BOOL)animated { // перед тем как появится
    
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear");
    
}
- (void)viewDidAppear:(BOOL)animated { // когда появился на экране
      [super viewDidAppear:animated];
    NSLog(@"viewDidAppear");
}



- (void)viewWillDisappear:(BOOL)animated { // перед тем как уйдет с экрана
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear");

}

- (void) viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews");
}

- (void) viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews");
}

#pragma mark - Orientation

- (BOOL)shouldAutorotate {
    return YES; // Влияет на то будет поворачиваться или нет
}
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait | UIInterfaceOrientationMaskPortraitUpsideDown; // потдерживаемые ориентации
}


- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
    NSLog(@"willRotateToInterfaceOrientation %d",toInterfaceOrientation);
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    NSLog(@"didRotateFromInterfaceOrientation %d",fromInterfaceOrientation);
}

#pragma mark - Memory Warning 

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
