//
//  UpdateAlertDelegate.m
//  demoDelegate2
//
//  Created by YJ on 16/3/28.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import "TimerControl.h"

@implementation TimerControl
NSTimer *timer=nil;
-(void)startTheTimer
{
    timer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerPro) userInfo:nil repeats:true];
    NSLog(@"%@",timer);
    // 如果不添加下面这条语句，在UITableView拖动的时候，会阻塞定时器的调用
    //[[NSRunLoop currentRunLoop] addTimer:timer forMode:UITrackingRunLoopMode];
}
-(void)timerPro{
    [self.delegate updateAlert:timer];
     NSLog(@"%@",timer);
}
@end
