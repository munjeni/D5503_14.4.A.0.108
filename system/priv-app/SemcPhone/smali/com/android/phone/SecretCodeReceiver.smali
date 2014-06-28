.class public Lcom/android/phone/SecretCodeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SecretCodeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 31
    const-string v0, "ro.debuggable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "746632"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    const v0, 0x7f0b01a1

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 41
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 42
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/phone/PhoneGlobals;->setDebugLevel(I)V

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 43
    :cond_2
    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "746631"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    const v0, 0x7f0b01a2

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 48
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->setDebugLevel(I)V

    goto :goto_1

    .line 49
    :cond_3
    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "746630"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 52
    const v0, 0x7f0b01a3

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 53
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    .line 54
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->setDebugLevel(I)V

    goto :goto_1

    .line 55
    :cond_4
    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "78378"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 60
    const-class v1, Lcom/android/phone/SomcTestUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
