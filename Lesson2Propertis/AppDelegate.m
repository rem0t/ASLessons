//
//  AppDelegate.m
//  Lesson2Propertis
//
//  Created by Vladislav Kalaev on 14.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
#import "ASBoxer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    ASBoxer* boxer = [[ASBoxer alloc]init];
    /*
    boxer.name = @"IVAN";
    boxer.age = 25;
    boxer.hight = 1.8f;
    boxer.weight = 80.f;
    */
   // boxer.nameCount = 0;
    
    [boxer setName:@"IVAN"];  // методы доступа к пропертям (свойствам)
    [boxer setAge:25];        // боксер объект  age name  и т.д. его свойсва 
    [boxer setHight:1.8f];    // методы set
    [boxer setWeight:80.f];
    
    NSLog(@"age = %d", [boxer howOldAreYou]);
    NSLog(@"name = %@", boxer.name);
    NSLog(@"name = %@", [boxer name]); // методы get  
    NSLog(@"name = %@", [boxer name]);
    NSLog(@"name = %@", [boxer name]);
    NSLog(@"name = %@", [boxer name]);
    
    /*
    NSLog(@"name = %@", boxer.name);
    NSLog(@"name = %d", boxer.age);
    NSLog(@"name = %f", boxer.hight);
    NSLog(@"name = %f", boxer.weight);
    */
     /*
    NSLog(@"name = %@", boxer.name);
    NSLog(@"name = %d", boxer.age);
    NSLog(@"name = %f", boxer.hight);
    NSLog(@"name = %f", boxer.weight);
    */
    
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
