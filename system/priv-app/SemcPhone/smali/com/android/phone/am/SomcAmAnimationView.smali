.class public Lcom/android/phone/am/SomcAmAnimationView;
.super Landroid/view/View;
.source "SomcAmAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;
    }
.end annotation


# instance fields
.field private mAnimationAngle:F

.field private mContext:Landroid/content/Context;

.field private final mDrawRunnable:Ljava/lang/Runnable;

.field private mDurationOfFullCircle:F

.field private mMainHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectf:Landroid/graphics/RectF;

.field private mRoundColor:I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRoundColor:I

    .line 58
    iput v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    .line 59
    iput v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 60
    iput-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    .line 61
    iput-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iput-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/phone/am/SomcAmAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmAnimationView$1;-><init>(Lcom/android/phone/am/SomcAmAnimationView;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmAnimationView;->prepareAnimation()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    .line 57
    iput v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRoundColor:I

    .line 58
    iput v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    .line 59
    iput v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 60
    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    .line 61
    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/android/phone/am/SomcAmAnimationView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/am/SomcAmAnimationView$1;-><init>(Lcom/android/phone/am/SomcAmAnimationView;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    .line 82
    iput-object p1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmAnimationView;->prepareAnimation()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/am/SomcAmAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/am/SomcAmAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/am/SomcAmAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/am/SomcAmAnimationView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/am/SomcAmAnimationView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/am/SomcAmAnimationView;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/phone/am/SomcAmAnimationView;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method private calculateMessageTime()I
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 131
    iget-object v8, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    const-string v9, "com.android.phone_preferences"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 133
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-string v8, "key_am_greetings"

    const/4 v9, -0x1

    invoke-interface {v5, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 135
    .local v6, "selectedGreeting":I
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;

    iget-object v8, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;-><init>(Landroid/content/Context;)V

    .line 136
    .local v0, "dbAdapter":Lcom/android/phone/am/SomcAmGreetingDbAdapter;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->open()Z

    move-result v8

    if-nez v8, :cond_1

    .line 137
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 138
    const-string v8, "SomcAmAnimationView"

    const-string v9, "SomcAmGreetingDbAdapter open() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    move v3, v7

    .line 160
    :goto_0
    return v3

    .line 143
    :cond_1
    invoke-virtual {v0, v6}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getSelectedGreetingFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "messagePath":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->close()V

    .line 145
    const/4 v3, 0x0

    .line 146
    .local v3, "messageTime":I
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    .line 147
    .local v4, "player":Landroid/media/MediaPlayer;
    if-nez v4, :cond_3

    .line 148
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "SomcAmAnimationView"

    const-string v9, "Failed to create MediaPlayer"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v3, v7

    .line 149
    goto :goto_0

    .line 152
    :cond_3
    :try_start_0
    invoke-virtual {v4, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V

    .line 154
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    div-int/lit16 v3, v7, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getVdbg()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "SomcAmAnimationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception with Media Player"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_4
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->release()V

    throw v7
.end method

.method private calculateResumeAngle(F)F
    .locals 3
    .param p1, "millisecond"    # F

    .prologue
    .line 164
    const/high16 v0, 0x43b40000

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private prepareAnimation()V
    .locals 9

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v0, v4

    .line 89
    .local v0, "centerXCoordinate":F
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v1, v4

    .line 91
    .local v1, "centerYCoordinate":F
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v2, v4

    .line 93
    .local v2, "radius":F
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v3, v4

    .line 96
    .local v3, "strokeWidth":F
    new-instance v4, Landroid/graphics/RectF;

    sub-float v5, v1, v2

    sub-float v6, v0, v2

    add-float v7, v1, v2

    add-float v8, v0, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    .line 99
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v4, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v4, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v4, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 194
    iput-object v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 196
    :cond_0
    iput-object v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mContext:Landroid/content/Context;

    .line 197
    iput-object v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    .line 198
    iput-object v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 199
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    iput-object v2, p0, Lcom/android/phone/am/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRoundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRectf:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000

    iget v3, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/am/SomcAmAnimationView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 108
    return-void
.end method

.method public resetPlayingAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 187
    :cond_0
    iput v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    .line 188
    iput v1, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 189
    return-void
.end method

.method public resumePlayingAnimation(F)V
    .locals 7
    .param p1, "resumeTime"    # F

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/phone/am/SomcAmAnimationView;->calculateMessageTime()I

    move-result v6

    .line 117
    .local v6, "messageTime":I
    if-lez v6, :cond_1

    .line 118
    int-to-float v0, v6

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 122
    const v0, -0x7944e6

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRoundColor:I

    .line 123
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 126
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmAnimationView;->calculateResumeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    .line 127
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;-><init>(Lcom/android/phone/am/SomcAmAnimationView;Lcom/android/phone/am/SomcAmAnimationView$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 128
    :cond_1
    return-void
.end method

.method public resumeRecordingAnimation(F)V
    .locals 6
    .param p1, "resumeTime"    # F

    .prologue
    .line 173
    const v0, -0x26dfe9

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mRoundColor:I

    .line 174
    const/high16 v0, 0x42700000

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F

    .line 175
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmAnimationView;->calculateResumeAngle(F)F

    move-result v0

    iput v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F

    .line 176
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;-><init>(Lcom/android/phone/am/SomcAmAnimationView;Lcom/android/phone/am/SomcAmAnimationView$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 180
    return-void
.end method

.method public startPlayingAnimation()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/am/SomcAmAnimationView;->resumePlayingAnimation(F)V

    .line 113
    return-void
.end method

.method public startRecordingAnimation()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/am/SomcAmAnimationView;->resumeRecordingAnimation(F)V

    .line 170
    return-void
.end method
