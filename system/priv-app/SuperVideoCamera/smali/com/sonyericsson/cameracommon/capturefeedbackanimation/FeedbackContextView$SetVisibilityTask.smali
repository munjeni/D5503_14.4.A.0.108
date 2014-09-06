.class Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;
.super Ljava/lang/Object;
.source "FeedbackContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetVisibilityTask"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field mIsVisible:Z

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;Z)V
    .locals 1
    .param p2, "isVisible"    # Z

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-class v0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;->TAG:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;->mIsVisible:Z

    .line 119
    iput-boolean p2, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;->mIsVisible:Z

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView;

    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/capturefeedbackanimation/FeedbackContextView$SetVisibilityTask;->mIsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
