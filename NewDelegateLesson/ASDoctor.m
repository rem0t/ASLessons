//
//  ASDoctor.m
//  NewDelegateLesson
//
//  Created by Vladislav Kalaev on 19.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASDoctor.h"


@implementation ASDoctor 


#pragma mark - ASPationDelegate

-(void) patientFeelsBad:(ASPatient*) patient {
    NSLog(@"Patienst feels bad %@", patient.name);
    if (patient.temperature >= 37.f && patient.temperature <= 39.f ) { // && = но т.е. если темп пациента больше 38 но меньше 40
        [patient takePill];
    } else if (patient.temperature > 39.f ) {
        [patient makeShot];
    } else {
        NSLog(@"Patient %@ should rest",patient.name );
    }
    
}
-(void) patient:(ASPatient*) patient haveQuestion:(NSString*) question{
    NSLog(@"Patienst %@ has a quastion: %@ ", patient.name,question);
}


@end
