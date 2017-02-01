//
//  ASDoctor.m
//  NotificationLesson
//
//  Created by Vladislav Kalaev on 20.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASDoctor.h"
#import "ASGovermant.h"


@implementation ASDoctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSNotificationCenter* nc = [NSNotificationCenter defaultCenter]; // крутая штука
        [nc addObserver:self
               selector:@selector(salaryChangedNotifikation:) 
                   name:ASGovermentSalaryDidChangeNotification
                 object:nil];
        
                [nc addObserver:self
               selector:@selector(averagePriceChangedNotifikation:)
                   name:ASGovermentAveragePriceDidChangeNotification
                 object:nil];
    }
    return self;
}


- (void) salaryChangedNotifikation:(NSNotification*) notification  {
    
    NSNumber* value = [notification.userInfo objectForKey:ASGovermentSalaryDidUseInfoKey];
    CGFloat salary = [value floatValue];
    if (salary < self.salary) {
        NSLog(@"Doctors not Happy");
        
    } else {
        NSLog(@"Doctors Happy");
    }
    
    
}

- (void) averagePriceChangedNotifikation:(NSNotification*) notification {
    
    
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
