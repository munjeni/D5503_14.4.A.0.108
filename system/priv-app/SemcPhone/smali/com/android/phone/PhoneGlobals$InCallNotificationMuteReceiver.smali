.class Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallNotificationMuteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/PhoneGlobals$1;

    .prologue
    .line 2131
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2134
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2135
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.phone.ACTION_SET_MUTE_FROM_NOTIFICATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2136
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2137
    const-string v1, "PhoneApp"

    const-string v2, "InCallNotificationMuteReceiver: ACTION_MUTE_ONGOING_CALL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2144
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2146
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/SomcInCallScreen;->updateMicIsMuted()V

    .line 2148
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 2150
    :cond_2
    return-void

    .line 2139
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
