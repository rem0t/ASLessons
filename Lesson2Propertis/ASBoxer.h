//
//  ASBoxer.h
//  Lesson2Propertis
//
//  Created by Vladislav Kalaev on 14.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ASBoxer : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat hight;
@property (assign, nonatomic) CGFloat weight;

 

- (NSInteger) howOldAreYou;

@end
