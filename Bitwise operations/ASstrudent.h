//
//  ASstrudent.h
//  Bitwise operations
//
//  Created by Vladislav Kalaev on 28.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    
    ASstrudentSubjectTypeBiology        = 1 << 0,
    ASstrudentSubjectTypeMath           = 1 << 1,
    ASstrudentSubjectTypeDevelopment    = 1 << 2,
    ASstrudentSubjectTypeEngineering    = 1 << 3,
    ASstrudentSubjectTypeArt            = 1 << 4,
    ASstrudentSubjectTypePhycology      = 1 << 5
    
} ASstrudentSubjectType;

@interface ASstrudent : NSObject

@property (assign,nonatomic) ASstrudentSubjectType subjectType;


@end 
