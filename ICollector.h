//
//  ICollector.h
//  HealthyLife
//
//  Created by 李书豪 on 10/7/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ICollector <NSObject>

@required

- (void) startCollect;
- (void) stopCollect;

@end
