//
//  ViewController.h
//  proj3
//
//  Created by Devona Ward on 1/23/13.
//  Copyright (c) 2013 Devona Ward. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
}

int adder(int x, int y);
BOOL compare(int a, int b);
-(NSString*)append:(NSString*)firstString secondString:(NSString*)secondString;
-(UIAlertView*)DisplayAlertWithString:(NSString*)oneString;
@end
