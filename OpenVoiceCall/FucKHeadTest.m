//
//  FucKHeadTest.m
//  OpenVoiceCall
//
//  Created by sunalong on 17/7/26.
//  Copyright © 2017年 Agora. All rights reserved.
//

#import "FucKHeadTest.h"
#import <AVFoundation/AVFoundation.h>
@implementation FucKHeadTest
   AVAudioPlayer *_avAudioPlayer; // 播放器palyer
- (void)initPlayer{
    // 2.播放本地音频文件
    // (1)从boudle路径下读取音频文件 陈小春 - 独家记忆文件名，mp3文件格式
    NSString *path = [[NSBundle mainBundle] pathForResource:@"陈小春 - 独家记忆" ofType:@"mp3"];
    // (2)把音频文件转化成url格式
    NSURL *url = [NSURL fileURLWithPath:path];
    // (3)初始化音频类 并且添加播放文件
    _avAudioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:nil];
    // (4) 设置代理
//    _avAudioPlayer.delegate = self;
    // (5) 设置初始音量大小 默认1，取值范围 0~1
    _avAudioPlayer.volume = 1;
    // (6)设置音乐播放次数 负数为一直循环，直到stop，0为一次，1为2次，以此类推
    _avAudioPlayer.numberOfLoops = 0;
    // (7)准备播放
    [_avAudioPlayer prepareToPlay];
     NSLog(@"initPlayer");
    
}
- (void)playMusicFuck{
    NSLog(@"playMusicFuck");
    [_avAudioPlayer play];
}

- (void)pauseMusicFuck{
    NSLog(@"pauseMusicFuck");
    [_avAudioPlayer pause];

}
@end
