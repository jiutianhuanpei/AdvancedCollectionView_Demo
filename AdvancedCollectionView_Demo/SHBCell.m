//
//  SHBCell.m
//  AdvancedCollectionView_Demo
//
//  Created by 沈红榜 on 15/5/5.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SHBCell.h"

@implementation SHBCell {
    UILabel *_label;
    UIView *_lineView;
    UIView *_board;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        _label = [[UILabel alloc] initWithFrame:CGRectZero];
        _label.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_label];
        
        _lineView = [[UIView alloc] initWithFrame:CGRectZero];
        _lineView.backgroundColor = [UIColor blackColor];
        [self addSubview:_lineView];
        
        _board = [[UIView alloc] initWithFrame:CGRectZero];
        _board.backgroundColor = [UIColor grayColor];
        [self addSubview:_board];
    }
    return self;
}

- (CGSize)getSize:(SHBModel *)data {
    _label.text = data.string;
    _label.frame = CGRectMake(0, 0, 100, 50);
    
    _lineView.frame = CGRectMake(0, 49, 100, 1);
    _board.frame = CGRectMake(0, 50, 100, 10);
    
    return CGSizeMake(50, CGRectGetMaxY(_board.frame) + 10);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
