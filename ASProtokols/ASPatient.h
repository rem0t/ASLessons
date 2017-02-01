//
//  ASPatient.h
//  ASProtokols
//
//  Created by Vladislav Kalaev on 18.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ASPatient <NSObject> // наш протокол наследует протокол NSObject так же все
// может наследовать несколько протоколов через запятую  <NSObject,UITableView>


@required // это озаначает что они должны быть у всех классов так же есть @opcional т.е. не можно и не делать он описан ниже
@property(strong,nonatomic)NSString* name;
-(BOOL) areYouOk; 
-(void) tekePill;
-(void) makeShot;

@optional
-(NSString*) howIsYourFamly;
-(NSString*) howIsYourJob;

@end



