//
//  ViewController.m
//  UnitConverter
//
//  Created by Екатерина Краснова on 30.11.15.
//  Copyright © 2015 Kate Krasnova. All rights reserved.
//

#import "ViewController.h"

double convertKilometersToMiles(double unitInKilometers) {
    double unitInMiles;
    unitInMiles = 0.62 * unitInKilometers;
    return unitInMiles;
}

double convertKilometersToYards(double unitInKilometers) {
    double unitInYards;
    unitInYards = 1093.61 * unitInKilometers;
    return unitInYards;
}

double convertKilometersInFeet(double unitInKilometers) {
    double unitInFeet;
    unitInFeet = 3280.84 * unitInKilometers;
    return unitInFeet;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *outputField;

@end

@implementation ViewController

- (IBAction)updateButton:(id)sender {
    
    NSMutableString *buf = [NSMutableString new];
    double userInput = [self.inputField.text doubleValue];
    
    if (self.segmentController.selectedSegmentIndex == 0) {
        double unitInMiles = convertKilometersToMiles(userInput);
        [buf appendString:[@(unitInMiles) stringValue]];
    }
    else if (self.segmentController.selectedSegmentIndex == 1) {
        double unitInYards = convertKilometersToYards(userInput);
        [buf appendString:[@(unitInYards) stringValue]];
    }
    else {
        double unitInFeet = convertKilometersInFeet(userInput);
        [buf appendString:[@(unitInFeet) stringValue]];
    }
    self.outputField.text = buf;
    [self.view endEditing:YES];
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
