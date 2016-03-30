//
//  UpdateAlertDelegate.h
//  demoDelegate2
//
//  Created by YJ on 16/3/28.
//  Copyright © 2016年 YJ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
//协议定义
@protocol UpdateAlertDelegate <NSObject>

-(void)updateAlert:(NSTimer *)timer;

@end
@interface TimerControl : NSObject
//遵循协议的一个代理变量定义
@property (nonatomic,weak) id <UpdateAlertDelegate>delegate;
-(void)startTheTimer;
@end
