.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$3;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;->startPlaying()V
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
    .line 505
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$3;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$3;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$000(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1007

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 509
    return-void
.end method
