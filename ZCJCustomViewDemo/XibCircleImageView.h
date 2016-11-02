//
//  XibCircleImageView.h
//  ZCJCustomViewDemo
//
//  Created by zhangchaojie on 16/10/31.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XibCircleImageView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (void)configeWithImage:(UIImage *)image;

@end
