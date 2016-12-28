//
//  ViewController.m
//  AgePicker
//
//  Created by Jonnyqian on 2016/12/20.
//  Copyright © 2016年 Jonnyqian. All rights reserved.
//

#import "ViewController.h"
#define k_datePicker_height 150
#define k_datePicker_width  [UIScreen mainScreen].bounds.size.width-40


@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UITextField *AgeCount;
@property (weak, nonatomic) IBOutlet UIDatePicker *mYdatePicker;
@property (weak, nonatomic) IBOutlet UITextField *constellation;
@property (weak, nonatomic) IBOutlet UITextField *dateofbirth;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  //  [self initDatePicker];
    // Do any additional setup after loading the view, typically from a nib.
    self.AgeCount.text = @"年龄 ：几岁，几月，几天";
 //   self.mYdatePicker.datePickerMode =
    NSDate *theDate = self.mYdatePicker.date;
    //NSLog(@"the data [picker is:%@]",theDate);
    NSLog(@"the data [picker is:%@]",[theDate descriptionWithLocale:[NSLocale currentLocale]]);
    
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc]init];
    
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];//设置为中文
  //  datePicker.locale = locale;
    self.mYdatePicker.locale = locale;
    
    [dataFormatter setDateFormat:@"YYYY-MM-dd"];  //HH:MM:SS"
    NSLog(@"the date formate is %@",[dataFormatter stringFromDate:theDate]);
    self.AgeCount.text = [dataFormatter stringFromDate:theDate];
    
    self.dateofbirth.text =[dataFormatter stringFromDate:theDate];// [NSString stringWithFormat:theDate];    //self.mYdatePicker
    
   // self.mYdatePicker.maximumDate = NSCalendar.currentCalendar().dateByAddingUnit(.CalendarUnitYear, value: -16, toDate: NSDate(), options: nil)
    
   // self.mYdatePicker.maximumDate = NSCalendar currentCalendar
    
    //年龄
    //设置UIDatePicker的允许最大时间、最小时间：
   // NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDate *currentDate = [NSDate date];
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setYear:0];//设置最大时间为：当前时间推后十年
    NSDate *maxDate = [calendar dateByAddingComponents:comps toDate:currentDate options:0];
    [comps setYear:-100];//设置最小时间为：当前时间前推十年
    NSDate *minDate = [calendar dateByAddingComponents:comps toDate:currentDate options:0];
    [_mYdatePicker setMaximumDate:maxDate];
    [_mYdatePicker setMinimumDate:minDate];
    
   // NSDate *currentDate = [NSDate date];
   // NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay fromDate:currentDate];
    NSInteger m = [components month]; // month
    NSInteger d = [components day]; // day
    NSInteger y = [components year]; // year
    
    NSLog(@"the date formate is mouth:%ld, day:%ld, year:%ld",m,d,y);

    
}


