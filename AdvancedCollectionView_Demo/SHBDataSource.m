//
//  SHBDataSource.m
//  AdvancedCollectionView_Demo
//
//  Created by 沈红榜 on 15/5/5.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SHBDataSource.h"
#import "SHBCell.h"
#import "SHBModel.h"

@implementation SHBDataSource

- (void)registerReusableViewsWithCollectionView:(UICollectionView *)collectionView {
    [super registerReusableViewsWithCollectionView:collectionView];
    [collectionView registerClass:[SHBCell class] forCellWithReuseIdentifier:NSStringFromClass([SHBCell class])];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    id object = [self itemAtIndexPath:indexPath];
    UICollectionViewCell *cell = nil;
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SHBCell class]) forIndexPath:indexPath];
    [(SHBCell *)cell getSize:object];
    
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView sizeFittingSize:(CGSize)size forItemAtIndexPath:(NSIndexPath *)indexPath {
    id object = [self itemAtIndexPath:indexPath];
    UICollectionViewCell *cell = nil;
    CGSize cSize = CGSizeZero;
    
    cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([SHBCell class]) forIndexPath:indexPath];
    cSize = [(SHBCell *)cell getSize:object];
    
    
    [cell removeFromSuperview];
    return cSize;
}

- (void)loadContent {
    [self loadContentWithBlock:^(AAPLLoading *loading) {
        void(^handle)(NSArray *, NSError *) = ^(NSArray *data, NSError *error) {
            if (!loading.current) {
                [loading ignore];
                return ;
            }
            if (error) {
                [loading doneWithError:error];
                return;
            }
            if (data.count) {
                [loading updateWithContent:^(SHBDataSource *object) {
                    object.items = data;
                }];
            } else {
                [loading updateWithNoContent:^(SHBDataSource *object) {
                    object.items = @[];
                }];
            }
        };

        

        
        
        NSMutableArray *dataArray = [[NSMutableArray alloc] initWithCapacity:0];
        for (int i = 0; i < 20; i++) {
            SHBModel *model1 = [[SHBModel alloc] init];
            model1.string = [NSString stringWithFormat:@"%d", 10 * i];
            [dataArray addObject:model1];
        }
        handle(dataArray, nil);
    }];
}

@end
