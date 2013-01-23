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
    //The add function being called.
    [self add:10 secondInt:22];
    
    //The compare function being called.
    [self compare:12 thatInt:4];
    
    //The append function being called.
    [self append:@"This is string 1" secondString:@"This is string 2" ];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Function add
-(void)add:(int)firstInt secondInt:(int)secondInt
{
    int total = (firstInt) + (secondInt);
    
    NSLog(@"%d", total);
    
    return;
    
}
//Function compare
-(void)compare:(int)thisInt thatInt:(int)thatInt;
{
    BOOL isTrue = (thisInt == thatInt);
    if(isTrue){
        
        NSLog(@"YES");
        return;
    }
    
    BOOL isFalse = (thisInt > thatInt);
    if(isFalse){
        
        NSLog(@"NO");
        return;
    }
    
}
//Function append
-(void)append:(NSString*)firstString secondString:(NSString*)secondString;
{
    NSMutableString *mutableString1 = [[NSMutableString alloc] initWithFormat:@"%@", firstString];
    NSMutableString *mutableString2 = [[NSMutableString alloc] initWithFormat:@"%@", secondString];
    
    NSLog(@"%@ and %@", mutableString1, mutableString2);
}
@end
