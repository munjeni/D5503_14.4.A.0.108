.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory;
.super Ljava/lang/Object;
.source "FeedbackFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$1;,
        Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static createAnimation(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;)Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    .locals 3
    .param p0, "type"    # Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$Type;

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 29
    .local v0, "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    sget-object v1, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackFactory$1;->$SwitchMap$com$sonyericsson$cameracommon$capturefeedbackanimation$FeedbackFactory$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 42
    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;

    .end local v0    # "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;-><init>()V

    .line 32
    .restart local v0    # "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    goto :goto_0

    .line 35
    :pswitch_1
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStart;

    .end local v0    # "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStart;-><init>()V

    .line 36
    .restart local v0    # "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    goto :goto_0

    .line 39
    :pswitch_2
    new-instance v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;

    .end local v0    # "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStop;-><init>()V

    .restart local v0    # "animationBase":Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackBase;
    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
