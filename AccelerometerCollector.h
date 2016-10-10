//
//  CoreMotionCollector.h
//  HealthyLife
//
//  Created by 李书豪 on 10/7/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreMotion/CoreMotion.h>
#import "ICollector.h"


@interface AccelerometerCollector : NSObject

@property (strong, nonatomic) CMMotionManager* aMotionManager;
@property (strong, nonatomic) CMAccelerometerData* returnedAccData;

+ (AccelerometerCollector*) sharedInstance;
- (void) startAccelerometerRecording;

@end
