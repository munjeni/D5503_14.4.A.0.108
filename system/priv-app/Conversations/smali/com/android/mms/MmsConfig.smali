.class public Lcom/android/mms/MmsConfig;
.super Ljava/lang/Object;
.source "MmsConfig.java"


# static fields
.field public static final DEBUG:Z = false

.field private static final DEFAULT_RESOLUTION:Ljava/lang/String; = "XGA"

.field private static final DEFAULT_VIDEO_CONTAINER_FORMAT:Ljava/lang/String;

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_LENGTH_PER_SEGMENT:I = 0xa0

.field public static final RESERVED_SMIL_OVERHEAD_SIZE:I = 0x800

.field public static final RESERVED_TEXT_SIZE_IN_MMS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MmsConfig"

.field private static mAllowAttachAudio:Z

.field private static mCTFeatureEnabled:Z

.field private static mComposerAttachmentPreviewEnabled:Z

.field private static mContext:Landroid/content/Context;

.field private static mConversationsLinkifyEnabled:Z

.field private static mDoodleEnabled:Z

.field private static mEnableIgnoreClass2Sms:Z

.field private static mHttpSocketTimeout:I

.field private static mIsAutoAddSubjectEnable:Z

.field private static mIsAutoTrimLargeVideo:Z

.field private static mIsMimeTypeFromFileExtension:Z

.field private static mMMSPreviewEnabled:Z

.field private static mMaxMessageSize:I

.field private static mMaxNbrMmsObjects:I

.field private static mMaxRecipients:I

.field private static mMaxSmsSegments:I

.field private static mMaxSmsSegmentsForTest:I

.field private static mMmsEnabled:I

.field private static mMmsEnabledForTest:I

.field private static mMmsSubjectEnabled:Z

.field private static mMmsVersion:I

.field private static mResolution:Ljava/lang/String;

.field private static mSaveDraftDialogEnabled:Z

.field private static mSenderNameVisible:Z

.field private static mSettings:Lcom/sonyericsson/conversations/settings/Settings;

.field private static mShowEncodingChangedNotification:Z

.field private static mShowParticipantsInMessageHeader:Z

.field private static mSlideshowEditorEnabled:Z

.field private static mSmsOAPattern:Ljava/lang/String;

.field private static mSmsOAReplacement:Ljava/lang/String;

.field private static mSmscEditableValue:I

.field private static mStrictPhonenumberComparisonPrefix:Ljava/lang/String;

.field private static mTriggerSmsPduBytes:I

.field private static mUaProfUrl:Ljava/lang/String;

.field private static mUseSCTimestamp:Z

