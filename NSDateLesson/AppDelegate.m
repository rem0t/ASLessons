//
//  AppDelegate.m
//  NSDateLesson
//
//  Created by Vladislav Kalaev on 28.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate 


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

   NSDate* date = [NSDate date];
   
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    
    [dateFormatter setDateStyle:NSDateFormatterShortStyle]; // 12/28/16
    
    NSLog(@"%@",[dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterLongStyle]; // December 28, 2016
    
    NSLog(@"%@",[dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle]; // Dec 28, 2016
    
    NSLog(@"%@",[dateFormatter stringFromDate:date]);
    
    [dateFormatter setDateStyle:NSDateFormatterFullStyle]; // Wednesday, December 28, 2016
    
    NSLog(@"%@",[dateFormatter stringFromDate:date]);

    NSDate* date1 = [NSDate date];
    NSDate* date2 = [NSDate dateWithTimeIntervalSinceNow:-1000000]; // наша дата - число секунд
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    NSDateComponents* components = [calendar components:NSCalendarUnitDay
                                    | NSCalendarUnitHour
                                    |NSCalendarUnitMinute
                                    fromDate:date1
                                    toDate:date2 options:0]; //
    
    NSLog(@"%@",components); // узнали сколько в 1 млн секунд дней часов и минут
    
 //   [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerTest:) userInfo:nil repeats:YES];
    
    
    return YES;
}

- (void) timerTest:(NSTimer*) timer {
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"HH:mm:ss:SSS"];
    
    NSLog(@"%@",[dateFormatter stringFromDate:[NSDate date]]);
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end

