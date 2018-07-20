//
//  ViewController.m
//  UIViewController使用方法
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

//屏幕被点击时，调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //创建试图控制器二
    ViewController2* vc = [[ViewController2 alloc] init];
    
    //显示一个新的试图控制器到屏幕上
    //p1:新的视图控制器对象
    //p2:使用动画切换效果
    //p3:切换结束后功能调用，不需要穿nil值即可
    [self presentViewController:vc animated:YES completion:nil];
}

//第一次程序加载视图时调用
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor blueColor];
    
    NSLog(@"viewDidLoad!第一次加载视图");
    
}

//当视图控制器的视图即将显示时，调用此函数
//视图分为：1.显示前（不显示）2.正在显示状态 3.已经被隐藏
//参数：表示是否用动画切换后显示
//每一次视图显示时，都要被调用
- (void) viewWillAppear:(BOOL)animated
{
    NSLog(@"viewWillAppear，视图即将显示");
}



//当视图已经显示到屏幕后的瞬间调用此函数
//参数：表示是否用动画切换显示
//当前状态已经显示到屏幕上了
- (void) viewDidAppear:(BOOL)animated
{
    NSLog(@"视图已经显示！");
}

//视图即将消失，调用此函数
//参数：表示是否用动画切换后消失
//当前的状态：视图还是在屏幕上的
- (void) viewWillDisappear:(BOOL)animated
{
    NSLog(@"视图即将消失！");
}

//当视图已经消失从屏幕上
//参数：表示是否用动画切换显示
//当前状态当前视图控制器已经消失从屏幕上
- (void) viewDidDisappear:(BOOL)animated
{
    NSLog(@"视图已经消失！");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
