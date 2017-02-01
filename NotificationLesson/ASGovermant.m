//
//  ASGovermant.m
//  NotificationLesson
//
//  Created by Vladislav Kalaev on 20.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "ASGovermant.h"


NSString* const ASGovermentTaxLevelDidChangeNotification = @"ASGovermentTaxLevelDidChangeNotification";
NSString* const ASGovermentSalaryDidChangeNotification = @"ASGovermentSalaryDidChangeNotification";
NSString* const ASGovermentPensionDidChangeNotification = @"ASGovermentPensionDidChangeNotification";
NSString* const ASGovermentAveragePriceDidChangeNotification = @"ASGovermentAveragePriceDidChangeNotification";

NSString* const ASGovermentTaxLevelUseInfoKey = @"ASGovermentTaxLevelUseInfoKey";
NSString* const ASGovermentSalaryDidUseInfoKey = @"ASGovermentSalaryDidUseInfoKey";
NSString* const ASGovermentPensionUseInfoKey = @"ASGovermentPensionUseInfoKey";
NSString* const ASGovermentAveragePriceUseInfoKey = @"ASGovermentAveragePriceUseInfoKey";
 
@implementation ASGovermant

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.taxLevel = 5.f;
        self.salary = 1000;
        self.pension = 500;
        self.averagePrice = 10.f;

    }
    return self;
}


- (void) setTaxLevel:(CGFloat) taxLevel {
    _taxLevel = taxLevel;
    
NSDictionary* dictionary = [NSDictionary dictionaryWithObject:
                            [NSNumber numberWithFloat:taxLevel]
                            forKey:ASGovermentTaxLevelUseInfoKey];
    
[[NSNotificationCenter defaultCenter] postNotificationName:ASGovermentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}
// Мы пошлем в нотификайшен центер нотификацию с именем что изменился таксЛевел и диншенари с ключем

- (void) setSalary:(CGFloat) salary {
    _salary = salary;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:
                                [NSNumber numberWithFloat:salary]
                                                           forKey:ASGovermentSalaryDidUseInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovermentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setPension:(CGFloat) pension {
    _pension = pension;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:
                                [NSNumber numberWithFloat:pension]
                                                           forKey:ASGovermentPensionUseInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovermentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


- (void) setAveragePrice:(CGFloat) averagePrice {
    _averagePrice = averagePrice;
    
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:
                                [NSNumber numberWithFloat:averagePrice]
                                                           forKey:ASGovermentAveragePriceUseInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:ASGovermentAveragePriceDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


@end
