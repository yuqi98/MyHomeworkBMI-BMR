//
//  person.h
//  myfirstapp
//
//  Created by Yuqi Zhang on 6/29/16.
//  Copyright © 2016 Yuqi Zhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface person : NSObject

@property(strong, nonatomic) NSNumber* weightInKG;
@property(strong, nonatomic) NSNumber* heightInM;

@property(strong, nonatomic) NSNumber* ageInY;
@property(strong, nonatomic) NSNumber* sex;

//@property(strong, nonatomic) bool units;

+(person*) sharedPersonInstance;

-(NSNumber*) bmi;
-(NSNumber*) bmr;


@end
