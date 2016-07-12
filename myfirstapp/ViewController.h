
//  ViewController.h
//  myfirstapp
//
//  Created by Yuqi Zhang on 6/29/16.
//  Copyright © 2016 Yuqi Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "person.h"

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UILabel *Label1;

@property (weak, nonatomic) IBOutlet UILabel *Label2;

@property (weak, nonatomic) IBOutlet UITextField *Text1;

@property (weak, nonatomic) IBOutlet UITextField *Text2;

@property (weak, nonatomic) IBOutlet UILabel *myResult;

@property (weak, nonatomic) IBOutlet UILabel *mySex;

@property (weak, nonatomic) IBOutlet UILabel *unitWeight;
@property (weak, nonatomic) IBOutlet UILabel *unitHeight;

@property (weak, nonatomic) IBOutlet UILabel *myAge;

@property (weak, nonatomic) IBOutlet UITextField *TextAge;

@property (weak, nonatomic) IBOutlet UILabel *myResultofBMR;


@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;


@property (weak, nonatomic) IBOutlet UILabel *GainorLoose;

@property (weak, nonatomic) IBOutlet UILabel *Days;

@property (weak, nonatomic) IBOutlet UIImageView *myImage;

@property (weak, nonatomic) NSNumber* units;

@property (weak, nonatomic) IBOutlet UILabel *myCategory;



- (IBAction)myUnits:(id)sender;

- (IBAction)myBMR:(id)sender;


@end

