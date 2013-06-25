//
//  ViewController.m
//  testApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 George Elia. All rights reserved.
//

#import "ViewController.h"
#include "math.h"

@interface ViewController ()

@end

@implementation ViewController
//@synthesize answer;

- (void)viewDidLoad
{
    [super viewDidLoad];
    op = TRUE;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)getNumber:(id)sender{
    //NSLog(@"%ld", (long)op);
    if(op)
    {
        if(dec)
        {
            count++;
            firstNumber = firstNumber+ pow(10, -count)*[sender tag];
            answer.text = [NSString stringWithFormat:@"%5.2f", firstNumber];
        }
        else{
            firstNumber = firstNumber*10 + (float)[sender tag];
            answer.text = [NSString stringWithFormat:@"%3.2f", firstNumber];
        }
    }
    else 
    {
        if(dec)
        {
            count++;
            secondNumber = secondNumber+ pow(10, -count)*[sender tag];
            answer.text = [NSString stringWithFormat:@"%5.2f", secondNumber];
        }
        else
        {
            secondNumber = secondNumber*10+ (float)[sender tag];
            answer.text = [NSString stringWithFormat:@"%3.2f", secondNumber];
        }
    }
    
}
-(IBAction)doMath:(id)sender
{
    switch(operation)
    {
        case 0:
            answer.text = [NSString stringWithFormat:@"%6.2f", (firstNumber + secondNumber)];
            break;
        case 1:
            answer.text = [NSString stringWithFormat:@"%3.2f", (firstNumber - secondNumber)];
            break;
        case 2:
            answer.text = [NSString stringWithFormat:@"%3.2f", (firstNumber * secondNumber)];
            break;
        case 3:
            answer.text = [NSString stringWithFormat:@"%3.2f", (firstNumber / secondNumber)];
            break;
    }
    firstNumber = 0.0;
    secondNumber = 0.0;
    op = TRUE;
    dec = FALSE;
}
-(IBAction)getOperation:(id)sender
{
    operation = [sender tag];
    answer.text = [NSString stringWithFormat:@""];
    op = FALSE;
    count = 0;
    dec = FALSE;
}

-(IBAction)clear:(id)sender
{
    answer.text = [NSString stringWithFormat:@""];
    firstNumber = 0.0;
    secondNumber = 0.0;
    op = TRUE;
    dec = FALSE;
}

-(IBAction)decimal:(id)sender
{
    dec = TRUE;
}
@end
