//
//  ASBoxer.h
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ASPatient.h"

@interface ASDeveloper : NSObject <ASPatient> // дописали наш протокол т.е. класс соглашается выполнить требования нашего протокола 

@property (assign,nonatomic) CGFloat experiance;
@property(strong,nonatomic)NSString* name;
-(void) work;


@end
