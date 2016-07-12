//
//  ViewController.m
//  myfirstapp
//
//  Created by Yuqi Zhang on 6/29/16.
//  Copyright © 2016 Yuqi Zhang. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}






bool q;
    
- (IBAction)myUnits:(id)sender {
    static bool t = NO;
    if(t==YES)
    {
        self.unitHeight.text = @"m";
        self.unitWeight.text = @"kg";
    }
    else
    {
        self.unitHeight.text = @"ft";
        self.unitWeight.text = @"lb";
    }
    t = !t;
    q = !q;
    
}

- (IBAction)myBMR:(id)sender {
    
    UIImage *newImage;
    NSString* path;
    NSBundle* myBundle = [NSBundle mainBundle];
    
    //self.unitHeight.text = @"m";
    //self.unitWeight.text = @"kg";
    
    person* p = [person sharedPersonInstance];
    
    p.heightInM = @(self.Text2.text.doubleValue);   //floatValue
    
    //[NSNumber numberWithFloat: self.Text2.text.floatValue];
    
    p.weightInKG = @(self.Text1.text.doubleValue);
    
    //NSLog(@"%ld", self.myUnits.selectedSegmentIndex);
    if (q == 1)
    {
        p.weightInKG = @(p.weightInKG.floatValue*454/1000);
        p.heightInM = @(p.heightInM.floatValue*30.48/100);
        //self.unitWeight.text = @"lb";
        //self.unitHeight.text = @"ft";
    }
    
    p.ageInY = @(self.TextAge.text.doubleValue);
    
    p.sex = @(self.mySwitch.on);
    
    //NSLog(@"%d", self.mySwitch.on);
    
    self.myResult.text= [NSString stringWithFormat:@"%.2f", p.bmi.floatValue];
    
    self.myResultofBMR.text= [NSString stringWithFormat:@"%.2f", p.bmr.floatValue];
    
    if(p.bmi.floatValue <= 18.50)
    {
        self.GainorLoose.text = @"gainweight 500cal/day";
        float week=((18.5-p.bmi.floatValue)*(p.heightInM.doubleValue*p.heightInM.doubleValue))/0.45;
        self.Days.text= [NSString stringWithFormat:@"%.2f", week];
        
        path = [myBundle pathForResource:@"thin" ofType:@"jpg"];
        
        
    }
    else if (p.bmi.floatValue > 24.99)
    {
        self.GainorLoose.text = @"looseweight 500cal/day";
        float week=((p.bmi.floatValue-24.99)*(p.heightInM.doubleValue*p.heightInM.doubleValue))/0.45;
        self.Days.text= [NSString stringWithFormat:@"%.2f", week];
        
        path = [myBundle pathForResource:@"fat" ofType:@"jpg"];
        
    }
    else{
        self.GainorLoose.text = @"no need";
        self.Days.text= @"YOU ARE PERFECT";
        if (p.sex.boolValue==1)
        {
            path = [myBundle pathForResource:@"perfect male" ofType:@"jpg"];
        }
        else{
            path = [myBundle pathForResource:@"perfect female" ofType:@"jpeg"];
        }
    }
    newImage = [UIImage imageWithContentsOfFile:path];
    self.myImage.image = newImage;
    
    if (p.bmi.floatValue < 16)
    {
        self.myCategory.text = @"Severe Thinness";
    }
    else if (p.bmi.floatValue > 16.0 && p.bmi.floatValue <= 16.99)
    {
        self.myCategory.text = @"Moderate Thinness";
    }
    else if (p.bmi.floatValue > 17.0 && p.bmi.floatValue <= 18.49)
    {
        self.myCategory.text = @"Mild Thinness";
    }
    else if (p.bmi.floatValue > 18.50 && p.bmi.floatValue <= 24.99)
    {
        self.myCategory.text = @"Normal Range";
    }
    else if (p.bmi.floatValue > 25.00 && p.bmi.floatValue <= 29.99)
    {
        self.myCategory.text = @"Overweight";
    }
    else if (p.bmi.floatValue > 30.00 && p.bmi.floatValue <= 34.99)
    {
        self.myCategory.text = @"Obese Class I";
    }
    else if (p.bmi.floatValue > 35.00 && p.bmi.floatValue <= 39.99)
    {
        self.myCategory.text = @"Obese Class II";
    }
    else{
        self.myCategory.text = @"Obese Class III";
    }

}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"Touches began!");
    [self.Text1 resignFirstResponder];
    [self.Text2 resignFirstResponder];
    [self.TextAge resignFirstResponder];
    
}

@end
