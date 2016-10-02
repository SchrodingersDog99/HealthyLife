//
//  SecondViewController.h
//  HealthyLife
//
//  Created by 李书豪 on 10/1/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MoodIndex.h"

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *happyIndex;

@property (weak, nonatomic) IBOutlet UISegmentedControl *sadIndex;

@property (weak, nonatomic) IBOutlet UISegmentedControl *angerIndex;

@property (weak, nonatomic) IBOutlet UISegmentedControl *surpriseIndex;

@property (weak, nonatomic) IBOutlet UISegmentedControl *fearIndex;

@property (weak, nonatomic) IBOutlet UISegmentedControl *disgustIndex;

@property (strong, nonatomic) NSMutableArray* moodList;

- (IBAction)submitButton:(UIButton *)sender;

@end

