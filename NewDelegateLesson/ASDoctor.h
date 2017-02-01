//
//  ASDoctor.h
//  NewDelegateLesson
//
//  Created by Vladislav Kalaev on 19.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASPatient.h"

@protocol ASPationDelegate;

@interface ASDoctor : NSObject <ASPationDelegate>

@end
