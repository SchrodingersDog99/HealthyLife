//
//  GyroscopeCollector.m
//  HealthyLife
//
//  Created by 李书豪 on 10/10/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "GyroscopeCollector.h"

static GyroscopeCollector* secretCollector;

@implementation GyroscopeCollector

@synthesize aMotionManager;
@synthesize returnedGyData;



- (void) startGyroscopeRecording {
    self.returnedGyData = [[CMGyroData alloc] init];
    self.aMotionManager = [[CMMotionManager alloc] init];
    
    NSOperationQueue *theQueue = [[NSOperationQueue alloc] init];
    
    if ([aMotionManager isGyroAvailable]) {
        NSLog(@"HelloGy");
        aMotionManager.gyroUpdateInterval = 1;
        [aMotionManager startGyroUpdatesToQueue:theQueue withHandler:^(CMGyroData *gyroscopeData, NSError *error) {
            self.returnedGyData = self.aMotionManager.gyroData;
            
            int x = self.returnedGyData.rotationRate.x;
            int y = self.returnedGyData.rotationRate.y;
            int z = self.returnedGyData.rotationRate.z;
            
            NSLog(@"Gyro -- X: %d   Y: %d   Z: %d", x, y, z);
        }];
    }
}


+ (GyroscopeCollector*) sharedInstance {
    if (secretCollector == nil) {
        secretCollector = [[GyroscopeCollector alloc] init];
    }
    
    return secretCollector;
    
}


@end
