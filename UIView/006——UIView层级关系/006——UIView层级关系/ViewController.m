//
//  ViewController.m
//  006——UIView层级关系
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //创建三个视图对象
    UIView* view01 = [[UIView alloc] init];
    
    view01.frame = CGRectMake(100, 100, 150, 150);
    
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc] init];
    
    view02.frame = CGRectMake(125, 125, 150, 150);
    
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc] init];
    
    view03.frame = CGRectMake(150, 150, 150, 150);
    
    view03.backgroundColor = [UIColor greenColor];
    
    //将三个对象显示到屏幕
    //并且添加到父亲视图上
    //哪一个视图被先添加就先绘制
    [self.view addSubview:view01];
    
    [self.view addSubview:view02];
    
    [self.view addSubview:view03];
    
    //将某一个视图调整到最前面显示
    //参数：UIView对象，调整那一个视图到最前面
    [self.view bringSubviewToFront:view03];
    
    //将某一个视图调整到最后面显示
    //参数：UIView对象，调整那一个视图到最后面
    [self.view sendSubviewToBack:view02];
    
    //subviews管理所有self.view的子视图的数组
    //就是说这里的顺序是按照看上去的顺序，第一个就是最后面的，最后一个就是最上面的
    UIView* viewFront = self.view.subviews[2];
    
    UIView* viewBack = self.view.subviews[0];
    
    if (viewBack == view02) {
        NSLog(@"相等");
    }
    
    [view01 removeFromSuperview];
    //真正删除直接不会相等
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
