.class public Lcom/sonymobile/china/collage/utils/SoundFeedback;
.super Ljava/lang/Object;
.source "SoundFeedback.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATION_DURATION:I = 0x32


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/utils/SoundFeedback;->init()V

    .line 46
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 51
    iget-object v1, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 59
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 60
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundId:I

    .line 64
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mVibrator:Landroid/os/Vibrator;

    .line 66
    return-void
.end method

.method public sound()V
    .locals 10

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 71
    .local v8, "streamVolumeCurrent":F
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 72
    .local v9, "streamVolumeMax":F
    div-float v2, v8, v9

    .line 73
    .local v2, "volume":F
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mSoundId:I

    const/high16 v6, 0x3f800000

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v7

    .line 86
    .local v7, "npe":Ljava/lang/NullPointerException;
    sget-object v0, Lcom/sonymobile/china/collage/utils/SoundFeedback;->TAG:Ljava/lang/String;

    const-string v1, "Failed to vibrate."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
