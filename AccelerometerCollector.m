//
//  CoreMotionCollector.m
//  HealthyLife
//
//  Created by 李书豪 on 10/7/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "AccelerometerCollector.h"
#import <CoreMotion/CoreMotion.h>

static AccelerometerCollector* secretCollector;

@implementation AccelerometerCollector

@synthesize aMotionManager;
@synthesize returnedAccData;


- (void) startAccelerometerRecording {
    self.returnedAccData = [[CMAccelerometerData alloc] init];
    self.aMotionManager = [[CMMotionManager alloc] init];

    NSOperationQueue *theQueue = [[NSOperationQueue alloc] init];
    
    if ([aMotionManager isAccelerometerAvailable]) {
        NSLog(@"HelloAcc");
        aMotionManager.accelerometerUpdateInterval = 1;
        [aMotionManager startAccelerometerUpdatesToQueue:theQueue withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
            self.returnedAccData = self.aMotionManager.accelerometerData;
            
            int x = self.returnedAccData.acceleration.x;
            int y = self.returnedAccData.acceleration.y;
            int z = self.returnedAccData.acceleration.z;
            
            NSLog(@"Acc -- X: %d   Y: %d   Z: %d", x, y, z);
        }];
    }
}



+ (AccelerometerCollector*) sharedInstance {
    if (secretCollector == nil) {
        secretCollector = [[AccelerometerCollector alloc] init];
    }
    
    return secretCollector;

}


@end
