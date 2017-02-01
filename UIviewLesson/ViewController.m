//
//  ViewController.m
//  UIviewLesson
//
//  Created by Vladislav Kalaev on 29.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//






//bounds - это прямоугольник, заданный координатами (x,y) и размером (width,height) относительно собственной координатной системы (0,0).

//frame - это прямоугольник, заданный координатами (x,y) и размером (width,height) относительно своего контейнера (superview).
#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) UIView* testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(100, 150, 200, 50)];
    view1.backgroundColor = [[UIColor redColor]colorWithAlphaComponent:0.8];
    [self.view addSubview:view1];
    
    UIView* view2 = [[UIView alloc] initWithFrame:CGRectMake(80, 130, 50, 250)];
    view2.backgroundColor = [[UIColor greenColor]colorWithAlphaComponent:0.8];
    view2.autoresizingMask = UIViewAutoresizingFlexibleWidth |
                            UIViewAutoresizingFlexibleHeight |
                      UIViewAutoresizingFlexibleBottomMargin |
                            UIViewAutoresizingFlexibleLeftMargin; // изменения вью с параметрами
    [self.view addSubview:view2];
    
    self.testView = view2;
    
    [self.view bringSubviewToFront:view1]; // с помощью этого метода ставим первую вьюху перед второй
}

- (void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    
    //NSLog(@"\nframe = %@\nbounts = %@", NSStringFromCGRect(self.testView.frame),NSStringFromCGRect(self.testView.bounds));
    
    NSLog(@"\nframe = %@\nbounts = %@", NSStringFromCGRect(self.view.frame),NSStringFromCGRect(self.view.bounds));
    
    CGRect r = self.view.bounds; //  bounds используем для того чтобы правельно вычесть координаты внутри окна. frame для другого 
    
    r.origin.y = 0 ;
    r.origin.x = CGRectGetWidth(r)-100;
    r.size = CGSizeMake(100, 100);
    
    UIView* v = [[UIView alloc]initWithFrame:r];
    
    v.backgroundColor = [[UIColor blueColor]colorWithAlphaComponent:0.8];
    [self.view addSubview:v];
}
 
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
