.class Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;
.super Landroid/os/Handler;
.source "SomcTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;->this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 247
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;->this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    iget-object v0, v0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->this$0:Lcom/android/phone/SomcTonePlayer;

    # invokes: Lcom/android/phone/SomcTonePlayer;->createToneGenerator()V
    invoke-static {v0}, Lcom/android/phone/SomcTonePlayer;->access$000(Lcom/android/phone/SomcTonePlayer;)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;->this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    iget-object v1, v0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->this$0:Lcom/android/phone/SomcTonePlayer;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/SomcTonePlayer$Tone;

    iget v2, v0, Lcom/android/phone/SomcTonePlayer$Tone;->tone:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/phone/SomcTonePlayer$Tone;

    iget v0, v0, Lcom/android/phone/SomcTonePlayer$Tone;->duration:I

    # invokes: Lcom/android/phone/SomcTonePlayer;->startTonePlaying(II)V
    invoke-static {v1, v2, v0}, Lcom/android/phone/SomcTonePlayer;->access$100(Lcom/android/phone/SomcTonePlayer;II)V

    goto :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;->this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    iget-object v0, v0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->this$0:Lcom/android/phone/SomcTonePlayer;

    # invokes: Lcom/android/phone/SomcTonePlayer;->stopTonePlaying()V
    invoke-static {v0}, Lcom/android/phone/SomcTonePlayer;->access$200(Lcom/android/phone/SomcTonePlayer;)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;->this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    iget-object v0, v0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->this$0:Lcom/android/phone/SomcTonePlayer;

    # invokes: Lcom/android/phone/SomcTonePlayer;->releaseToneGenerator()V
    invoke-static {v0}, Lcom/android/phone/SomcTonePlayer;->access$300(Lcom/android/phone/SomcTonePlayer;)V

    goto :goto_0

    .line 242
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread$1;->this$1:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->stopThread()V

    goto :goto_0

    .line 228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
