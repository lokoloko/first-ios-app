//
//  ViewController.m
//  UnitConverter
//
//  Created by richard on 9/23/15.
//  Copyright © 2015 Richard Montoya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;

@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)convertButton:(id)sender {
    NSMutableString *buf = [NSMutableString new];
    
    [buf appendString: @"clicked"];
    
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
