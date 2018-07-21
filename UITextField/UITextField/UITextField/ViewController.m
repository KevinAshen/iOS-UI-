//
//  ViewController.m
//  UITextField
//
//  Created by 姜凯文 on 2018/7/21.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建一个文本输入对象
    self.textField = [[UITextField alloc] init];
    
    //设定文本输入区的位置
    self.textField.frame = CGRectMake(100, 100, 180, 40);
    
    //设置textField的内容文字
    self.textField.text = @"用户名";
    
    //设置文字的字体大小
    self.textField.font = [UIFont systemFontOfSize:15];
    
    //设置文字的颜色
    self.textField.textColor = [UIColor blackColor];
    
    //设置边框的风格
    //RoundRect：圆角
    //Line：线框
    //Bezel：bezel线框
    //None：无边框
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    //设置模拟键盘风格
    //fault默认风格
    //NamePhonePad字母数字组合风格
    //NumberPad纯数字
    self.textField.keyboardType = UIKeyboardTypeDefault;
    
    //提示文字信息
    //当text属性为空，显示此条信息
    //浅灰色提示文字
    self.textField.placeholder = @"请输入用户名......";
    
    //是否作为密码输入
    //YES作为，圆点处理
    //NO：正常处理
    self.textField.secureTextEntry = YES;
    
    [self.view addSubview:self.textField];
    
    //设置代理对象
    self.textField.delegate = self;
}
- (void) textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑了");
}

- (void) textFieldDidEndEditing:(UITextField *)textField
{
    self.textField.text = @"";
    NSLog(@"编辑即将结束");
}

//是否可以输入
//返回YES可以，为默认
//NO不能输入
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

//是否结束输入
//YES结束，默认
//NO，不能结束
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}
//点击屏幕空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //虚拟键盘回收，不再作为第一消息响应者
    [self.textField resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
