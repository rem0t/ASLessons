//
//  ASStudet.h
//  ASDataType
//
//  Created by Vladislav Kalaev on 17.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum { // enum это список 0,1,2,3 и т.д.
    
    ASGenderMale,
    ASGenderFemale
    
} ASGender;

@interface ASStudet : NSObject
 
@property(strong,nonatomic) NSString* name;
@property(assign,nonatomic) ASGender gender;


@end
