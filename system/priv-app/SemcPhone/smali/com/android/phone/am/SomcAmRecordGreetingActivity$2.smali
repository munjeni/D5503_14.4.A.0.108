.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Lcom/android/phone/SomcCallRecorder$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;->startRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotEnoughStorage()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1098

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$1;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public onRecorderStart()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 352
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$500(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$502(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Ljava/util/Timer;)Ljava/util/Timer;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$500(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$RecordCounterTask;

    iget-object v4, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$RecordCounterTask;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 356
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    const-wide/16 v2, 0x7724

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 357
    return-void
.end method

.method public onRecorderStop()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1098

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 360
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0174

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    return-void
.end method

.method public onResourceOccupied()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1098

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    new-instance v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$2;

    invoke-direct {v1, p0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$2$2;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 374
    return-void
.end method
