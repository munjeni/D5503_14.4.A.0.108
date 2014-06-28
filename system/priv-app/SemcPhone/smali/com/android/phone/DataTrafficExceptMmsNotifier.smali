.class public Lcom/android/phone/DataTrafficExceptMmsNotifier;
.super Landroid/app/Service;
.source "DataTrafficExceptMmsNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;
    }
.end annotation


# instance fields
.field private mCanClearIcon:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mListener:Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;

.field private mNotificationId:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mShowDataTrafficDisabledIcon:Z

.field private mShowDataTrafficEnabledIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-object v2, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mListener:Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCurrentLanguage:Ljava/lang/String;

    .line 36
    iput-object v2, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCanClearIcon:Z

    .line 38
    iput-boolean v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mShowDataTrafficEnabledIcon:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mShowDataTrafficDisabledIcon:Z

    .line 40
    const/16 v0, 0x9ed

    iput v0, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mNotificationId:I

    .line 122
    return-void
.end method

.method private setDataTrafficNotification()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficExceptMmsNotifier;->on()V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/DataTrafficExceptMmsNotifier;->off()V

    goto :goto_0
.end method


# virtual methods
.method public off()V
    .locals 10

    .prologue
    const v9, 0x7f0b0092

    const/4 v8, 0x0

    .line 99
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "DataTrafficExceptMmsNotifier"

    const-string v5, "off()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 101
    .local v1, "nm":Landroid/app/NotificationManager;
    iget-boolean v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mShowDataTrafficDisabledIcon:Z

    if-nez v4, :cond_1

    .line 102
    iget v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mNotificationId:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 120
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v3, "settingsIntent":Landroid/content/Intent;
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.Settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    new-instance v2, Landroid/app/Notification;

    const v4, 0x7f0200a0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 110
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 111
    .local v0, "appIntent":Landroid/app/PendingIntent;
    const v4, 0x7f0b008c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 115
    iget-boolean v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCanClearIcon:Z

    if-nez v4, :cond_2

    .line 116
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 118
    :cond_2
    iget v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mNotificationId:I

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public on()V
    .locals 10

    .prologue
    const v9, 0x7f0b0091

    const/4 v8, 0x0

    .line 73
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "DataTrafficExceptMmsNotifier"

    const-string v5, "on()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 75
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v3, "settingsIntent":Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mShowDataTrafficEnabledIcon:Z

    if-nez v4, :cond_1

    .line 79
    iget v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mNotificationId:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 96
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.Settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    new-instance v2, Landroid/app/Notification;

    const v4, 0x7f0200a1

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 86
    .local v2, "notification":Landroid/app/Notification;
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 87
    .local v0, "appIntent":Landroid/app/PendingIntent;
    const v4, 0x7f0b008c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, p0, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    iget-boolean v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCanClearIcon:Z

    if-nez v4, :cond_2

    .line 92
    iget v4, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/app/Notification;->flags:I

    .line 94
    :cond_2
    iget v4, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mNotificationId:I

    invoke-virtual {v1, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "language":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iput-object v0, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCurrentLanguage:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/android/phone/DataTrafficExceptMmsNotifier;->setDataTrafficNotification()V

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 152
    return-void
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 50
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "DataTrafficExceptMmsNotifier"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    new-instance v1, Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;

    invoke-direct {v1, p0}, Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;-><init>(Lcom/android/phone/DataTrafficExceptMmsNotifier;)V

    iput-object v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mListener:Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sonyericsson.net.conn.MOBILE_DATA_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mListener:Lcom/android/phone/DataTrafficExceptMmsNotifier$Listener;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 63
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mCanClearIcon:Z

    .line 64
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mShowDataTrafficEnabledIcon:Z

    .line 66
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mShowDataTrafficDisabledIcon:Z

    .line 68
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/phone/DataTrafficExceptMmsNotifier;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    invoke-direct {p0}, Lcom/android/phone/DataTrafficExceptMmsNotifier;->setDataTrafficNotification()V

    .line 70
    return-void
.end method