.field private static mVideoContainerFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 53
    sput v4, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 54
    const/16 v0, 0x12

    sput v0, Lcom/android/mms/MmsConfig;->mMmsVersion:I

    .line 55
    sput v1, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 56
    const/16 v0, 0x32

    sput v0, Lcom/android/mms/MmsConfig;->mMaxRecipients:I

    .line 57
    sput v3, Lcom/android/mms/MmsConfig;->mMaxNbrMmsObjects:I

    .line 58
    sput-object v2, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 59
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/MmsConfig;->mMaxSmsSegments:I

    .line 60
    const v0, 0xea60

    sput v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    .line 61
    sput v1, Lcom/android/mms/MmsConfig;->mTriggerSmsPduBytes:I

    .line 62
    sput v4, Lcom/android/mms/MmsConfig;->mMmsEnabledForTest:I

    .line 63
    sput v4, Lcom/android/mms/MmsConfig;->mMaxSmsSegmentsForTest:I

    .line 64
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mMmsSubjectEnabled:Z

    .line 65
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mUseSCTimestamp:Z

    .line 66
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    .line 67
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mSlideshowEditorEnabled:Z

    .line 68
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mShowParticipantsInMessageHeader:Z

    .line 69
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsMimeTypeFromFileExtension:Z

    .line 70
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mSaveDraftDialogEnabled:Z

    .line 71
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mMMSPreviewEnabled:Z

    .line 73
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mComposerAttachmentPreviewEnabled:Z

    .line 74
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsAutoTrimLargeVideo:Z

    .line 75
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mIsAutoAddSubjectEnable:Z

    .line 76
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mConversationsLinkifyEnabled:Z

    .line 77
    sput-object v2, Lcom/android/mms/MmsConfig;->mStrictPhonenumberComparisonPrefix:Ljava/lang/String;

    .line 78
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mDoodleEnabled:Z

    .line 79
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mSenderNameVisible:Z

    .line 80
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mCTFeatureEnabled:Z

    .line 81
    sput-object v2, Lcom/android/mms/MmsConfig;->mSmsOAPattern:Ljava/lang/String;

    .line 82
    sput-object v2, Lcom/android/mms/MmsConfig;->mSmsOAReplacement:Ljava/lang/String;

    .line 83
    sput v3, Lcom/android/mms/MmsConfig;->mSmscEditableValue:I

    .line 84
    sput-boolean v1, Lcom/android/mms/MmsConfig;->mEnableIgnoreClass2Sms:Z

    .line 85
    sput-boolean v3, Lcom/android/mms/MmsConfig;->mShowEncodingChangedNotification:Z

    .line 97
    sput-object v2, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 100
    sput-object v2, Lcom/android/mms/MmsConfig;->mVideoContainerFormat:Ljava/lang/String;

    .line 101
    sput-object v2, Lcom/android/mms/MmsConfig;->DEFAULT_VIDEO_CONTAINER_FORMAT:Ljava/lang/String;

    .line 103
    sput-object v2, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    .line 105
    sput-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllowAttachAudio()Z
    .locals 1

    .prologue
    .line 336
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mAllowAttachAudio:Z

    return v0
.end method

.method public static getConversationsLinkifyEnabled()Z
    .locals 1

    .prologue
    .line 276
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mConversationsLinkifyEnabled:Z

    return v0
.end method

.method public static getHttpSocketTimeout()I
    .locals 1

    .prologue
    .line 324
    sget v0, Lcom/android/mms/MmsConfig;->mHttpSocketTimeout:I

    return v0
.end method

.method public static getIgnoreClass2SmsEnabled()Z
    .locals 1

    .prologue
    .line 473
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mEnableIgnoreClass2Sms:Z

    return v0
.end method

.method public static getIsMimeTypeFromFileExtension()Z
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsMimeTypeFromFileExtension:Z

    return v0
.end method

.method public static getMaxEditCharacters()I
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSmsSegments()I

    move-result v0

    mul-int/lit16 v0, v0, 0xa0

    goto :goto_0
.end method

