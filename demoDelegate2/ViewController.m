//
//  ViewController.m
//  demoDelegate2
//
//  Created by YJ on 16/3/28.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *click;
@property (strong, nonatomic) IBOutlet UILabel *showInfo;

@end

@implementation ViewController

int secondsCountDown=60; //倒计时总时长
NSTimer *countDownTimer;
- (void)viewDidLoad {
    [super viewDidLoad];
    self.showInfo.text=[NSString stringWithFormat:@"%d",secondsCountDown];;
    [self.click addTarget:self action:@selector(initTimer) forControlEvents:UIControlEventTouchDown];
}
-(void)timeFireMethod{
    secondsCountDown--;
    self.showInfo.text=[NSString stringWithFormat:@"%d",secondsCountDown];
    if(secondsCountDown==0){
        [countDownTimer invalidate];
    }
}
-(void)initTimer
{
    TimerControl *timer =[[TimerControl alloc]init];
    timer.delegate =self;
    [timer startTheTimer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)updateAlert:(NSTimer *) timer{
    //倒计时-1
    secondsCountDown--;
    //修改倒计时标签现实内容
    NSLog(@"%d",secondsCountDown);
    self.showInfo.text=[NSString stringWithFormat:@"%d",secondsCountDown];
    //当倒计时到0时，做需要的操作，比如验证码过期不能提交
    if(secondsCountDown==0){
        [timer invalidate];
    }
}
@end
