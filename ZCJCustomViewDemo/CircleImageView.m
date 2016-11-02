//
//  CircleImageView.m
//  ZCJCustomViewDemo
//
//  Created by zhangchaojie on 16/10/31.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "CircleImageView.h"

@interface CircleImageView()

@property (nonatomic, strong)UIImageView *imageView;

@end

@implementation CircleImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.layer.masksToBounds = YES;
        _imageView.layer.cornerRadius = frame.size.width/2;
        [self addSubview:_imageView];
    }
    return self;
}


- (void)configeWithImage:(UIImage *)image {
    _imageView.image = image;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    _imageView.frame = self.frame;
    _imageView.layer.cornerRadius = self.frame.size.width/2;
    
}
@end
