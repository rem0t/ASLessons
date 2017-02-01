//
//  ASDencer.h
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASPatient.h"

@interface ASDencer : NSObject <ASPatient>

@property (strong,nonatomic) NSString* favouriteDance;
@property(strong,nonatomic)NSString* name;
-(void) dance;


@end
