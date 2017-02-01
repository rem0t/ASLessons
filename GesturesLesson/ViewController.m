//
//  ViewController.m
//  GesturesLesson
//
//  Created by Vladislav Kalaev on 04.01.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad { 
    [super viewDidLoad];

    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(CGRectGetMidX(self.view.bounds)-50,
                                                          CGRectGetMidY(self.view.bounds)-50,
                                                          100,100)];
    
    view.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin
                           | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    
    view.backgroundColor = [UIColor greenColor];
    
    [self.view addSubview:view]; // добавляем наш вью на основной вью как addSubview 
    
    UITapGestureRecognizer* tapGestures =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleTap:)]; // : пересылается объект tapGestures
    
    tapGestures.numberOfTapsRequired = 2; // количество тапов
    
    
    [self.view addGestureRecognizer:tapGestures];
}



#pragma mark - Gestures 


- (void) handleTap:(UITapGestureRecognizer*) tapGestures{
    NSLog(@"Tap: %@", NSStringFromCGPoint([tapGestures locationInView:self.view]));
}


@end
