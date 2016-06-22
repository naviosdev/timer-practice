//
//  ViewController.h
//  practice-dates
//
//  Created by Naveed Ahmed on 07/03/2016.
//  Copyright (c) 2016 Naveed Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    
    
    bool running;
    NSTimeInterval startTime;
    
}


@property(weak, nonatomic) IBOutlet UILabel *label;



- (IBAction)on:(id)sender;



@end

