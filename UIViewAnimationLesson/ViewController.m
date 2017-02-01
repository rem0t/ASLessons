//
//  ViewController.m
//  UIViewAnimationLesson
//
//  Created by Vladislav Kalaev on 31.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//@property (weak,nonatomic) UIView* testView;
@property (weak,nonatomic) UIImageView* testImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView* view = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor greenColor];
    
    
    UIImage* image1 = [UIImage imageNamed:@"Man1.png"];
    UIImage* image2 = [UIImage imageNamed:@"Man2.png"];
    UIImage* image3 = [UIImage imageNamed:@"Man3.png"];
    
    NSArray* images = [NSArray arrayWithObjects:image1,image2,image3,image1, nil];
    
    view.animationImages = images;
    view.animationDuration = 1.f;
    [view startAnimating];
    
    [self.view addSubview:view];
     
  //    self.testView = view;
      self.testImageView = view;
    
}

- (UIColor*) randomColor {
    CGFloat r = (CGFloat)(arc4random()%255)/255.f;
    CGFloat g = (CGFloat)(arc4random()%255)/255.f;
    CGFloat b = (CGFloat)(arc4random()%255)/255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}
- (void) moveView:(UIView*) view {
    
    CGRect rect = self.view.bounds;
    rect = CGRectInset(rect, CGRectGetWidth(view.frame), CGRectGetHeight(view.frame));
    
    
    CGFloat x = arc4random() % (int)CGRectGetWidth(rect) + CGRectGetMinX(rect);
    CGFloat y = arc4random() % (int)CGRectGetHeight(rect) + CGRectGetMinY(rect);
    
    CGFloat s = (float)(arc4random() % 350) / 100.f + 0.5f;
    
    CGFloat r = (float)(arc4random() % (int)(M_PI * 2 *10000)) / 10000 - M_PI;
    
    CGFloat d = (float)(arc4random() % 20001) / 10000 + 2;
    
    [UIView             animateWithDuration:d
                                   delay:0
                                 options:UIViewAnimationOptionCurveLinear /*| UIViewAnimationOptionBeginFromCurrentState */
                                animations:^{
                                  view.center = CGPointMake(x,y);
                                 // view.backgroundColor = [self randomColor];
                                  
                                  CGAffineTransform scale = CGAffineTransformMakeScale(s,s);
                                  CGAffineTransform rotation = CGAffineTransformMakeRotation(r);
                                  CGAffineTransform transform = CGAffineTransformConcat(scale, rotation);
                                  
                                  view.transform = transform;
                                  
                                  //self.testView.transform = CGAffineTransformMakeRotation(M_PI); // поворачиваем крвадрат по pi
                                  //self.testView.transform = CGAffineTransformMakeTranslation(100, 0); // 1 --> 2---down
                                  // self.testView.transform = CGAffineTransformMakeScale(2, 0.5); // 1 - плоская 2 -- узкая
                              }
                              completion:^(BOOL finished) {
                                  NSLog(@"Animation finishid %d",finished);
                                  
                                __weak UIView* v = view;
                              [self moveView:v];
                              }];

    
}

- (void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
   //  [self moveView:self.testView];
    
    [self moveView:self.testImageView];
    
    /*
    [UIView animateWithDuration:5 // длительность анимации
                     animations:^{
        self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150); // frame координаты оносительно родителя bounds сам self.view
                     }];
     
    
    [UIView animateKeyframesWithDuration:10
                                   delay:1
                                 options:UIViewAnimationOptionCurveEaseInOut //| UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse
                              animations:^{
        self.testView.center = CGPointMake(CGRectGetWidth(self.view.bounds) - CGRectGetWidth(self.testView.frame) / 2, 150);
                              }
                              completion:^(BOOL finished) {
                                  NSLog(@"Animation finishid %d",finished);
                              }];
    
    double delayInSeconds = 6 ;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after (popTime, dispatch_get_main_queue(), ^(void) {
        [self.testView.layer removeAllAnimations];
    
    
    
    [UIView animateKeyframesWithDuration:4
                                   delay:0
                                 options:UIViewAnimationOptionCurveEaseOut | UIViewAnimationOptionBeginFromCurrentState
                              animations:^{
                                  self.testView.center = CGPointMake(250,250);
                              }
                              completion:^(BOOL finished) {
                                  NSLog(@"Animation finishid %d",finished);
                              }];
        });
    */
    
    
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
