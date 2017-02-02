//
//  ViewController.m
//  Controls
//
//  Created by Vladislav Kalaev on 02.02.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

typedef enum {
    
    colorSchemeTypeRGB, // 0
    colorSchemeTypeHSV // 1
    
} colorSchemeType;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self refreshScrean];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - Private Methods

- (void) refreshScrean {
    
    CGFloat red = self.redSlider.value;
    CGFloat green = self.greenSlider.value;
    CGFloat blue = self.blueSlider.value;
    
    UIColor* color = nil;
    
    if (self.colorControl.selectedSegmentIndex == colorSchemeTypeRGB) {
        color = [UIColor colorWithRed:red green:green blue:blue alpha:1.f];
    } else {
        color = [UIColor colorWithHue:red saturation:green brightness:blue alpha:1.f];
    }
   
    CGFloat hue, saturation, brighthess, alpha;
    
    NSString* result = @"";
    
    if  ([color getRed:&red green:&green blue:&blue alpha:&alpha]) {
        
        result = [result stringByAppendingFormat:@"RGB:{%1.2f, %1.2f, %1.2f}",red, green, blue];
        
    }else {
        result = [result stringByAppendingFormat:@"RGB:{NO DATA}"];
    }
    
    if ([color getHue:&hue saturation:&saturation brightness:&brighthess alpha:&alpha]) {
        
        result = [result stringByAppendingFormat:@"\tHSV:{%1.2f, %1.2f, %1.2f}",hue, saturation, brighthess];
        
    }else {
        result = [result stringByAppendingFormat:@"\tHSV:{NO DATA}"]; // \t пробел
    }
    
    
    
    self.infoLabel.text = result;
    
    
    self.view.backgroundColor = color;
}


# pragma mark - Actions

- (IBAction)actionSlider:(UISlider *)sender {
    
    [self refreshScrean];

}



- (IBAction)actionEnable:(UISwitch *)sender {
    
    self.redSlider.enabled = sender.isOn;
    self.greenSlider.enabled = sender.isOn;
    self.blueSlider.enabled = sender.isOn;

    
}


@end
