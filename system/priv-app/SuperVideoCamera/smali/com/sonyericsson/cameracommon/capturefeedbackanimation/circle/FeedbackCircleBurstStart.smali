.class public Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStart;
.super Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;
.source "FeedbackCircleBurstStart.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStart;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleBurstStart;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;-><init>()V

    return-void
.end method


# virtual methods
.method protected onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 27
    return-void
.end method

.method protected start()V
    .locals 0

    .prologue
    .line 21
    invoke-super {p0}, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/circle/FeedbackCircleSingle;->start()V

    .line 22
    return-void
.end method
