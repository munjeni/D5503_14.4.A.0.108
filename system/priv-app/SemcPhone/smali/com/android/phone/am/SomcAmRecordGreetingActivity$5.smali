.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;->initViews()V
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
    .line 569
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$800(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->WAIT_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$800(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->FINISH_RECORDING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v0, v1, :cond_2

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 577
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mState:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$800(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    move-result-object v0

    sget-object v1, Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;->RECORD_GREETING:Lcom/android/phone/am/SomcAmRecordGreetingActivity$CurrentScreenStatus;

    if-ne v0, v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$5;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
