//
//  ViewController.m
//  projectThree
//
//  Created by Devona Ward on 1/22/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [self add:3 secondInt:6];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)add:(NSInteger*)firstInt secondInt:(NSInteger*)secondInt
{
    int total = [firstInt] + [9];
}

@end
