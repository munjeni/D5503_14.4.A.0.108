.class Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;
.super Ljava/lang/Object;
.source "SomcAmRecordGreetingActivity.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmRecordGreetingActivity;
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
    .line 260
    iput-object p1, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 262
    packed-switch p1, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$100(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/SomcCallRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mRecorder:Lcom/android/phone/SomcCallRecorder;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$100(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Lcom/android/phone/SomcCallRecorder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # invokes: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopRecording()V
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$200(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$300(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # getter for: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->mPlayer:Landroid/media/MediaPlayer;
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$300(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/phone/am/SomcAmRecordGreetingActivity$1;->this$0:Lcom/android/phone/am/SomcAmRecordGreetingActivity;

    # invokes: Lcom/android/phone/am/SomcAmRecordGreetingActivity;->stopPlaying()V
    invoke-static {v0}, Lcom/android/phone/am/SomcAmRecordGreetingActivity;->access$400(Lcom/android/phone/am/SomcAmRecordGreetingActivity;)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
