//
//  AppDelegate.m
//  NSstringLesson
//
//  Created by Vladislav Kalaev on 26.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    /*
    NSString* string1 = @"String 1";
    NSString* string2 = @"String 2";
     
    NSArray* array = [NSArray arrayWithObjects:string1,string2, nil];
    
    for (NSString* string in array) {
        if ([string isEqualToString:@"String 1"]) { // проеврка на наличие строки в массиве
        NSLog(@"Index =%d",[array indexOfObject:string]);
        }
    }
    
    
    NSString* string =(@"Hello world");
     
    NSLog(@"%@",string);
    
    NSRange range = [string rangeOfString:@"World" options:NSCaseInsensitiveSearch];// с опцией не чувствителен к регистру 
    // range находит слово передает его длину и положение (начало)
     
    if (range.location !=NSNotFound ) {
        NSLog(@"range = %@",NSStringFromRange(range));
    } else {
        NSLog(@"not found");
    }
    */
    
    
    NSString* text = @"more more text ";
    
   // text = [text substringToIndex:10]; // Останется первые 10 индексов
    // так же можно складывать строки искать в них что-то и изменять много всего полезного 
    
    return YES;
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
