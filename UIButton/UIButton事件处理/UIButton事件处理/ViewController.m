//
//  ViewController.m
//  UIButton事件处理
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) createBtn
{
    //
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    UIButton* btn3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.tag = 100;
    btn2.tag = 101;
    btn3.tag = 102;
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    
    btn2.frame = CGRectMake(100, 140, 80, 40);
    
    [btn2 setTitle:@"按钮2" forState:UIControlStateNormal];
    
    btn3.frame = CGRectMake(100, 180, 80, 40);
    
    [btn3 setTitle:@"按钮3" forState:UIControlStateNormal];
    //向按钮添加事件函数
    //P1:谁来实现那个事件函数，实现对象就是谁
    //P2:@selector（pressBtn）：函数对象，当按钮满足P3事件类型，调用函数
    //P3:UIControlEvent：事件处理函数类型
    //UIControlEventTouchUpInside当手指离开屏幕时并且手指的位置在按钮范围内触发事件函数
    //UIControlEventTouchUpOutside当手指离开屏幕时并且手指的位置在按钮范围外触发事件函数
    //UIControlEventTouchDown当手指触碰到屏幕时并且手指的位置在按钮范围内触发事件函数
    [btn addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchUpInside];
    [btn2 addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchUpOutside];
    [btn3 addTarget:self action:@selector(pressBtn1:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:btn];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
}
- (void) pressBtn1:(UIButton*) btn
{
    if (btn.tag == 100)
    {
         NSLog(@"按钮被按下1");
    }
    if (btn.tag == 101)
    {
        NSLog(@"按钮被按下2");
    }
    if (btn.tag == 102)
    {
        NSLog(@"按钮被按下3");
    }
}
- (void) pressBtn2
{
    NSLog(@"按钮被按下2");
}
- (void) pressBtn3
{
    NSLog(@"按钮被按下3");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self createBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
