//
//  AppDelegate.m
//  ASDataType
//
//  Created by Vladislav Kalaev on 17.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import "AppDelegate.h"
#import "ASStudet.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
     
     
    BOOL boolVar = YES; // yes no true fulse = 1,0
    NSInteger intVar = 10;
    NSUInteger intUvar = 100;         // у каждого примитивного типа есть собсвенный размер он храниться в стеке не в другой памяти не в куче
    CGFloat floatVar = 1.5f;
    double doubleVar = 2.5f; // это все примитивный тип
    
    NSNumber* boolObject = [NSNumber numberWithBool:boolVar]; // это так называемые оболочки после дейстивия с переменныеми мы сможем их засунуть в массив
    NSNumber* intObject = [NSNumber numberWithInteger:intVar];
    NSNumber* intUObject = [NSNumber numberWithUnsignedInteger:intUvar];
    NSNumber* floatObject = [NSNumber numberWithFloat:floatVar];
    NSNumber* doubleObject = [NSNumber numberWithDouble:doubleVar];
    
    NSArray* array = [NSArray arrayWithObjects:boolObject,intObject,intUObject,floatObject,doubleObject, nil];
    
    /*
    NSLog(@"boolVar = %d,intVar = %ld, intUvar = %ld,floatVar = %f, doubleVar = %f",boolVar,(long)intVar,(long)intUvar,floatVar,doubleVar); // попросил ld
    
  NSLog(@"boolVar = %ld,intVar = %ld, intUvar = %ld,floatVar = %ld, doubleVar = %ld",sizeof(boolVar),sizeof(intVar),sizeof(intUvar),sizeof(floatVar),sizeof(doubleVar)); // sizeof выводит размеры которые занимает переменная
    */
    /*
    ASStudet* studentA = [[ASStudet alloc]init];
    studentA.name = @"Best student";
    NSLog(@"StudentA name = %@", studentA.name);
    
    ASStudet* studentB = studentA;
    studentB.name = @"Bad student";              // объекты меняются
    NSLog(@"StudentA name = %@", studentA.name);
    */
    /*
    NSInteger a = 10;
    NSLog(@"a = %d",a);
    NSInteger b = a;
    b = 5;
    NSLog(@"a = %d, b = %d",a,b); // а переменные с числами (примитивные) нет!!
    NSInteger* c = &a; // указатель 'c' указывает на адресс переменной 'a' // тут мы его и создали
    *c = 8; //  А ТУТ ПОМЕНЯЛОСЬ ТАК КАК РАБОТАЛИ С УКАЗАТЕЛЕМ
    NSLog(@"a = %d, b = %d",a,b);
    NSInteger test = 0;
  NSInteger result =  [self test:a testPointer:&test];
    NSLog(@"result = %d, test = %d",result,test);
    */
    /*
    ASStudet* student = [[ASStudet alloc]init];
    [student setGender:ASGenderMale];
    */
  /*
    CGPoint point;              // СТРУКТУРЫ ниже описаны три основные
    point.x = 5.5f;
    point.y = 10;
    
    point = CGPointMake(6,3);   // перезаписали нах point
    
    CGSize size;
    size.width = 10;
    size.height = 20;
    
    
    
    CGRect rect;
    rect.origin = point;
    rect.size = size;
    
    rect = CGRectMake(0, 0, 30, 60);
    */
    
    
    return YES;
}


- (NSInteger) test:(NSInteger) test  testPointer:(NSInteger*) testPointer{
    *testPointer = 5;
    
    return test;
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
