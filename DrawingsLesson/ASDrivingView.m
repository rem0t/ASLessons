//
//  ASDrivingView.m
//  DrawingsLesson
//
//  Created by Vladislav Kalaev on 06.01.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

#import "ASDrivingView.h"

@implementation ASDrivingView

/* 
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
 */
- (void)drawRect:(CGRect)rect {
    
    NSLog(@"drawRect %@", NSStringFromCGRect(rect));
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
   // CGContextFillRect(context, rect);
    
    CGContextAddRect(context, CGRectMake(100, 10, 50, 50));
    CGContextAddRect(context, CGRectMake(200, 20, 50, 50));
    CGContextAddRect(context, CGRectMake(300, 30, 50, 50));
    
    CGContextFillPath(context);
    
    CGContextSetFillColorWithColor(context, [UIColor greenColor].CGColor);
    
    CGContextAddEllipseInRect(context, CGRectMake(100, 10, 50, 50));
    CGContextAddEllipseInRect(context, CGRectMake(200, 20, 50, 50));
    CGContextAddEllipseInRect(context, CGRectMake(300, 30, 50, 50));
   
    CGContextFillPath(context);
}

@end