- (IBAction)onclick:(UIDatePicker *)sender {
    
    NSDateFormatter *dataFormatter = [[NSDateFormatter alloc]init];
    
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];//设置为中文
    NSDate *theDate = self.mYdatePicker.date;

    self.mYdatePicker.locale = locale;
    
    [dataFormatter setDateFormat:@"YYYY-MM-dd"];  //HH:MM:SS"
    NSLog(@"the date formate is %@",[dataFormatter stringFromDate:theDate]);
    self.AgeCount.text = [dataFormatter stringFromDate:theDate];
    
    self.dateofbirth.text =[dataFormatter stringFromDate:theDate];
    
    //计算年数
    NSDateFormatter*formatter1=[[NSDateFormatter alloc]init];
    [formatter1 setDateFormat:@"yyyy"];
    NSString * dateStr=[formatter1 stringFromDate:_mYdatePicker.date];
    NSLog(@"dateStr：%@",dateStr);
    NSString * currentDate=[formatter1 stringFromDate:[NSDate date]];
     NSLog(@"currentDate：%@",currentDate);
    NSInteger age= [currentDate floatValue]-   [dateStr floatValue];
    
    //计算月天数
    NSDateFormatter*formatter2=[[NSDateFormatter alloc]init];
    [formatter2 setDateFormat:@"MM-dd"];
    NSString * dateStr2=[formatter2 stringFromDate:_mYdatePicker.date];
    NSLog(@"dateStr2：%@",dateStr2);
    
    currentDate=[formatter2 stringFromDate:[NSDate date]];
    NSLog(@"currentDate2：%@",currentDate);

    

    NSInteger msDays = [currentDate floatValue]-   [dateStr2 floatValue];
    NSLog(@"msDays：%ld",msDays);

    NSLog(@"年龄：%ld",age);
    self.AgeCount.text = [NSString stringWithFormat:@"年龄：%ld岁",age];
    //@"@age";//[dataFormatter stringFromDate:theDate];
  //  self.mYdatePicker.maximumDate =

    
    self.AgeCount.text=[NSString stringWithFormat:@"%ld",age];
    // NSLog(@"%@",_age.text);
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm"];
    //日期加
    self.AgeCount.text  = [self ageWithDOB:theDate];

    
    //星座
   
    //只取月日判断星座区间
    NSDate*pickerDate=[formatter2 dateFromString:dateStr2];
    if([[formatter2 dateFromString:@"3-21"] earlierDate:pickerDate]==[formatter2 dateFromString:@"3-21"]&&[[formatter2 dateFromString:@"4-20"] earlierDate:pickerDate]==pickerDate)
    {
        _constellation.text=@"白牛座";
    }
    if([[formatter2 dateFromString:@"4-21"] earlierDate:pickerDate]==[formatter2 dateFromString:@"4-21"]&&[[formatter2 dateFromString:@"5-21"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"金牛座";
    }
    
    if([[formatter2 dateFromString:@"5-22"] earlierDate:pickerDate]==[formatter2 dateFromString:@"5-22"]&&[[formatter2 dateFromString:@"6-21"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"双子座";
    }
    
    if([[formatter2 dateFromString:@"6-22"] earlierDate:pickerDate]==[formatter2 dateFromString:@"6-22"]&&[[formatter2 dateFromString:@"7-22"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"巨蟹座";
        
        
    }
    
    if([[formatter2 dateFromString:@"7-23"] earlierDate:pickerDate]==[formatter2 dateFromString:@"7-23"]&&[[formatter2 dateFromString:@"8-23"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"狮子座";
        
        
    }
    
    if([[formatter2 dateFromString:@"8-24"] earlierDate:pickerDate]==[formatter2 dateFromString:@"8-24"]&&[[formatter2 dateFromString:@"9-23"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"处女座";
        
        
    }
    
    if([[formatter2 dateFromString:@"9-24"] earlierDate:pickerDate]==[formatter2 dateFromString:@"9-24"]&&[[formatter2 dateFromString:@"10-23"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"天秤座";
    }
    
    if([[formatter2 dateFromString:@"10-24"] earlierDate:pickerDate]==[formatter2 dateFromString:@"10-24"]&&[[formatter2 dateFromString:@"11-22"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"天蝎座";
    
    }
    if([[formatter2 dateFromString:@"11-23"] earlierDate:pickerDate]==[formatter2 dateFromString:@"11-23"]&&[[formatter2 dateFromString:@"12-21"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"射手座";
    }
    
    if([[formatter2 dateFromString:@"12-22"] earlierDate:pickerDate]==[formatter2 dateFromString:@"12-22"]&&[[formatter2 dateFromString:@"1-20"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"摩羯座";
    }
    
    if([[formatter2 dateFromString:@"1-21"] earlierDate:pickerDate]==[formatter2 dateFromString:@"1-21"]&&[[formatter2 dateFromString:@"2-19"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"水瓶座";
    }
    
    if([[formatter2 dateFromString:@"2-20"] earlierDate:pickerDate]==[formatter2 dateFromString:@"2-20"]&&[[formatter2 dateFromString:@"3-20"] earlierDate:pickerDate]==pickerDate)
    {
        
        _constellation.text=@"双鱼座";
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)ageWithDOB:(NSDate *)date22
{
    NSString *strDOB;
    NSCalendar *calendar = [NSCalendar currentCalendar];//定义一个NSCalendar对象
    
    NSDate *nowDate = [NSDate date];
    
    NSString *birth = @"2016-10-30";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    //生日
    NSDate *birthDay = [dateFormatter dateFromString:birth];
    birthDay = date22;
    NSLog(@"date22:%@",date22);
    
    //用来得到详细的时差
    unsigned int unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    NSDateComponents *date = [calendar components:unitFlags fromDate:birthDay toDate:nowDate options:0];
    
    if([date year] >0){
        NSLog(@"%@",[NSString stringWithFormat:(@"%ld岁%ld月%ld天"),(long)[date year],(long)[date month],(long)[date day]]) ;
        strDOB =[NSString stringWithFormat:(@"%ld岁%ld月%ld天"),(long)[date year],(long)[date month],(long)[date day]] ;
        
    }else if([date month] >0){
        NSLog(@"%@",[NSString stringWithFormat:(@"%ld月%ld天"),(long)[date month],(long)[date day]]);
        strDOB =[NSString stringWithFormat:(@"%ld月%ld天"),(long)[date month],(long)[date day]];
    }else if([date day]>0){
        NSLog(@"%@",[NSString stringWithFormat:(@"%ld天"),(long)[date day]]);
    }else {
        NSLog(@"0天");
        strDOB =[NSString stringWithFormat:(@"%ld天"),(long)[date day]];
            }
    return strDOB;
};

@end
