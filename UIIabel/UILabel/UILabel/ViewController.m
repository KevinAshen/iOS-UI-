//
//  ViewController.m
//  UILabel
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void) createUI
{
    //定义并且创建一个UILabel对象
    //UILabel是可以显示在屏幕上，并且可以显示文字的一种UI视图
    UILabel* label = [[UILabel alloc] init];
    UILabel* label1 = [[UILabel alloc] init];
    //进行换行需要下面两行代码
    //使用这两行代码后可以自动换行，但是手动输入“\n”依然有效
    //文字不会超出给定范围，如果是长度不够会显示省略号，如果是宽度不够会直接不显示
    //label.lineBreakMode = NSLineBreakByWordWrapping;
    //label.numberOfLines = 0;    //显示行数，为0表示多行，不写默认1行
    //显示文字的赋值，字符串对象
    //打不出来的字会用省略号显示
    label.text = @"Hello World!";
    label1.text = @"Hello World!";
    //设定label的显示位置
    //4个参数分别是左上角的x， y坐标以及长，宽
    //两个label的测试可以看出长宽影响的是区域大小而不是文字大小
    label.frame = CGRectMake(100, 100, 160, 40);
    label1.frame = CGRectMake(200, 200, 200, 90);
    
    //设置label字体大小，使用系统默认字体，大小为12
    label.font = [UIFont systemFontOfSize:18];
    
    //设置文字的颜色
    label.textColor = [UIColor brownColor];
    
    //设置label的背景颜色
    label.backgroundColor = [UIColor blueColor];   //完全透明
    label1.backgroundColor = [UIColor redColor];
    
    //self.view.backgroundColor = [UIColor grayColor];
    
    //将label显示到屏幕上
    [self.view addSubview:label];
    //[self.view addSubview:label1];
    
    //label的高级属性
    //设定阴影的颜色
    label.shadowColor = [UIColor grayColor];
    //设置阴影的偏移量
    label.shadowOffset = CGSizeMake(3, 3);  //也是x， y坐标
    
    //设置text文字的对其模式，默认为靠左对齐
    label.textAlignment = NSTextAlignmentCenter;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //调用创建UI函数
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
