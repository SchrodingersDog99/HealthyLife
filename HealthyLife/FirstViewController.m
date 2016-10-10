//
//  FirstViewController.m
//  HealthyLife
//
//  Created by 李书豪 on 10/1/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "FirstViewController.h"
#import "AccelerometerCollector.h"
#import "GyroscopeCollector.h"
#import "MagnetometerCollector.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

//@synthesize textValue;

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.title = @"软件介绍";
    self.softwareIntro.editable = NO;
    AccelerometerCollector* aAccCollector = [AccelerometerCollector sharedInstance];
    [aAccCollector startAccelerometerRecording];
    
    GyroscopeCollector* aGyroCollector = [GyroscopeCollector sharedInstance];
    [aGyroCollector startGyroscopeRecording];
    
    MagnetometerCollector* aMagCollector = [MagnetometerCollector sharedInstance];
    [aMagCollector startMagnetometerRecording];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
