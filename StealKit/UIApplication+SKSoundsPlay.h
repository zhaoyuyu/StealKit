//
//  UIApplication+SKSoundsPlay.h
//  StealKit
//
//  Created by 赵瑜瑜 on 16/8/31.
//  Copyright © 2016年 StealKit. All rights reserved.
//  Includes code by FabrizioBrancati. https://github.com/FabrizioBrancati/BFKit

@import AudioToolbox;
@import Foundation;
@import UIKit;

typedef NS_ENUM(NSUInteger, SKAudioID) {
    /**
     *  New Mail
     */
    SKAudioIDNewMail = 1000,
    /**
     *  Mail Sent
     */
    SKAudioIDMailSent = 1001,
    /**
     *  Voice Mail
     */
    SKAudioIDVoiceMail = 1002,
    /**
     *  Recived Message
     */
    SKAudioIDRecivedMessage = 1003,
    /**
     *  Sent Message
     */
    SKAudioIDSentMessage = 1004,
    /**
     *  Alerm
     */
    SKAudioIDAlarm = 1005,
    /**
     *  Low pPower
     */
    SKAudioIDLowPower = 1006,
    /**
     *  SMS Received 1
     */
    SKAudioIDSMSReceived1 = 1007,
    /**
     *  SMS Received 2
     */
    SKAudioIDSMSReceived2 = 1008,
    /**
     *  SMS Received 3
     */
    SKAudioIDSMSReceived3 = 1009,
    /**
     *  SMS Received 4
     */
    SKAudioIDSMSReceived4 = 1010,
    /**
     *  SMS Received 5
     */
    SKAudioIDSMSReceived5 = 1013,
    /**
     *  SMS Received 6
     */
    SKAudioIDSMSReceived6 = 1014,
    /**
     *  Tweet Sent
     */
    SKAudioIDTweetSent = 1016,
    /**
     *  Anticipate
     */
    SKAudioIDAnticipate = 1020,
    /**
     *  Bloom
     */
    SKAudioIDBloom = 1021,
    /**
     *  Calypso
     */
    SKAudioIDCalypso = 1022,
    /**
     *  Choo Choo
     */
    SKAudioIDChooChoo = 1023,
    /**
     *  Descent
     */
    SKAudioIDDescent = 1024,
    /**
     *  Fanfare
     */
    SKAudioIDFanfare = 1025,
    /**
     *  Ladder
     */
    SKAudioIDLadder = 1026,
    /**
     *  Minuet
     */
    SKAudioIDMinuet = 1027,
    /**
     *  News Flash
     */
    SKAudioIDNewsFlash = 1028,
    /**
     *  Noir
     */
    SKAudioIDNoir = 1029,
    /**
     *  Sherwood Forest
     */
    SKAudioIDSherwoodForest = 1030,
    /**
     *  Speel
     */
    SKAudioIDSpell = 1031,
    /**
     *  Suspance
     */
    SKAudioIDSuspence = 1032,
    /**
     *  Telegraph
     */
    SKAudioIDTelegraph = 1033,
    /**
     *  Tiptoes
     */
    SKAudioIDTiptoes = 1034,
    /**
     *  Typewriters
     */
    SKAudioIDTypewriters = 1035,
    /**
     *  Update
     */
    SKAudioIDUpdate = 1036,
    /**
     *  USSD Alert
     */
    SKAudioIDUSSDAlert = 1050,
    /**
     *  SIM Toolkit Call Dropped
     */
    SKAudioIDSIMToolkitCallDropped = 1051,
    /**
     *  SIM Toolkit General Beep
     */
    SKAudioIDSIMToolkitGeneralBeep = 1052,
    /**
     *  SIM Toolkit Negative ACK
     */
    SKAudioIDSIMToolkitNegativeACK = 1053,
    /**
     *  SIM Toolkit Positive ACK
     */
    SKAudioIDSIMToolkitPositiveACK = 1054,
    /**
     *  SIM Toolkit SMS
     */
    SKAudioIDSIMToolkitSMS = 1055,
    /**
     *  Tink
     */
    SKAudioIDTink = 1057,
    /**
     *  CT Busy
     */
    SKAudioIDCTBusy = 1070,
    /**
     *  CT Congestion
     */
    SKAudioIDCTCongestion = 1071,
    /**
     *  CT Pack ACK
     */
    SKAudioIDCTPathACK = 1072,
    /**
     *  CT Error
     */
    SKAudioIDCTError = 1073,
    /**
     *  CT Call Waiting
     */
    SKAudioIDCTCallWaiting = 1074,
    /**
     *  CT Keytone
     */
    SKAudioIDCTKeytone = 1075,
    /**
     *  Lock
     */
    SKAudioIDLock = 1100,
    /**
     *  Unlock
     */
    SKAudioIDUnlock = 1101,
    /**
     *  Failed Unlock
     */
    SKAudioIDFailedUnlock = 1102,
    /**
     *  Keypressed Tink
     */
    SKAudioIDKeypressedTink = 1103,
    /**
     *  Keypressed Tock
     */
    SKAudioIDKeypressedTock = 1104,
    /**
     *  Tock
     */
    SKAudioIDTock = 1105,
    /**
     *  Beep Beep
     */
    SKAudioIDBeepBeep = 1106,
    /**
     *  Ringer Charged
     */
    SKAudioIDRingerCharged = 1107,
    /**
     *  Photo Shutter
     */
    SKAudioIDPhotoShutter = 1108,
    /**
     *  Shake
     */
    SKAudioIDShake = 1109,
    /**
     *  JBL Begin
     */
    SKAudioIDJBLBegin = 1110,
    /**
     *  JBL Confirm
     */
    SKAudioIDJBLConfirm = 1111,
    /**
     *  JBL Cancel
     */
    SKAudioIDJBLCancel = 1112,
    /**
     *  Begin Recording
     */
    SKAudioIDBeginRecording = 1113,
    /**
     *  End Recording
     */
    SKAudioIDEndRecording = 1114,
    /**
     *  JBL Ambiguous
     */
    SKAudioIDJBLAmbiguous = 1115,
    /**
     *  JBL No Match
     */
    SKAudioIDJBLNoMatch = 1116,
    /**
     *  Begin Video Record
     */
    SKAudioIDBeginVideoRecord = 1117,
    /**
     *  End Video Record
     */
    SKAudioIDEndVideoRecord = 1118,
    /**
     *  VC Invitation Accepted
     */
    SKAudioIDVCInvitationAccepted = 1150,
    /**
     *  VC Ringing
     */
    SKAudioIDVCRinging = 1151,
    /**
     *  VC Ended
     */
    SKAudioIDVCEnded = 1152,
    /**
     *  VC Call Waiting
     */
    SKAudioIDVCCallWaiting = 1153,
    /**
     *  VC Call Upgrade
     */
    SKAudioIDVCCallUpgrade = 1154,
    /**
     *  Touch Tone 1
     */
    SKAudioIDTouchTone1 = 1200,
    /**
     *  Touch Tone 2
     */
    SKAudioIDTouchTone2 = 1201,
    /**
     *  Touch Tone 3
     */
    SKAudioIDTouchTone3 = 1202,
    /**
     *  Touch Tone 4
     */
    SKAudioIDTouchTone4 = 1203,
    /**
     *  Touch Tone 5
     */
    SKAudioIDTouchTone5 = 1204,
    /**
     *  Touch Tone 6
     */
    SKAudioIDTouchTone6 = 1205,
    /**
     *  Touch Tone 7
     */
    SKAudioIDTouchTone7 = 1206,
    /**
     *  Touch Tone 8
     */
    SKAudioIDTouchTone8 = 1207,
    /**
     *  Touch Tone 9
     */
    SKAudioIDTouchTone9 = 1208,
    /**
     *  Touch Tone 10
     */
    SKAudioIDTouchTone10 = 1209,
    /**
     *  Tone Star
     */
    SKAudioIDTouchToneStar = 1210,
    /**
     *  Tone Pound
     */
    SKAudioIDTouchTonePound = 1211,
    /**
     *  Headset Start Call
     */
    SKAudioIDHeadsetStartCall = 1254,
    /**
     *  Headset Redial
     */
    SKAudioIDHeadsetRedial = 1255,
    /**
     *  Headset Answer Call
     */
    SKAudioIDHeadsetAnswerCall = 1256,
    /**
     *  Headset End Call
     */
    SKAudioIDHeadsetEndCall = 1257,
    /**
     *  Headset Call Waiting Actions
     */
    SKAudioIDHeadsetCallWaitingActions = 1258,
    /**
     *  Headset Transition End
     */
    SKAudioIDHeadsetTransitionEnd = 1259,
    /**
     *  Voicemail
     */
    SKAudioIDVoicemail = 1300,
    /**
     *  Received Message
     */
    SKAudioIDReceivedMessage = 1301,
    /**
     *  New Mail 2
     */
    SKAudioIDNewMail2 = 1302,
    /**
     *  Email Sent 2
     */
    SKAudioIDMailSent2 = 1303,
    /**
     *  Alarm 2
     */
    SKAudioIDAlarm2 = 1304,
    /**
     *  Lock 2
     */
    SKAudioIDLock2 = 1305,
    /**
     *  Tock 2
     */
    SKAudioIDTock2 = 1306,
    /**
     *  SMS Received 7
     */
    SKAudioIDSMSReceived1_2 = 1307,
    /**
     *  SMS Received 8
     */
    SKAudioIDSMSReceived2_2 = 1308,
    /**
     *  SMS Received 9
     */
    SKAudioIDSMSReceived3_2 = 1309,
    /**
     *  SMS Received 10
     */
    SKAudioIDSMSReceived4_2 = 1310,
    /**
     *  SMS Received Vibrate
     */
    SKAudioIDSMSReceivedVibrate = 1311,
    /**
     *  SMS Received 11
     */
    SKAudioIDSMSReceived1_3 = 1312,
    /**
     *  SMS Received 12
     */
    SKAudioIDSMSReceived5_3 = 1313,
    /**
     *  SMS Received 13
     */
    SKAudioIDSMSReceived6_3 = 1314,
    /**
     *  Voicemail 2
     */
    SKAudioIDVoicemail2 = 1315,
    /**
     *  Anticipate 2
     */
    SKAudioIDAnticipate2 = 1320,
    /**
     *  Bloom 2
     */
    SKAudioIDBloom2 = 1321,
    /**
     *  Calypso 2
     */
    SKAudioIDCalypso2 = 1322,
    /**
     *  Choo Choo 2
     */
    SKAudioIDChooChoo2 = 1323,
    /**
     *  Descent 2
     */
    SKAudioIDDescent2 = 1324,
    /**
     *  Fanfare 2
     */
    SKAudioIDFanfare2 = 1325,
    /**
     *  Ladder 2
     */
    SKAudioIDLadder2 = 1326,
    /**
     *  Minuet 2
     */
    SKAudioIDMinuet2 = 1327,
    /**
     *  News Flash 2
     */
    SKAudioIDNewsFlash2 = 1328,
    /**
     *  Noir 2
     */
    SKAudioIDNoir2 = 1329,
    /**
     *  Sherwood Forest 2
     */
    SKAudioIDSherwoodForest2 = 1330,
    /**
     *  Speel 2
     */
    SKAudioIDSpell2 = 1331,
    /**
     *  Suspence 2
     */
    SKAudioIDSuspence2 = 1332,
    /**
     *  Telegraph 2
     */
    SKAudioIDTelegraph2 = 1333,
    /**
     *  Tiptoes 2
     */
    SKAudioIDTiptoes2 = 1334,
    /**
     *  Typewriters 2
     */
    SKAudioIDTypewriters2 = 1335,
    /**
     *  Update 2
     */
    SKAudioIDUpdate2 = 1336,
    /**
     *  Ringer View Changed
     */
    SKAudioIDRingerVibeChanged = 1350,
    /**
     *  Silent View Changed
     */
    SKAudioIDSilentVibeChanged = 1351,
    /**
     *  Vibrate
     */
    SKAudioIDVibrate = 4095
};

@interface UIApplication (SKSoundsPlay)

+ (void)sk_playSystemSound:(SKAudioID)audioID;

+ (void)sk_vibrate;

+ (SystemSoundID)sk_playCustomSound:(NSURL * _Nonnull)soundURL;

+ (BOOL)sk_disposeSound:(SystemSoundID)soundID;

@end
