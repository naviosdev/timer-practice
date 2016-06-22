//
//  ViewController.m
//  practice-dates
//
//  Created by Naveed Ahmed on 07/03/2016.
//  Copyright (c) 2016 Naveed Ahmed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize label;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    label.text = @"0.00.0";
    running = false;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)on:(id)sender {
    
    
    if (running == false) {
        
        //start timer
        running = true;
        startTime = [NSDate timeIntervalSinceReferenceDate];
        //[sender setTitle:@"Stop" forState:UIControlStateNormal];
        [self updateTime];
        
        
        
    } else {
        //stop timer
        running = false;
        //[sender setTitle:@"Start" forState:UIControlStateNormal];
        
    }
    
    
}




-(void)updateTime {
    
    if (running == false) return;
    
    
    //calucate elapsed time
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    NSTimeInterval elapsed = currentTime - startTime;
    
    
    int mins = (int)(elapsed / 60.0);
    elapsed -= mins * 60;
    int secs = (int)(elapsed);
    elapsed -= secs;
    int fraction = elapsed * 10.0;
    
    
    label.text = [NSString stringWithFormat:@"%d:%d:%d",mins,secs,fraction];
    
    [self performSelector:@selector(updateTime) withObject:self afterDelay:0.1];
    
    
    
    
}










@end
