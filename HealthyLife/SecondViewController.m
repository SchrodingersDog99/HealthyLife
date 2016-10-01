//
//  SecondViewController.m
//  HealthyLife
//
//  Created by 李书豪 on 10/1/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"情绪提交";
    [self.happyIndex setTitle:@"无" forSegmentAtIndex: 0];
    [self.happyIndex setTitle:@"低" forSegmentAtIndex: 1];
    [self.happyIndex insertSegmentWithTitle:@"中" atIndex:2 animated:NO];
    [self.happyIndex insertSegmentWithTitle:@"高" atIndex:3 animated:NO];

    [self.sadIndex setTitle:@"无" forSegmentAtIndex: 0];
    [self.sadIndex setTitle:@"低" forSegmentAtIndex: 1];
    [self.sadIndex insertSegmentWithTitle:@"中" atIndex:2 animated:NO];
    [self.sadIndex insertSegmentWithTitle:@"高" atIndex:3 animated:NO];
    
    [self.angerIndex setTitle:@"无" forSegmentAtIndex: 0];
    [self.angerIndex setTitle:@"低" forSegmentAtIndex: 1];
    [self.angerIndex insertSegmentWithTitle:@"中" atIndex:2 animated:NO];
    [self.angerIndex insertSegmentWithTitle:@"高" atIndex:3 animated:NO];
    
    [self.surpriseIndex setTitle:@"无" forSegmentAtIndex: 0];
    [self.surpriseIndex setTitle:@"低" forSegmentAtIndex: 1];
    [self.surpriseIndex insertSegmentWithTitle:@"中" atIndex:2 animated:NO];
    [self.surpriseIndex insertSegmentWithTitle:@"高" atIndex:3 animated:NO];
    
    [self.fearIndex setTitle:@"无" forSegmentAtIndex: 0];
    [self.fearIndex setTitle:@"低" forSegmentAtIndex: 1];
    [self.fearIndex insertSegmentWithTitle:@"中" atIndex:2 animated:NO];
    [self.fearIndex insertSegmentWithTitle:@"高" atIndex:3 animated:NO];
    
    [self.disgustIndex setTitle:@"无" forSegmentAtIndex: 0];
    [self.disgustIndex setTitle:@"低" forSegmentAtIndex: 1];
    [self.disgustIndex insertSegmentWithTitle:@"中" atIndex:2 animated:NO];
    [self.disgustIndex insertSegmentWithTitle:@"高" atIndex:3 animated:NO];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)submitButton:(UIButton *)sender {
    NSLog(@"Button Pressed!");
}
@end
