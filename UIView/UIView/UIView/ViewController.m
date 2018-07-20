//
//  ViewController.m
//  UIView
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
    
    //创建一个UIView对象
    //UIView时iOS视图对象
    //显示在屏幕上的所有对象的基础类
    //所有显示在屏幕上的对象一定都继承于UIView
    //屏幕上能看到的对象都是UIView的子类
    //UIView是一个矩形对象，有背景颜色，可以显示，有层级关系
    UIView* view = [[UIView alloc] init];
    
    //设置UIView的位置
    view.frame = CGRectMake(100, 100, 100, 200);
    
    view.backgroundColor = [UIColor greenColor];
    
    //将我们新建的试图添加到父亲视图上
    //1.将我们新建的视图显示到屏幕上
    //2.将视图作为父亲视图的子视图管理起来
    [self.view addSubview:view];
    
    //是否隐藏视图对象
    //YES:不显示
    //NO:显示， 默认NO
    view.hidden = NO;
    
    //设置视图的透明度
    //alpha = 1：不透明
    //a = 0: 透明
    //alpha = 0.5 半透明
    view.alpha = 0.5;
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //设置时都显示不透明
    view.opaque = YES;
    
    //将自己从父亲视图删除
    //1.从父亲视图的管理删除掉
    //2.不会显示在屏幕上
    [view removeFromSuperview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
