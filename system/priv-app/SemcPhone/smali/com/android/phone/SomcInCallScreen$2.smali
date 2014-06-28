.class Lcom/android/phone/SomcInCallScreen$2;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$2;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    .line 561
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$2;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$2;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$2;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/SomcInCallScreen;->access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v1}, Lcom/android/phone/SomcCallRecorder;->getDuration()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setCallRecordingTime(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$2;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1800(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
