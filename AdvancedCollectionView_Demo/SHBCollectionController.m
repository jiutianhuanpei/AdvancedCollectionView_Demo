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
    
    //defaultMetrics 的属性
    /**
     *
     
     行高
     @property (nonatomic) CGFloat rowHeight;
     
     
     列数
     @property (nonatomic) NSInteger numberOfColumns;
     
     /// Padding around the cells for this section. The top & bottom padding will be applied between the headers & footers and the cells. The left & right padding will be applied between the view edges and the cells.
     
     cell上左下右的边距
     @property (nonatomic) UIEdgeInsets padding;
     
     /// Should a column separator be drawn. Default is YES.
     
     是否显示列分隔线
     @property (nonatomic) BOOL showsColumnSeparator;
     
     上左下右的边距
     @property (nonatomic) UIEdgeInsets separatorInsets;
     
     
     @property (nonatomic) UIEdgeInsets sectionSeparatorInsets;
     
     
     @property (nonatomic, strong) UIColor *backgroundColor;
     
     
     @property (nonatomic, strong) UIColor *selectedBackgroundColor;
     
     
     @property (nonatomic, strong) UIColor *separatorColor;
     
     
     @property (nonatomic, strong) UIColor *sectionSeparatorColor;
     
     Default is NO.
     @property (nonatomic) BOOL showsSectionSeparatorWhenLastSection;
     
     /// How the cells should be laid out when there are multiple columns. The current default is AAPLCellLayoutOrderLeftToRight, but it SHOULD be AAPLCellLayoutLeadingToTrailing.
     @property (nonatomic) AAPLCellLayoutOrder cellLayoutOrder;
     */
    
    
    _dataSource.defaultMetrics.rowHeight = AAPLRowHeightVariable;
    
    // 列数
    _dataSource.defaultMetrics.numberOfColumns = 3;
    
    //cell之间分隔线(横 竖)
    _dataSource.defaultMetrics.separatorColor = [UIColor redColor];
    
    //分区之间分隔线
    _dataSource.defaultMetrics.sectionSeparatorColor = [UIColor blackColor];
    
    // 分隔线的...
    _dataSource.defaultMetrics.separatorInsets = UIEdgeInsetsMake(30, 30, 40, 30);
    
    //分区的....
    _dataSource.defaultMetrics.sectionSeparatorInsets = UIEdgeInsetsMake(30, 30, 40, 30);
    
    
    // 选中时 背景色
    _dataSource.defaultMetrics.selectedBackgroundColor = [UIColor redColor];
    
    
    _dataSource.defaultMetrics.showsSectionSeparatorWhenLastSection = YES;
    
    // 每个分区的...
    _dataSource.defaultMetrics.padding = UIEdgeInsetsMake(20, 20, 20, 20);
    
//    _dataSource.defaultMetrics.cellLayoutOrder = AAPLCellLayoutOrderRightToLeft;
    
    
    
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
