//
//  ViewController.m
//  UnitConverter
//
//  Created by richard on 9/23/15.
//  Copyright © 2015 Richard Montoya. All rights reserved.
//

#import "ViewController.h"


// Miles to Feet Function
double convertUnitOneToUnitTwo (double unitOneValue){
    double unitTwoValue;
    
    unitTwoValue = 5280 * unitOneValue;
    
    return unitTwoValue;
}

// Miles to Inches Function
double convertUnitOneToUnitThree (double unitOneValue){
    double unitThreeValue;
    
    unitThreeValue = 5280 * 12 * unitOneValue;
    
    return unitThreeValue;
}

// Miles to Kilometers Function
double convertUnitOneToUnitFour (double unitOneValue){
    double unitfFourValue;
    
    unitfFourValue = 1.609 * unitOneValue;
    
    return unitfFourValue;
}




@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)convertButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    double userInput = [self.inputField.text doubleValue];
    
    
    if (self.segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        [buf appendString: [@(unitTwoValue) stringValue]];
    }
    
    
    else if (self.segmentController.selectedSegmentIndex == 1){
        double unitThreeValue = convertUnitOneToUnitThree(userInput);
        [buf appendString: [@(unitThreeValue) stringValue]];
    }
    
    
    else {
        double unitFourValue = convertUnitOneToUnitFour(userInput);
        [buf appendString: [@(unitFourValue) stringValue]];
    }

    
    self.outputField.text = buf;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
