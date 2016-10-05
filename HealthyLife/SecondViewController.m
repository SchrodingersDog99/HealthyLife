//
//  SecondViewController.m
//  HealthyLife
//
//  Created by 李书豪 on 10/1/16.
//  Copyright © 2016 SchrodingersDog. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "MoodIndex.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize moodList;

- (SecondViewController*) initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        NSString* archive = [NSString stringWithFormat:@"%@/Documents/MoodArchive", NSHomeDirectory()];
        if ([[NSFileManager defaultManager] fileExistsAtPath:archive]) {
            self.moodList = [NSKeyedUnarchiver unarchiveObjectWithFile:archive];
        }
        else {
            self.moodList = [[NSMutableArray alloc] init];
        }
    }
    if (self.moodList == nil) self.moodList = [[NSMutableArray alloc] init];
    

    return self;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    //self.title = @"情绪提交";
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

    MoodIndex *aMoodIndex = [[MoodIndex alloc] initWithDate:[NSDate date]];
    aMoodIndex.happiness = @(self.happyIndex.selectedSegmentIndex);
    aMoodIndex.sadness = @(self.sadIndex.selectedSegmentIndex);
    aMoodIndex.anger = @(self.angerIndex.selectedSegmentIndex);
    aMoodIndex.surprise = @(self.surpriseIndex.selectedSegmentIndex);
    aMoodIndex.fear = @(self.fearIndex.selectedSegmentIndex);
    aMoodIndex.disgust = @(self.disgustIndex.selectedSegmentIndex);
    
    [self.moodList addObject: aMoodIndex];
   
    NSDate *newdate = [newdate initWithTimeInterval:5*60*60 sinceDate:[self.moodList objectAtIndex:([self.moodList count] - 1)]];
    NSLog(@"zzz");
    
    
    if ([newdate compare: aMoodIndex.date] == NSOrderedDescending)  NSLog(@"5 hour");
    else {
        NSFileManager* aFileManager = [[NSFileManager alloc] init];
        [aFileManager createFileAtPath:aMoodIndex.path contents:[[aMoodIndex description] dataUsingEncoding:NSUTF8StringEncoding] attributes:nil];
    
        NSString* archive = [NSString stringWithFormat:@"%@/Documents/MoodArchive", NSHomeDirectory()];
        [NSKeyedArchiver archiveRootObject: self.moodList toFile:archive];   //???
    }
}
@end
