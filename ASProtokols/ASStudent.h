//
//  ASStudent.h
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASPatient.h"

@interface ASStudent : NSObject <ASPatient>

@property (strong, nonatomic) NSString* universityName; 
@property(strong,nonatomic)NSString* name;
-(void) study;


@end
