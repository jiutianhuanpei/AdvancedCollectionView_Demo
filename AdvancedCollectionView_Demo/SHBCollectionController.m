//
//  SHBCollectionController.m
//  AdvancedCollectionView_Demo
//
//  Created by 沈红榜 on 15/5/5.
//  Copyright (c) 2015年 沈红榜. All rights reserved.
//

#import "SHBCollectionController.h"
#import "SHBDataSource.h"

@interface SHBCollectionController ()

@end

@implementation SHBCollectionController {
    SHBDataSource *_dataSource;
}
- (void)loadView {
    [super loadView];
    _dataSource = [[SHBDataSource alloc] init];
    _dataSource.noContentTitle = @"无内容";
    _dataSource.noContentMessage = @"无数据";
    _dataSource.defaultMetrics.rowHeight = AAPLRowHeightVariable;
    _dataSource.defaultMetrics.numberOfColumns = 3;
    _dataSource.defaultMetrics.separatorColor = [UIColor redColor];
    _dataSource.defaultMetrics.sectionSeparatorColor = [UIColor blackColor];
    
    
    self.collectionView.dataSource = _dataSource;
}

- (void)viewDidLoad {
    self.collectionView.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view.

    
    
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
