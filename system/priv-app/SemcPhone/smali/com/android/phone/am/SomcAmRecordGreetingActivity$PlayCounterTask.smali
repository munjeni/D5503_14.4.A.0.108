.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;
.super Ljava/util/TimerTask;
.source "SomcAmRecordGreetingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayCounterTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;


# direct methods
.method private constructor <init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity;
    .param p2, "x1"    # Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;-><init>(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$PlayCounterTask;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1008

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 74
    :cond_0
    return-void
.end method
