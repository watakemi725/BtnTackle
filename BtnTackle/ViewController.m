//
//  ViewController.m
//  BtnTackle
//
//  Created by Takemi Watanuki on 2014/11/21.
//  Copyright (c) 2014年 Takemi Watanuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //初期設定の数字
    pushNumStatic = 20 ;
    pushNum = pushNumStatic;
    
    _pushedLabel.text = [NSString stringWithFormat:@"%d",pushNum];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)reload:(id)sender {
    pushNum = pushNumStatic;
    _pushedLabel.text = [NSString stringWithFormat:@"%d",pushNum];
    [self scoreSum];
}

- (IBAction)push:(id)sender {
    
    if (pushNum>0) {
        pushNum=pushNum-1;
        [self scoreSum];
        _pushedLabel.text = [NSString stringWithFormat:@"%d",pushNum];
    }else{
        //ボタンを消そう
    }
    
}

-(void)scoreSum{
    scoreNum++;
    _scoreLabel.text = [NSString stringWithFormat:@"%d",scoreNum];

}


@end
