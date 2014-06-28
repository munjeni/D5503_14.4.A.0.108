.class public Landroid/media/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$NativeEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final SAMPLE_RATE_HZ_MAX:I = 0xbb80

.field private static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x4fc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field private static final VOLUME_MAX:F = 1.0f

.field private static final VOLUME_MIN:F


# instance fields
.field private mAudioFormat:I

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannels:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:I

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field private mNativeTrackInJavaObj:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 268
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 270
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 12
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 161
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 165
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 169
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 170
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 186
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 190
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 199
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 203
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 207
    const/4 v1, 0x4

    iput v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 213
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 217
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 313
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v11

    .local v11, "looper":Landroid/os/Looper;
    if-nez v11, :cond_0

    .line 314
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    .line 316
    :cond_0
    iput-object v11, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p6

    .line 318
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 320
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 322
    if-gez p7, :cond_1

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_1
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 327
    .local v9, "session":[I
    const/4 v1, 0x0

    aput p7, v9, v1

    .line 329
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget v3, p0, Landroid/media/AudioTrack;->mStreamType:I

    iget v4, p0, Landroid/media/AudioTrack;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioTrack;->mChannels:I

    iget v6, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iget v8, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;IIIIII[I)I

    move-result v10

    .line 332
    .local v10, "initResult":I
    if-eqz v10, :cond_2

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing AudioTrack."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 337
    :cond_2
    const/4 v1, 0x0

    aget v1, v9, v1

    iput v1, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 339
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_3

    .line 340
    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0

    .line 342
    :cond_3
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioTrack;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 5
    .param p1, "audioBufferSize"    # I

    .prologue
    const/4 v2, 0x1

    .line 484
    iget v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    mul-int v0, v3, v1

    .line 486
    .local v0, "frameSizeInBytes":I
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    if-ge p1, v2, :cond_2

    .line 487
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 484
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 490
    .restart local v0    # "frameSizeInBytes":I
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 491
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 492
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 370
    if-eq p1, v3, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stream type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :cond_0
    iput p1, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 383
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_1

    const v0, 0xbb80

    if-le p2, v0, :cond_2

    .line 384
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 391
    iput p3, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 393
    sparse-switch p3, :sswitch_data_0

    .line 406
    invoke-static {p3}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 408
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported channel configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :sswitch_0
    iput v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 398
    iput v3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 416
    :goto_0
    sparse-switch p4, :sswitch_data_1

    .line 431
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :sswitch_1
    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 403
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioTrack;->mChannels:I

    goto :goto_0

    .line 410
    :cond_3
    iput p3, p0, Landroid/media/AudioTrack;->mChannels:I

    .line 411
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 418
    :sswitch_2
    iput v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 437
    :goto_1
    if-eq p5, v1, :cond_4

    if-eqz p5, :cond_4

    .line 438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :sswitch_3
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    goto :goto_1

    .line 440
    :cond_4
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 441
    return-void

    .line 393
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 416
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x64 -> :sswitch_3
        0x65 -> :sswitch_3
        0x66 -> :sswitch_3
        0x67 -> :sswitch_3
        0x68 -> :sswitch_3
        0x69 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 533
    const/high16 v0, 0x3f800000

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 4
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v1, -0x2

    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 705
    and-int/lit16 v2, p1, 0x4fc

    if-eq v2, p1, :cond_1

    .line 707
    const-string v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 738
    :cond_0
    :goto_0
    return v1

    .line 698
    :sswitch_0
    const/4 v0, 0x1

    .line 714
    :goto_1
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/16 v2, 0x64

    if-eq p2, v2, :cond_2

    const/16 v2, 0x65

    if-eq p2, v2, :cond_2

    const/16 v2, 0x66

    if-eq p2, v2, :cond_2

    const/16 v2, 0x67

    if-eq p2, v2, :cond_2

    const/16 v2, 0x68

    if-eq p2, v2, :cond_2

    const/16 v2, 0x69

    if-eq p2, v2, :cond_2

    .line 722
    const-string v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :sswitch_1
    const/4 v0, 0x2

    .line 703
    goto :goto_1

    .line 710
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    goto :goto_1

    .line 727
    :cond_2
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_3

    const v2, 0xbb80

    if-le p0, v2, :cond_4

    .line 728
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_4
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 733
    .local v1, "size":I
    if-gtz v1, :cond_0

    .line 734
    const-string v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 735
    const/4 v1, -0x1

    goto :goto_0

    .line 695
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 671
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 5
    .param p0, "channelConfig"    # I

    .prologue
    const/4 v2, 0x0

    .line 450
    and-int/lit16 v3, p0, 0x4fc

    if-eq v3, p0, :cond_0

    .line 451
    const-string v3, "Channel configuration features unsupported channels"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 471
    :goto_0
    return v2

    .line 457
    :cond_0
    const/16 v1, 0xc

    .line 459
    .local v1, "frontPair":I
    and-int/lit8 v3, p0, 0xc

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 460
    const-string v3, "Front channels must be present in multichannel configurations"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    const/16 v0, 0xc0

    .line 465
    .local v0, "backPair":I
    and-int/lit16 v3, p0, 0xc0

    if-eqz v3, :cond_2

    .line 466
    and-int/lit16 v3, p0, 0xc0

    const/16 v4, 0xc0

    if-eq v3, v4, :cond_2

    .line 467
    const-string v3, "Rear channels can\'t be used independently"

    invoke-static {v3}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1398
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1402
    const-string v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_native_frame_count()I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_pause()V
.end method

.method private final native native_release()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)V
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;IIIIII[I)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIII)I
.end method

