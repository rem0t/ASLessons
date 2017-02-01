//
//  AppDelegate.m
//  NotificationLesson
//
//  Created by Vladislav Kalaev on 19.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
#import "ASGovermant.h" 
#import "ASDoctor.h"

@interface AppDelegate ()

@property (strong, nonatomic) ASGovermant* govermant;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    [[NSNotificationCenter defaultCenter]addObserver:self
                                            selector:@selector(govermantNotifikation:)
                                                name:ASGovermentTaxLevelDidChangeNotification
                                              object:nil]; //  в общем они нужны для того чтобы отсеживать изменения
    
    self.govermant = [[ASGovermant alloc]init];
    
    ASDoctor* doctor1 = [[ASDoctor alloc ]init];
    ASDoctor* doctor2 = [[ASDoctor alloc ]init];
    ASDoctor* doctor3 = [[ASDoctor alloc ]init];
    ASDoctor* doctor4 = [[ASDoctor alloc ]init];
    ASDoctor* doctor5 = [[ASDoctor alloc ]init];
    
    doctor1.salary = doctor2.salary = doctor3.salary = doctor4.salary = doctor5.salary = self.govermant.salary;
    
    
    self.govermant.taxLevel = 5.5;
    self.govermant.salary = 1100;
    self.govermant.averagePrice = 15;
    self.govermant.pension = 550;
    
    self.govermant.salary = 1050;
    self.govermant.salary = 1150;
    self.govermant.salary = 900;
    
    return YES;
}


- (void) govermantNotifikation: (NSNotification*) notification {
    
    //NSLog(@"govermantNotifikation userInfo = %@", notification.userInfo);
    
    
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self]; // если подлючили нужно сразу удалить
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
