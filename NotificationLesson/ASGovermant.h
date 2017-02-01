//
//  ASGovermant.h
//  NotificationLesson
//
//  Created by Vladislav Kalaev on 20.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

extern NSString* const ASGovermentTaxLevelDidChangeNotification;
extern NSString* const ASGovermentSalaryDidChangeNotification;
extern NSString* const ASGovermentPensionDidChangeNotification;
extern NSString* const ASGovermentAveragePriceDidChangeNotification;

extern NSString* const ASGovermentTaxLevelUseInfoKey;
extern NSString* const ASGovermentSalaryDidUseInfoKey;
extern NSString* const ASGovermentPensionUseInfoKey;
extern NSString* const ASGovermentAveragePriceUseInfoKey;
 
@interface ASGovermant : NSObject

@property (assign,nonatomic) CGFloat taxLevel;
@property (assign,nonatomic) CGFloat salary;
@property (assign,nonatomic) CGFloat pension;
@property (assign,nonatomic) CGFloat averagePrice;

@end
