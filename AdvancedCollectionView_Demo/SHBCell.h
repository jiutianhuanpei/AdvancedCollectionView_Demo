//
//  SHBCell.h
//  AdvancedCollectionView_Demo
//
//  Created by 沈红榜 on 15/5/5.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "AAPLCollectionViewCell.h"
#import "SHBModel.h"

@interface SHBCell : AAPLCollectionViewCell

- (CGSize)getSize:(SHBModel *)data;

@end
