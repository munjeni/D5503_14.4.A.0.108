.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "OutgoingCallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    const-string v4, "android.phone.extra.ALREADY_CALLED"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 152
    .local v0, "alreadyCalled":Z
    if-eqz v0, :cond_2

    .line 153
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OutgoingCallReceiver"

    const-string v5, "CALL already placed -- returning."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "number":Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_3

    const-string v4, "OutgoingCallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- got number from resultData: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_3
    if-nez v1, :cond_4

    .line 165
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "OutgoingCallReceiver"

    const-string v5, "CALL cancelled (null number), returning..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_4
    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->filterNumberPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    const-string v4, "OutgoingCallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot modify outgoing call to emergency number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_5
    const-string v4, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "originalUri":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 180
    const-string v4, "OutgoingCallReceiver"

    const-string v5, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 191
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_7

    const-string v4, "OutgoingCallReceiver"

    const-string v5, "doReceive: proceeding with call..."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_7
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_8

    const-string v4, "OutgoingCallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_8
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_9

    const-string v4, "OutgoingCallReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- actual number to dial: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_9
    iget-object v4, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # invokes: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v4, p1, p2, v3, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->access$200(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    # getter for: Lcom/android/phone/OutgoingCallBroadcaster;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 137
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "OutgoingCallReceiver"

    const-string v1, "OutgoingCallReceiver is going to finish the Activity itself."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 141
    return-void
.end method
