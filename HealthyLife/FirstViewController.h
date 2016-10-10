//
//  FirstViewController.h
//  HealthyLife
//
//  Created by 李书豪 on 10/1/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AccelerometerCollector.h"
#import "GyroscopeCollector.h"
#import "MagnetometerCollector.h"

@interface FirstViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *softwareIntro;
//@property (strong, nonatomic) NSNumber *textValue;

@end

