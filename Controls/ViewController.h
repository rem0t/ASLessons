//
//  ViewController.h
//  Controls
//
//  Created by Vladislav Kalaev on 02.02.17.
//  Copyright © 2017 Vladislav Kalaev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)actionSlider:(UISlider *)sender;
- (IBAction)actionEnable:(UISwitch *)sender;

@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorControl;

@end

