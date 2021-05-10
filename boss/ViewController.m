//
//  ViewController.m
//  boss
//
//  Created by dzc on 2021/5/10.
//

#import "ViewController.h"
#import "file.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@,---%@",http,NSStringFromClass([self class]));

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame =  CGRectMake(100, 100, 100, 50);
    [btn setTitle:@"点击了" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn222 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn222.frame =  CGRectMake(100, 350, 100, 50);
    [btn222 setTitle:@"点击了222" forState:UIControlStateNormal];
    [btn222 setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn222 addTarget:self action:@selector(click222) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn222];
}
- (void)click{
    NSLog(@"点击了");
}
- (void)click222{
    NSLog(@"点击了22222");
}
@end
