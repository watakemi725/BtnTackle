//
//  ViewController.m
//  BtnTackle
//
//  Created by Takemi Watanuki on 2014/11/21.
//  Copyright (c) 2014年 Takemi Watanuki. All rights reserved.
//

#import "ViewController.h"
#import "ScoreViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //初期設定の数字
    timerNum = 10 ;
    pushNumStatic = 20 ;
    pushNum = pushNumStatic;
    
    _pushedLabel.text = [NSString stringWithFormat:@"%d",pushNum];
    
    
    
    //カウントダウンタイマーの開始 (http://qiita.com/09dasan/items/748f901ed1c730d9abb2 )
    timer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                             target:self
                                           selector:@selector(time:)
                                           userInfo:nil
                                            repeats:YES];
    
}

-(void)time:(NSTimer*)time{
    
    NSString *homo = @"ぬっきーはホモ";
    NSLog(@"%@",homo);
    
    if ([timer isValid]) {
        if (timerNum>0) {
            timerNum--;
            _timeLabel.text = [NSString stringWithFormat:@"%d",timerNum];
        }else{
            //タイマーを止める
            [timer invalidate];
            //画面遷移させる
            [self performSegueWithIdentifier:@"score" sender:self];

        }
        
    }

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //2つ目の画面にパラメータを渡して遷移する
    if ([segue.identifier isEqualToString:@"secondSegue"]) {
        //ここでパラメータを渡す
//        ScoreViewController *secondViewController = segue.destinationViewController;
//        ScoreViewController. = _arguments;
    }
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
