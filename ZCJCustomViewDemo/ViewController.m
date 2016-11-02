//
//  ViewController.m
//  ZCJCustomViewDemo
//
//  Created by zhangchaojie on 16/10/31.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "ViewController.h"
#import "CircleImageView.h"
#import "XibCircleImageView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@property (nonatomic, strong) CircleImageView *circleImageView;
@property (nonatomic, strong) XibCircleImageView *xibCircleImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.slider addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    
    //使用纯代码方式创建自定义控件
    UIImage *image = [UIImage imageNamed:@"tree"];
    _circleImageView = [[CircleImageView alloc] initWithFrame:CGRectMake(0, 80, 150, 150)];
    [_circleImageView configeWithImage:image];
    [self.view addSubview:_circleImageView];
    
    //使用xib创建自定义控件
    _xibCircleImageView = [[[NSBundle mainBundle] loadNibNamed:@"XibCircleImageView" owner:nil options:nil] lastObject];
    _xibCircleImageView.frame = CGRectMake(0, 500, 100, 100);
    [_xibCircleImageView configeWithImage:image];
    [self.view addSubview:_xibCircleImageView];
    
}

- (void)valueChanged:(id)sender {
    UISlider *slider = sender;
    //NSLog(@"%f", slider.value);
    
    float value = slider.value * 300;
    CGRect frame = _circleImageView.frame;
    frame.size = CGSizeMake(value, value);
    _circleImageView.frame = frame;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