.method public static getMaxImageHeight()I
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 307
    const-string v0, "XGA"

    sput-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 309
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionHeight(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMaxImageWidth()I
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "XGA"

    sput-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 316
    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->getResolutionWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMaxMessageSize()I
    .locals 1

    .prologue
    .line 285
    sget v0, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    return v0
.end method

.method public static getMaxMessageSizeWithOverhead()I
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    add-int/lit16 v0, v0, -0x2f10

    return v0
.end method

.method public static getMaxNbrMmsObjects()I
    .locals 1

    .prologue
    .line 298
    sget v0, Lcom/android/mms/MmsConfig;->mMaxNbrMmsObjects:I

    return v0
.end method

.method public static getMaxRecipients()I
    .locals 1

    .prologue
    .line 289
    sget v0, Lcom/android/mms/MmsConfig;->mMaxRecipients:I

    return v0
.end method

.method public static getMaxSmsSegments()I
    .locals 2

    .prologue
    .line 232
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSmsSegmentsForTest:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget v0, Lcom/android/mms/MmsConfig;->mMaxSmsSegments:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/mms/MmsConfig;->mMaxSmsSegmentsForTest:I

    goto :goto_0
.end method

.method public static getMmsEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 240
    sget v2, Lcom/android/mms/MmsConfig;->mMmsEnabledForTest:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 241
    sget v2, Lcom/android/mms/MmsConfig;->mMmsEnabledForTest:I

    if-ne v2, v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :cond_2
    sget v2, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static getMmsEnabledForTest()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/android/mms/MmsConfig;->mMmsEnabledForTest:I

    return v0
.end method

.method public static getMmsSubjectEnabled()Z
    .locals 1

    .prologue
    .line 268
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mMmsSubjectEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMmsTriggerRecipients()I
    .locals 3

    .prologue
    .line 396
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_mms_trigger_recipients"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsTriggerSmsPduBytes()I
    .locals 3

    .prologue
    .line 404
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_mms_trigger_pdu_bytes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsTriggerSmsSegments()I
    .locals 3

    .prologue
    .line 400
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_mms_trigger_sms_segments"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMmsUserAgentString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 467
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 468
    .local v0, "device":Ljava/lang/String;
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 469
    .local v1, "osBuildNr":Ljava/lang/String;
    const-string v2, "Sony%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMmsVersion()I
    .locals 1

    .prologue
    .line 440
    sget v0, Lcom/android/mms/MmsConfig;->mMmsVersion:I

    return v0
.end method

.method public static getSmsOAPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/android/mms/MmsConfig;->mSmsOAPattern:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmsOAReplacement()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    sget-object v0, Lcom/android/mms/MmsConfig;->mSmsOAReplacement:Ljava/lang/String;

    return-object v0
.end method

.method public static getSmscEditableValue()I
    .locals 1

    .prologue
    .line 228
    sget v0, Lcom/android/mms/MmsConfig;->mSmscEditableValue:I

    return v0
.end method

.method public static getStrictPhonenumberComparisonPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/android/mms/MmsConfig;->mStrictPhonenumberComparisonPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public static getTranslatedNotificationSound()Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    sget-object v1, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v2, "pref_key_ringtone"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/conversations/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "sound":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->notificationHasBeenIndexed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    sget-object v1, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->convertNotificationPathToInternalUri(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_0
    return-object v0
.end method

.method public static getTriggerSmsPduBytes()I
    .locals 1

    .prologue
    .line 328
    sget v0, Lcom/android/mms/MmsConfig;->mTriggerSmsPduBytes:I

    return v0
.end method

.method public static getUaProfUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static getUseSCTimestamp()Z
    .locals 1

    .prologue
    .line 332
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mUseSCTimestamp:Z

    return v0
.end method

.method public static getVideoContainerFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/android/mms/MmsConfig;->mVideoContainerFormat:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-class v0, Lcom/android/mms/MmsConfig;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;Lcom/sonyericsson/conversations/settings/Settings;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static init(Landroid/content/Context;Lcom/sonyericsson/conversations/settings/Settings;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/conversations/settings/Settings;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    sput-object p0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    .line 118
    sput v6, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 120
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, "r":Landroid/content/res/Resources;
    const-string v2, "config_useragentprofile_url"

    const-string v3, "string"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "urlRes":I
    if-eqz v1, :cond_0

    .line 123
    sget-object v2, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mUaProfUrl:Ljava/lang/String;

    .line 126
    :cond_0
    if-nez p1, :cond_2

    .line 127
    invoke-static {p0}, Lcom/sonyericsson/conversations/settings/Settings;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/settings/Settings;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    .line 134
    :goto_0
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_mms_max_size"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    sput v2, Lcom/android/mms/MmsConfig;->mMaxMessageSize:I

    .line 136
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_max_recipients"

    const/16 v4, 0x32

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->mMaxRecipients:I

    .line 138
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_mms_subject"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mMmsSubjectEnabled:Z

    .line 140
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_slideshow_editor"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSlideshowEditorEnabled:Z

    .line 142
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_mms_max_objects"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->mMaxNbrMmsObjects:I

    .line 144
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_sms_max_segments"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->mMaxSmsSegments:I

    .line 146
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_image_resolution"

    const-string v4, "XGA"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mResolution:Ljava/lang/String;

    .line 148
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_video_container_format"

    sget-object v4, Lcom/android/mms/MmsConfig;->DEFAULT_VIDEO_CONTAINER_FORMAT:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mVideoContainerFormat:Ljava/lang/String;

    .line 150
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_mms_trigger_pdu_bytes"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->mTriggerSmsPduBytes:I

    .line 152
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_use_sc_timestamp"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mUseSCTimestamp:Z

    .line 154
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_show_participants_in_message_header"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mShowParticipantsInMessageHeader:Z

    .line 156
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_save_draft_dialog"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSaveDraftDialogEnabled:Z

    .line 158
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_mimetype_from_file_extension"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mIsMimeTypeFromFileExtension:Z

    .line 160
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_mms_preview"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mMMSPreviewEnabled:Z

    .line 162
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_composer_attachment_preview"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mComposerAttachmentPreviewEnabled:Z

    .line 165
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_auto_trim_large_video"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mIsAutoTrimLargeVideo:Z

    .line 167
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_auto_add_subject"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mIsAutoAddSubjectEnable:Z

    .line 169
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_conversations_linkify"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mConversationsLinkifyEnabled:Z

    .line 171
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_strict_phonenumber_comparison_prefix"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mStrictPhonenumberComparisonPrefix:Ljava/lang/String;

    .line 174
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_doodle"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mDoodleEnabled:Z

    .line 176
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_sender_name_visibility"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mSenderNameVisible:Z

    .line 178
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_ct_feature_enabled"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mCTFeatureEnabled:Z

    .line 180
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_sms_original_address_pattern"

    invoke-virtual {v2, v3, v7}, Lcom/sonyericsson/conversations/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mSmsOAPattern:Ljava/lang/String;

    .line 182
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_sms_original_address_replacement"

    invoke-virtual {v2, v3, v7}, Lcom/sonyericsson/conversations/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/mms/MmsConfig;->mSmsOAReplacement:Ljava/lang/String;

    .line 184
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_smsc_editable_value"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->mSmscEditableValue:I

    .line 186
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_enable_ignore_class_2_sms"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mEnableIgnoreClass2Sms:Z

    .line 188
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_show_encoding_changed_notification"

    invoke-virtual {v2, v3, v6}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/mms/MmsConfig;->mShowEncodingChangedNotification:Z

    .line 195
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_disable_mms"

    invoke-virtual {v2, v3, v5}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 196
    sput v5, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    .line 199
    :cond_1
    sget-object v2, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v3, "semc_pref_key_mms_version"

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/conversations/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/MmsConfig;->mMmsVersion:I

    .line 200
    return-void

    .line 129
    :cond_2
    sput-object p1, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    goto/16 :goto_0
.end method

.method public static isAutoCreateSubjectEnable()Z
    .locals 1

    .prologue
    .line 372
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsAutoAddSubjectEnable:Z

    return v0
.end method

.method public static isAutoTrimLagerVideo()Z
    .locals 1

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mIsAutoTrimLargeVideo:Z

    return v0
.end method

.method public static isCTFeatureEnabled()Z
    .locals 1

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mCTFeatureEnabled:Z

    return v0
.end method

.method public static isCellBroadcastEnabled()Z
    .locals 3

    .prologue
    .line 412
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_cellbroadcast-enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCharacterConversionEnabled()Z
    .locals 3

    .prologue
    .line 408
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_character_conversion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isComposerAttachmentPreviewEnabled()Z
    .locals 1

    .prologue
    .line 364
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mComposerAttachmentPreviewEnabled:Z

    return v0
.end method

.method public static isDoodleEnabled()Z
    .locals 1

    .prologue
    .line 203
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mDoodleEnabled:Z

    return v0
.end method

.method public static isEmergencyAlertsEnabled()Z
    .locals 3

    .prologue
    .line 416
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "emergency_alerts_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnableForceMessageType()Z
    .locals 3

    .prologue
    .line 392
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_enable_force_message_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEncodingChangedNotificationEnabled()Z
    .locals 3

    .prologue
    .line 420
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_show_encoding_changed_notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMMSPreviewEnabled()Z
    .locals 1

    .prologue
    .line 360
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mMMSPreviewEnabled:Z

    return v0
.end method

.method public static isMmsConfigInited()Z
    .locals 2

    .prologue
    .line 356
    sget v0, Lcom/android/mms/MmsConfig;->mMmsEnabled:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMssModificationEnabled()Z
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isNotificationEnable()Z
    .locals 3

    .prologue
    .line 384
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "pref_key_enable_notifications"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNotificationLedEnable()Z
    .locals 3

    .prologue
    .line 376
    sget-object v0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->isNotificationProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lcom/android/mms/MmsConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/NotificationUtil;->getIncomingMsgLedEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "semc_pref_key_notification_led_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isNotificationVibrateEnable()Z
    .locals 3

    .prologue
    .line 388
    sget-object v0, Lcom/android/mms/MmsConfig;->mSettings:Lcom/sonyericsson/conversations/settings/Settings;

    const-string v1, "pref_key_vibrate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSaveDraftDialogEnabled()Z
    .locals 1

    .prologue
    .line 344
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSaveDraftDialogEnabled:Z

    return v0
.end method

.method public static isSenderNameVisible()Z
    .locals 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSenderNameVisible:Z

    return v0
.end method

.method public static isSlideshowEditorEnabled()Z
    .locals 1

    .prologue
    .line 260
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mSlideshowEditorEnabled:Z

    return v0
.end method

.method public static declared-synchronized mockSettingsForTest(Lcom/sonyericsson/conversations/settings/Settings;Landroid/content/Context;)V
    .locals 3
    .param p0, "settings"    # Lcom/sonyericsson/conversations/settings/Settings;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 444
    const-class v1, Lcom/android/mms/MmsConfig;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 445
    :try_start_0
    const-string v0, "MmsConfig"

    const-string v2, "context is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_0
    monitor-exit v1

    return-void

    .line 449
    :cond_0
    :try_start_1
    invoke-static {p1, p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;Lcom/sonyericsson/conversations/settings/Settings;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setConversationsLinkifyEnabledForTest(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 272
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mConversationsLinkifyEnabled:Z

    .line 273
    return-void
.end method

.method public static setMMSPreviewEnabledForTest(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 428
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mMMSPreviewEnabled:Z

    .line 429
    return-void
.end method

.method public static setMaxSmsSegmentsForTest(I)V
    .locals 0
    .param p0, "maxSmsSegments"    # I

    .prologue
    .line 236
    sput p0, Lcom/android/mms/MmsConfig;->mMaxSmsSegmentsForTest:I

    .line 237
    return-void
.end method

.method public static setMmsEnabledForTest(I)V
    .locals 0
    .param p0, "mmsEnabled"    # I

    .prologue
    .line 264
    sput p0, Lcom/android/mms/MmsConfig;->mMmsEnabledForTest:I

    .line 265
    return-void
.end method

.method public static setMmsSubjectEnabledForTest(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 281
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mMmsSubjectEnabled:Z

    .line 282
    return-void
.end method

.method public static setSlideShowEnabledForTest(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 436
    sput-boolean p0, Lcom/android/mms/MmsConfig;->mSlideshowEditorEnabled:Z

    .line 437
    return-void
.end method

.method public static showParticipantsInMessageHeader()Z
    .locals 1

    .prologue
    .line 340
    sget-boolean v0, Lcom/android/mms/MmsConfig;->mShowParticipantsInMessageHeader:Z

    return v0
.end method
