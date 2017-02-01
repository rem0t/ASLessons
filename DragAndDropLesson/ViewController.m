//
//  ViewController.m
//  DragAndDropLesson
//
//  Created by Vladislav Kalaev on 04.01.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(weak,nonatomic) UIView* dragginView;
@property(assign,nonatomic) CGPoint touchOffSet;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    for (int i = 0; i < 8; i++) {
        UIView* view = [[UIView alloc]initWithFrame:CGRectMake(10 + 100*i, 100, 100, 100)];
        view.backgroundColor = [self randomColor];
        
        [self.view addSubview:view];

    }
    
   // self.testView = view;
    
    //self.view.multipleTouchEnabled = YES;
}

#pragma marl - Private Methods

- (void) longTouches:(NSSet*)touches  withMethod:(NSString*)methodName {
    
    NSMutableString* string = [NSMutableString stringWithString:methodName];
    for (UITouch* touch in touches) {
        CGPoint point = [touch locationInView:self.view];
        [string appendFormat:@"%@ ",NSStringFromCGPoint(point)];
    }
    NSLog(@"%@",string);
}

- (UIColor*) randomColor {
    CGFloat r = (float)(arc4random()%256)/255.f;
    CGFloat g = (float)(arc4random()%256)/255.f;
    CGFloat b = (float)(arc4random()%256)/255.f;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

 
#pragma mark - Touches


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    
    [self longTouches:touches withMethod:@"touchesBegan"];
    
    UITouch* touch = [touches anyObject];
    
    CGPoint pointOnMainView= [touch locationInView:self.view];
    
    UIView* view = [self.view hitTest:pointOnMainView withEvent:event];
    
    if (![view isEqual:self.view]) { // объекты сравниваем только по isEqual не ==
        
        self.dragginView = view;
        
        [self.view bringSubviewToFront:self.dragginView];
        
        CGPoint touchPoint = [touch locationInView:self.dragginView];
        
        self.touchOffSet = CGPointMake(CGRectGetMidX(self.dragginView.bounds)- touchPoint.x,
                                        CGRectGetMidY(self.dragginView.bounds)- touchPoint.y);
        [UIView animateWithDuration:0.3
                         animations:^{
                             self.dragginView.transform = CGAffineTransformMakeScale(1.2f, 1.2f);
                             self.dragginView.alpha = 0.3f;
                         }];
        
    }else {
        self.dragginView = nil;
    }
    
       
    
}


- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    [self longTouches:touches withMethod:@"touchesMoved"];
    
    if (self.dragginView) {
        
        UITouch* touch = [touches anyObject];
        
        CGPoint pointOnMainView = [touch locationInView:self.view];
        
        CGPoint correction = CGPointMake(pointOnMainView.x + self.touchOffSet.x,
                                         pointOnMainView.y + self.touchOffSet.y);
        
        
        self.dragginView.center = correction;
    }
    
    
}


- (void) onTouchesEnded {
    
    
    
    [UIView animateWithDuration:0.3
                     animations:^{
                         self.dragginView.transform = CGAffineTransformIdentity;
                         self.dragginView.alpha = 1.f;
                     }];
    self.dragginView = nil;
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    [self longTouches:touches withMethod:@"touchesEnded"];
    [self onTouchesEnded];
    
}
- (void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event {
    [self longTouches:touches withMethod:@"touchesCancelled"];
    [self onTouchesEnded];
}
- (void)touchesEstimatedPropertiesUpdated:(NSSet<UITouch *> *)touches NS_AVAILABLE_IOS(9_1) {
    [self longTouches:touches withMethod:@"touchesEstimatedPropertiesUpdated"];
    [self onTouchesEnded];
}

@end
