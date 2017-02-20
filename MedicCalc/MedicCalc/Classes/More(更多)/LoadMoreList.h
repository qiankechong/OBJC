//
//  LoadMoreList.h
//  MedicCalc
//
//  Created by Jonnyqian on 2017/2/16.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LoadMoreList : NSObject

@property (nonatomic, assign) BOOL isUsed;  //  当前分组是否在用
@property (nonatomic, copy) NSString *headerDes;    //  sectionheader描述文字
@property (nonatomic, copy) NSString *footerDes;    //  sectionfooter描述文字
@property (nonatomic, strong) NSMutableArray *itemArray;    //  每组的item数组<CSPlistItemModel>

@property (nonatomic ,strong)NSArray *arryMorelist;
@property (nonatomic,strong)NSArray *items;


/**
 *省份名字,这里的省份的名字一定要和数据中的名字一致,因下面写入键值的时候是和数据中的一致的,这个地方如果不一直就会导致找不到减值的情况,在加载数据的时候就会导致程序崩溃
 */
@property(nonatomic,copy)NSString *name;

/**
 *城市数组的NSString泛型
 */
@property(nonatomic,strong)NSArray <NSString *> *cities;

//模型构造函数
//+ (NSMutableArray)nameWithArray:(NSString *)plistName;
//
//+ (instancetype)nameWithArray:(NSArray *)arry;
//
- (instancetype)initWithArray:(NSArray *)arry;

+(instancetype)groups:(NSArray * )items;
@end
