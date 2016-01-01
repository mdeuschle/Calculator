//
//  ViewController.m
//  Calculator
//
//  Created by Matt Deuschle on 11/18/15.
//  Copyright © 2015 Matt Deuschle. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonDigitPressed:(UIButton *)sender {

    // get current number to equal current text
    // if you keep pressing "1", it will keep adding "1" (up to 10), rather than just replace
    currentNumber = currentNumber *10 + (float)[sender tag];
    self.label.text = [NSString stringWithFormat:@"%2.0f", currentNumber];
}

- (IBAction)buttonOperationPressed:(UIButton *)sender {

    if (currentOperation == 0) result = currentNumber;
    else {
        switch (currentOperation) {
            case 1:
                result = result + currentNumber;
                break;
            case 2:
                result = result - currentNumber;
                break;
            case 3:
                result = result * currentNumber;
                break;
            case 4:
                result = result / currentNumber;
                break;

            default:
                break;
        }
    }

    currentNumber = 0;
    self.label.text = [NSString stringWithFormat:@"%2.0f", result];
    if ([sender tag] == 0) result = 0; {
        currentOperation = (int)[sender tag];
    }
}

- (IBAction)cancelButtonPressed:(UIButton *)sender {
    currentNumber = 0;
    self.label.text = @"0";
}



@end
