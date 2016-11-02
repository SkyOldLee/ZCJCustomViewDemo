//
//  XibCircleImageView.m
//  ZCJCustomViewDemo
//
//  Created by zhangchaojie on 16/10/31.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "XibCircleImageView.h"

@implementation XibCircleImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)awakeFromNib {
    [super awakeFromNib];
    
    _imageView.layer.masksToBounds = YES;
    _imageView.layer.cornerRadius = self.frame.size.width/2;
    [self addSubview:_imageView];
}

- (void)configeWithImage:(UIImage *)image {
    _imageView.image = image;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    _imageView.layer.cornerRadius = self.frame.size.width/2;
    
}
@end
