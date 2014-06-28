.class Lcom/android/phone/SomcInCallScreen$3;
.super Landroid/content/BroadcastReceiver;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->onResume()V
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
    .line 902
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 905
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-boolean v2, v0, Lcom/android/phone/SomcInCallScreen;->mHeadsetConnected:Z

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2200(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/SomcSoundHandling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/SomcInCallScreen;->mHeadsetConnected:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2200(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/SomcSoundHandling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2200(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/SomcSoundHandling;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 912
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 913
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-boolean v3, v0, Lcom/android/phone/SomcInCallScreen;->mHeadsetConnected:Z

    .line 914
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$3;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto :goto_0
.end method
