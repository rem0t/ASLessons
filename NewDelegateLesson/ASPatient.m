//
//  ASPatient.m
//  NewDelegateLesson
//
//  Created by Vladislav Kalaev on 19.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASPatient.h"

@implementation ASPatient

-(BOOL) howAreYou {
    
    BOOL iFeelGood = arc4random() % 2;
    
    if (!iFeelGood) {
        [self.delegate patientFeelsBad:self];
    }
    
    return iFeelGood;
}
-(void) takePill{
    NSLog(@"%@ takes a pill", self.name);
}
-(void) makeShot{
    NSLog(@"%@ make a shot", self.name);
}

@end
