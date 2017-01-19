//
//  ViewController.m
//  SingerBrowser
//
//  Created by Jonnyqian on 2017/1/18.
//  Copyright © 2017年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"
#import "JgSingerModel.h"



//1,dictionary to model

//2,懒加载


@interface ViewController ()
@property (nonatomic ,strong)NSArray *appList;
//保存从list中读出的数据到array中
@property (nonatomic ,strong)NSMutableArray *arrayList;
//显示歌手名字
@property(nonatomic,strong)UILabel * titleL;

//显示唱片封面
@property(nonatomic,strong)UIImageView   * imagSong;


//显示上一张按钮
@property(nonatomic,strong)UIButton   * buttonBack;


//显示下一张按钮
@property(nonatomic,strong)UIButton   * buttonNext;

// 当前是那一张
@property(nonatomic,assign)int iIndex;

@end



@implementation ViewController



#pragma mark 懒加载buttonBack
-(UIButton *)buttonBack
{
    if (!_buttonBack ) {
         _buttonBack = [UIButton buttonWithType:UIButtonTypeSystem];
        
        _buttonBack.backgroundColor = [UIColor redColor];
        [_buttonBack setFrame:CGRectMake(70, 340, 80, 40)];
        
        [_buttonBack setTitle:@"上一张" forState:UIControlStateNormal];
        
        
        [_buttonBack addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:_buttonBack];
    }
    return  _buttonBack;
}


#pragma mark 懒加载buttonNext
-(UIButton *)buttonNext
{
    if (!_buttonNext ) {
        _buttonNext = [UIButton buttonWithType:UIButtonTypeSystem];
        
        _buttonNext.backgroundColor = [UIColor redColor];
        [_buttonNext setFrame:CGRectMake(160, 340, 80, 40)];
        [_buttonNext setTitle:@"下一张" forState:UIControlStateNormal];
    
        [_buttonNext addTarget:self action:@selector(next) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:_buttonNext];
    }
    return  _buttonNext;
}

-(void)back{
    NSLog(@"BACK TOUCH");
    if (self.iIndex  > 0) {
        self.iIndex --;
        [self showCurrentPage:self.iIndex];
    }
}

-(void)next{
    
    NSLog(@"NEXT TOUCH");
    
    if (self.iIndex < self.arrayList.count) {
        self.iIndex ++;
        [self showCurrentPage:self.iIndex];
 
    }
}

//显示当前页面信息
-(void)showCurrentPage:(int)iPage{

    NSLog(@"ipage = %d ",iPage);
    if (iPage >= 0|| iPage < self.arrayList.count) {
        //调用模型
        JgSingerModel *model = self.arrayList[iPage];
        NSString *strTitle = [NSString stringWithFormat:@"%@ %d/%ld",model.name,iPage,self.arrayList.count];
        NSLog(@"strTitle = %@ ",strTitle);
        
        self.titleL.text = strTitle;
        
        self.imagSong.image = [UIImage imageNamed:model.pic];
        //如果当前显示的是第一张，前一张按钮不可用
        
        if (iPage == 0 ) {
            self.buttonBack.enabled = NO;
            self.buttonBack.backgroundColor = [UIColor grayColor];
        }
        else{
            self.buttonBack.enabled = YES;
            self.buttonBack.backgroundColor = [UIColor redColor];
        }
        
        if(iPage == self.arrayList.count - 1)
        {
            self.buttonNext.enabled = NO;
            self.buttonNext.backgroundColor = [UIColor grayColor];
        }
        else
        {
            self.buttonNext.enabled = YES;
            self.buttonNext.backgroundColor = [UIColor redColor];
        }

    }
}


//懒加载 viewSong
#pragma mark 懒加载viewSong
-(UIImageView *)imagSong
{
    if (_imagSong == nil ) {
        _imagSong = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.center.x/2-20, self.view.center.y/2, 200   , 150)];
        _imagSong.backgroundColor = [UIColor yellowColor];
        NSLog(@"self.view.center.x %lf",self.view.center.x);
        NSLog(@"self.view.center.y %lf",self.view.center.y);
        // _viewSong.textAlignment = NSTextAlignmentCenter;
       // _imagSong.center = self.view.center;
        [self.view addSubview:_imagSong];
    }
    return  _imagSong;
}
//懒加载 title
#pragma mark 懒加载title
-(UILabel *)titleL
{
    if (_titleL == nil ) {
        _titleL = [[UILabel alloc]initWithFrame:CGRectMake(self.view.center.x/2-20, 300, 200, 20)];
        _titleL.backgroundColor = [UIColor blueColor];
        _titleL.textAlignment = NSTextAlignmentCenter;
        [self.view addSubview:_titleL];
    }
    return  _titleL;
}

//懒加载
#pragma mark 懒加载
-(NSArray *)appList
{
    if (!_appList) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"picList.plist" ofType:nil];
        
        _appList = [NSArray arrayWithContentsOfFile:path];
        NSLog(@"%@",_appList);
        
    }
    return  _appList;
}


#pragma mark 懒加载

-(NSMutableArray *)arrayList
{
    if (!_arrayList) {
        _arrayList = [NSMutableArray array];
        NSString *path = [[NSBundle mainBundle]pathForResource:@"picList.plist" ofType:nil];
        
        NSArray *array  = [NSArray arrayWithContentsOfFile:path];
        NSLog(@"%@",array);
        for (NSDictionary *dict in array) {
            JgSingerModel *model = [JgSingerModel singerWithDict:dict];
            [_arrayList addObject:model];
        }
    }
    return  _arrayList;
}
#pragma mark 字典转模型

- (void)viewDidLoad {
    [super viewDidLoad];
    [self showCurrentPage:1];
//    NSDictionary *dict ;
//    NSLog(@"dict 0 =%@",dict);
//    // Do any additional setup after loading the view, typically from a nib.
//    for(NSInteger i = 0;i<6;i++)
//     {
//         
//         dict = self.appList[i];
//         
//         UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
//         
//         
//         btn.backgroundColor = [UIColor yellowColor];
//    
//         
//         [btn setTitle:@"aaa" forState:UIControlStateNormal];
//    
//         [btn setImage:[UIImage imageNamed:dict[@"pic"]] forState:UIControlStateNormal];
//         
////         [btn setBackgroundImage:[UIImage imageNamed:dict[@"pic"]] forState:UIControlStateNormal];
//
//         [btn setFrame:CGRectMake(100, 80*(i+1), 200, 50)];
//         
//         NSLog(@"cgrect %@",dict[@"pic"]);
//         [self.view addSubview:btn];
//    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
