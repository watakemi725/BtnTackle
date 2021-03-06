//
//  ViewController.h
//  BtnTackle
//
//  Created by Takemi Watanuki on 2014/11/21.
//  Copyright (c) 2014年 Takemi Watanuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    int timerNum;
    int scoreNum;
    int pushNum;
    int pushNumStatic;
    NSTimer *timer;
    
}



@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *pushedLabel;

- (IBAction)reload:(id)sender;
- (IBAction)push:(id)sender;

@end

