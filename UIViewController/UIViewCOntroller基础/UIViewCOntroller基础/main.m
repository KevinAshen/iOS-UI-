//
//  main.m
//  UIViewCOntroller基础
//
//  Created by 姜凯文 on 2018/7/20.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

//整个APP程序的主函数吗，入口函数
int main(int argc, char * argv[]) {
    //自动释放内存池
    @autoreleasepool {
        //UIKit框架结构的启动函数
        //P1:argc，启动时带有参数的个数
        //P2：argv，参数列表
        //P3：要求传入一个主框架类类名，如果参数为nil，系统会自动用默认的框架类做主框架类名
        //P4:主框架的代理类对象名字
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
