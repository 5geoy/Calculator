//
//  ViewController.h
//  testApp
//
//  Created by iD Student on 6/24/13.
//  Copyright (c) 2013 George Elia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    float firstNumber;
    int operation;
    int count;
    float secondNumber;
    BOOL op;
    BOOL dec;
    /*@property(x, y)*/IBOutlet UITextField *answer;
    
}
-(IBAction)getNumber:(id)sender;
-(IBAction)doMath:(id)sender;
-(IBAction)getOperation:(id)sender;
-(IBAction)clear:(id)sender;
-(IBAction)decimal:(id)sender;
@end
