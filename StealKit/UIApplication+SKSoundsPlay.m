//
//  UIApplication+SKSoundsPlay.m
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//

#import "UIApplication+SKSoundsPlay.h"

@implementation UIApplication (SKSoundsPlay)

+ (void)playSystemSound:(SKAudioID)audioID
{
    AudioServicesPlaySystemSound(audioID);
}

+ (void)vibrate
{
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
}

+ (SystemSoundID)playCustomSound:(NSURL * _Nonnull)soundURL
{
    SystemSoundID soundID;
    
    OSStatus error = AudioServicesCreateSystemSoundID((CFURLRef)CFBridgingRetain(soundURL), &soundID);
    if (error != kAudioServicesNoError) {
        NSLog(@"Could not load %@", soundURL);
    }
    return soundID;
}

+ (BOOL)disposeSound:(SystemSoundID)soundID
{
    OSStatus error = AudioServicesDisposeSystemSoundID(soundID);
    if (error != kAudioServicesNoError) {
        NSLog(@"Error while disposing sound %i", (unsigned int)soundID);
        return NO;
    }
    
    return YES;
}

@end
