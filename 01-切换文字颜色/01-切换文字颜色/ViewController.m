//
//  ViewController.m
//  01-切换文字颜色
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - 红色点击
- (IBAction)redClick
{
    //文本对象，文字颜色 = @“红色”；
    
    NSLog(@"redClick");
}
#pragma mark - 绿色点击
- (IBAction)greenClick
{
    NSLog(@"greenClick");
}
#pragma mark - 蓝色点击
- (IBAction)blueClick
{
    NSLog(@"blueClick");
}
/*
    控制器：凡是继承自UIViewController的对象都是控制器
    作用：用来管理软件界面，负责创建界面，处理软件界面的交互事件
    特点：一个控制器专门管理自己的软件界面
 */

@end
