//
//  AppDelegate.m
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
#import "ASPatient.h"
#import "ASDencer.h"
#import "ASStudent.h"
#import "ASDeveloper.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    ASDencer* dancer1 = [[ASDencer alloc]init];
    ASDencer* dancer2 = [[ASDencer alloc]init];
    
    ASStudent* student1 = [[ASStudent alloc]init];
    ASStudent* student2 = [[ASStudent alloc]init];
    ASStudent* student3 = [[ASStudent alloc]init];
    
    ASDeveloper* developer1 = [[ASDeveloper alloc]init];
    
    dancer1.name = @"Dancer1";
    dancer2.name = @"Dancer2";
     
    student1.name = @"Student1";
    student2.name = @"Student2";
    student3.name = @"Student3";
    
    developer1.name = @"Developer1";
    
    NSObject* fake = [[NSObject alloc]init];
    
    NSArray* patients = [NSArray arrayWithObjects:dancer1,fake,dancer2,student1,student2,student3,developer1, nil];
    
    for (id <ASPatient> patient in patients) {
        
        if ([patient conformsToProtocol:@protocol(ASPatient)]) {// проверка на левый объект в нашем массиве ..шпион!!!
            NSLog(@"Patient name = %@",patient.name);   // ! значит что не окей !! (обратное)
            
            if ([patient respondsToSelector:@selector(howIsYourFamly)]) {
                NSLog(@"How is your famaly?\n%@",patient.howIsYourFamly);
            }
            if ([patient respondsToSelector:@selector(howIsYourJob)]) {
                NSLog(@"How is your job?\n%@",patient.howIsYourJob);
            }
            
            if (![patient areYouOk]) {
                [patient tekePill];
                
                if (![patient areYouOk]) {
                    [patient makeShot];
                }
                
            }
            
        }
        else {
            NSLog(@"FAKE!!!");
        }
    }
    
    
        
        
    
    
    /*
    for (int i= 0; i < [patients count]; i++){
        id <ASPatient> patient = [patients objectAtIndex:i]; // это тоже самое что и выше
    }
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