.method private final native native_write_short([SIII)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1316
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 1317
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 1322
    .local v0, "delegate":Landroid/media/AudioTrack$NativeEventHandlerDelegate;
    if-eqz v0, :cond_0

    .line 1323
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 1324
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 1325
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1326
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 1191
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1192
    const/4 v0, -0x3

    .line 1194
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 513
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 1062
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1064
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1067
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 555
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 748
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 575
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 664
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 623
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_native_frame_count()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 632
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 604
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    monitor-exit v1

    return v0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 652
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 547
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 640
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 6
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 775
    if-nez p1, :cond_0

    .line 776
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 779
    :cond_0
    const/4 v4, 0x2

    new-array v0, v4, [J

    .line 780
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 781
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 786
    :goto_0
    return v2

    .line 784
    :cond_1
    aget-wide v4, v0, v2

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 785
    aget-wide v4, v0, v3

    iput-wide v4, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    move v2, v3

    .line 786
    goto :goto_0
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1039
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1040
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1046
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1047
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1048
    monitor-exit v1

    .line 1049
    return-void

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 999
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1000
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "play() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1004
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 1005
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1006
    monitor-exit v1

    .line 1007
    return-void

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 502
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 508
    return-void

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1163
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    .line 1164
    :cond_0
    const/4 v0, -0x3

    .line 1166
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    goto :goto_0
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 1214
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1215
    const/4 v0, -0x3

    .line 1225
    :goto_0
    return v0

    .line 1218
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 1219
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 1221
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 1222
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 1224
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)V

    .line 1225
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    const/4 v1, 0x1

    .line 962
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 964
    :cond_0
    const/4 v0, -0x3

    .line 972
    :goto_0
    return v0

    .line 966
    :cond_1
    if-nez p3, :cond_3

    .line 972
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    goto :goto_0

    .line 968
    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-ge p1, v0, :cond_4

    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    .line 970
    :cond_4
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 901
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 902
    const/4 v0, -0x3

    .line 904
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .prologue
    const/4 v1, 0x1

    .line 932
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 934
    :cond_0
    const/4 v0, -0x3

    .line 939
    :goto_0
    return v0

    .line 936
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    .line 937
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 939
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 802
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 814
    if-eqz p1, :cond_0

    .line 815
    new-instance v0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    .line 819
    :goto_0
    return-void

    .line 817
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativeEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 881
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 882
    const/4 v0, -0x3

    .line 887
    :goto_0
    return v0

    .line 884
    :cond_0
    if-gtz p1, :cond_1

    .line 885
    const/4 v0, -0x2

    goto :goto_0

    .line 887
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 914
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 915
    const/4 v0, -0x3

    .line 917
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 984
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 985
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 833
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 834
    const/4 v0, -0x3

    .line 853
    :goto_0
    return v0

    .line 838
    :cond_0
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 839
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p1

    .line 841
    :cond_1
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 842
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p1

    .line 844
    :cond_2
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 845
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result p2

    .line 847
    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 848
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result p2

    .line 851
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 853
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 862
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1019
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_0

    .line 1020
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1025
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1026
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1027
    monitor-exit v1

    .line 1028
    return-void

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([BII)I
    .locals 3
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1089
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    .line 1090
    const/4 v0, -0x3

    .line 1108
    :cond_0
    :goto_0
    return v0

    .line 1093
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 1096
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1099
    :cond_3
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_byte([BIII)I

    move-result v0

    .line 1101
    .local v0, "ret":I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 1105
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method public write([SII)I
    .locals 3
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 1132
    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v1, :cond_1

    .line 1133
    const/4 v0, -0x3

    .line 1151
    :cond_0
    :goto_0
    return v0

    .line 1136
    :cond_1
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 1139
    :cond_2
    const/4 v0, -0x2

    goto :goto_0

    .line 1142
    :cond_3
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/media/AudioTrack;->native_write_short([SIII)I

    move-result v0

    .line 1144
    .local v0, "ret":I
    iget v1, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-lez v0, :cond_0

    .line 1148
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method
