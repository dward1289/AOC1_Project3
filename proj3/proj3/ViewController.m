//
//  ViewController.m
//  proj3
//
//  Created by Devona Ward on 1/23/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    //Adder function called
    int val1 = 4;
    int val2 = 3;
    NSLog(@"%i",adder(val1, val2));
    
    //Adder capured
    int addCap = adder(10, 22);
    //Adder converted to number
    NSNumber *theNumber = [NSNumber numberWithInt:addCap];
    //Adder number converted to string
    NSString *theString = [NSString stringWithFormat:@"The number is %@", theNumber];
    //Adder string in DisplayAlertFunction
    [self DisplayAlertWithString:theString];
    
    //Bool function called
    int num1 = 12;
    int num2 = 12;
    NSLog(@"%i", compare(num1, num2));
    
    //Bool function called with UIAlertView
    if (compare(num1, num2)== YES)
    {
        NSString *compareString = [NSString stringWithFormat:@"%i compared to %i = %i which means they are equal.", num1, num2, compare(num1, num2)];
        [self DisplayAlertWithString:compareString];
                                                                                                        
    }
    else
    {
        [self DisplayAlertWithString:@"The two integer values are not equal."];
    }
    
    //Append function called and captured
    NSString *strings = [self append:@"This is string 1" secondString:@"This is string 2" ];
    //Append function displayed in alert.
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Append Working" message: strings delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if (alertView !=nil)
    {
        [alertView show];
    }
    
    //NSString shown in DisplayAlertWithString function
    [self DisplayAlertWithString:@"This is my string in the DisplayAlertWithStringFunction"];
    
    //UIAlertView
    UIAlertView *anotherAlert = [[UIAlertView alloc] initWithTitle:@"UIAlertView" message:@"Here's another alert." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    if (anotherAlert !=nil)
    {
        [anotherAlert show];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Adder function
int adder(int x, int y)
{
    return x + y;
}

//Bool function
BOOL compare(int a, int b)
{
    
    if(a == b)
    {
        
        return YES;
    }
    else
    {
        return NO;
    }
}

//Append function
-(NSString*)append:(NSString*)firstString secondString:(NSString*)secondString
{
    
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:[NSString stringWithFormat: @"%@ and %@",firstString,secondString]];
    return mutableString;
}

//DisplayAlertWithString function
-(UIAlertView*)DisplayAlertWithString:(NSString*)oneString
{
     UIAlertView *alertView2 = [[UIAlertView alloc] initWithTitle:@"DisplayAlertWithString" message: oneString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    if (alertView2 !=nil)
    {
        [alertView2 show];
    }
    return alertView2;
}
@end
