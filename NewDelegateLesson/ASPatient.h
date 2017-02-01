//
//  ASPatient.h
//  NewDelegateLesson
//
//  Created by Vladislav Kalaev on 19.12.16.
//  Copyright © 2016 Vladislav Kalaev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol ASPationDelegate; // если мы хотим чтобы класс имел делегат то мы ему говорим об этом этой записью

@interface ASPatient : NSObject 

@property(strong,nonatomic) NSString* name;   // strong обычные объекты которые мы должны зафиксировать пока они не умрут
@property(assign,nonatomic) CGFloat temperature; // assign для примитивных типов int,float.
@property(weak, nonatomic) id <ASPationDelegate> delegate;// ссылка на делегат должна быть weak // указатель id который реализует данный протокол

-(BOOL) howAreYou;
-(void) takePill;
-(void) makeShot;


@end

@protocol ASPationDelegate 
@required
-(void) patientFeelsBad:(ASPatient*) patient;
-(void) patient:(ASPatient*) patient haveQuestion:(NSString*) question;

@end
