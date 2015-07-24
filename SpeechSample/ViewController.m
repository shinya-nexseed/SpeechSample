//
//  ViewController.m
//  SpeechSample
//
//  Created by Shinya Hirai on 2015/07/23.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)tapBtn:(id)sender {
    // AVSpeechSynthesizerを初期化する。
    AVSpeechSynthesizer* speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    
    // AVSpeechUtteranceを読ませたい文字列で初期化する。
    NSString* speakingText = @"hello world!";
    AVSpeechUtterance *utterance = [AVSpeechUtterance
                                    speechUtteranceWithString:speakingText];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate; // 早さ
    utterance.pitchMultiplier = 0.5f; // 高さ
    utterance.volume = 0.5f; // 大きさ
    
    // AVSpeechSynthesizerにAVSpeechUtteranceを設定して読んでもらう
    [speechSynthesizer speakUtterance:utterance];
}

- (IBAction)inputSiri:(id)sender {
    // 定義と初期化
    AVSpeechSynthesizer *speechSynthesizer = [[AVSpeechSynthesizer alloc] init];
    // 読ませたい文字列登録
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:self.textSiri.text];
    // 早さ
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    // 高さ
    utterance.pitchMultiplier = 0.3f;
    // 大きさ
    utterance.volume = 0.5f;
    // 日本語voiceをAVSpeechUtteranceに指定。
    AVSpeechSynthesisVoice* JVoice = [AVSpeechSynthesisVoice voiceWithLanguage:@"ja-JP"];
    utterance.voice =  JVoice;
    
    // 処理開始
    [speechSynthesizer speakUtterance:utterance];
}
@end



