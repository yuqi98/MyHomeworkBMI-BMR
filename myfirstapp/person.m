//
//  person.m
//  myfirstapp
//
//  Created by Yuqi Zhang on 6/29/16.
//  Copyright © 2016 Yuqi Zhang. All rights reserved.
//

#import "person.h"

static person* secretPerson;

@implementation person

@synthesize weightInKG;
@synthesize heightInM;
@synthesize ageInY;
@synthesize sex;
//@synthesize units;

+(person*) sharedPersonInstance
{
    if(secretPerson == nil)
    {
        secretPerson = [[person alloc] init];
        //secretPerson.heightInM= @1.75;
        //secretPerson.weightInKG=@78;
        
        
    }
    return secretPerson;
}

-(NSString*) description
{
    return [NSString stringWithFormat:@"%p %@ %@ %@ %@",self, self.weightInKG, self.heightInM,self.ageInY,self.sex];
}

-(NSNumber*) bmi
{
    //return @42;
    float a= (self.weightInKG.doubleValue / (self.heightInM.doubleValue * self.heightInM.doubleValue));
    
    //float h=self.heightInM.floatValue;
    //float m=self.weightInKG.floatValue;
    //float bmi=m/(h*h);
    //return @bmi;
    
    return [NSNumber numberWithFloat:a];  //@(...)
}

-(NSNumber*) bmr
{
    float a;
    if(self.sex.boolValue == 1)
    {
        a=self.weightInKG.floatValue * 13.397 + self.heightInM.floatValue * 479.9 - self.ageInY.floatValue * 5.677 + 88.362;
    }
    else
    {
        a=self.weightInKG.floatValue * 9.247 + self.heightInM.floatValue * 309.8 - self.ageInY.floatValue * 4.330 + 447.593;
    }
    
    return @(a);
    
}

@end
