//
//  ViewController.m
//  Ex11_LocalNotiTest
//
//  Created by SDT-1 on 2014. 1. 20..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)btn_now:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc] init];
    noti.alertBody = @"test noti";
    noti.alertAction = @"ok";
    [[UIApplication sharedApplication] presentLocalNotificationNow:noti];
    
}
- (IBAction)btn_af7sec:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc] init];
    noti.fireDate = [NSDate dateWithTimeIntervalSinceNow:7];
    
    noti.alertBody = @"af7sec noti";
    noti.alertAction = @"ok";
    noti.soundName = UILocalNotificationDefaultSoundName;
    
    noti.userInfo =nil;
    
    [[UIApplication sharedApplication] presentLocalNotificationNow:noti];

    
}
- (IBAction)btn_afNsec:(id)sender {
    UILocalNotification *noti = [[UILocalNotification alloc] init];
    noti.fireDate = self.datePicker.date;
    noti.alertBody = @"afNsec noti";
    noti.alertAction = @"ok";
    noti.soundName = @"music1.mp3";
    noti.alertLaunchImage =@"i0.jpeg";
    noti.userInfo = [NSDictionary dictionaryWithObjectsAndKeys:@"object",@"key", nil];
    
    [[UIApplication sharedApplication] presentLocalNotificationNow:noti];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
