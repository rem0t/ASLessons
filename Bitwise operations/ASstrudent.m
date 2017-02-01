//
//  ASstrudent.m
//  Bitwise operations
//
//  Created by Vladislav Kalaev on 28.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASstrudent.h"

@implementation ASstrudent

- (NSString*) description {
    return [NSString stringWithFormat:@"Student studies:\n"
                                        "Biology = %@\n"
                                        "Math = %@\n"
                                        "Development = %@\n"
                                        "Engineering = %@\n"
                                        "Art = %@\n"
                                        "Phycology = %@\n",
                                     self.subjectType & ASstrudentSubjectTypeBiology ? @"YES" : @"NO",
                                     self.subjectType & ASstrudentSubjectTypeMath ? @"YES" : @"NO",
                                     self.subjectType & ASstrudentSubjectTypeDevelopment ? @"YES" : @"NO",
                                     self.subjectType & ASstrudentSubjectTypeEngineering ? @"YES" : @"NO",
                                     self.subjectType & ASstrudentSubjectTypeArt ? @"YES" : @"NO",
                                     self.subjectType & ASstrudentSubjectTypePhycology ? @"YES" : @"NO"];
}                                    // создали маску и перемножаем на каждое



@end
 
