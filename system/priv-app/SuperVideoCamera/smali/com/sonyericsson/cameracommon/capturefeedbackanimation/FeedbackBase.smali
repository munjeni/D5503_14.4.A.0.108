.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
.super Ljava/lang/Object;
.source "FeedbackBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mBaseMilliSec:J

.field protected mIsVisible:Z

.field protected mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    return-void
.end method


# virtual methods
.method protected calculateProgress(J)F
    .locals 8
    .param p1, "duration"    # J

    .prologue
    .line 41
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mBaseMilliSec:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mBaseMilliSec:J

    .line 44
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 45
    .local v2, "nowMilliSec":J
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mBaseMilliSec:J

    sub-long v0, v2, v4

    .line 47
    .local v0, "elapsedTime":J
    long-to-float v4, v0

    long-to-float v5, p1

    div-float/2addr v4, v5

    return v4
.end method

.method protected onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 38
    return-void
.end method

.method protected setListener(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mListener:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase$FeedbackListener;

    .line 29
    return-void
.end method

.method protected start()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mBaseMilliSec:J

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;->mIsVisible:Z

    .line 34
    return-void
.end method
