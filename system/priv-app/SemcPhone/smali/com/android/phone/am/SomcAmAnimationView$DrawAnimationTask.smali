.class Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;
.super Ljava/util/TimerTask;
.source "SomcAmAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawAnimationTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmAnimationView;


# direct methods
.method private constructor <init>(Lcom/android/phone/am/SomcAmAnimationView;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/am/SomcAmAnimationView;Lcom/android/phone/am/SomcAmAnimationView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/am/SomcAmAnimationView;
    .param p2, "x1"    # Lcom/android/phone/am/SomcAmAnimationView$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;-><init>(Lcom/android/phone/am/SomcAmAnimationView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F
    invoke-static {v0}, Lcom/android/phone/am/SomcAmAnimationView;->access$000(Lcom/android/phone/am/SomcAmAnimationView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    iget-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F
    invoke-static {v1}, Lcom/android/phone/am/SomcAmAnimationView;->access$100(Lcom/android/phone/am/SomcAmAnimationView;)F

    move-result v1

    const v2, 0x4639a000

    iget-object v3, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mDurationOfFullCircle:F
    invoke-static {v3}, Lcom/android/phone/am/SomcAmAnimationView;->access$000(Lcom/android/phone/am/SomcAmAnimationView;)F

    move-result v3

    const/high16 v4, 0x447a0000

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F
    invoke-static {v0, v1}, Lcom/android/phone/am/SomcAmAnimationView;->access$102(Lcom/android/phone/am/SomcAmAnimationView;F)F

    .line 39
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmAnimationView;->access$300(Lcom/android/phone/am/SomcAmAnimationView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mDrawRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/phone/am/SomcAmAnimationView;->access$200(Lcom/android/phone/am/SomcAmAnimationView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mAnimationAngle:F
    invoke-static {v0}, Lcom/android/phone/am/SomcAmAnimationView;->access$100(Lcom/android/phone/am/SomcAmAnimationView;)F

    move-result v0

    const/high16 v1, 0x43b40000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    # getter for: Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmAnimationView;->access$400(Lcom/android/phone/am/SomcAmAnimationView;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 42
    iget-object v0, p0, Lcom/android/phone/am/SomcAmAnimationView$DrawAnimationTask;->this$0:Lcom/android/phone/am/SomcAmAnimationView;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/am/SomcAmAnimationView;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/phone/am/SomcAmAnimationView;->access$402(Lcom/android/phone/am/SomcAmAnimationView;Ljava/util/Timer;)Ljava/util/Timer;

    goto :goto_0
.end method
