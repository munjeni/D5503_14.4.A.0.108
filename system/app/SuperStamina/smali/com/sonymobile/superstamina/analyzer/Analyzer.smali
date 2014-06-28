.class public Lcom/sonymobile/superstamina/analyzer/Analyzer;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "Analyzer.java"

# interfaces
.implements Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;


# static fields
.field private static final KEY_REMINDERS_MASK:Ljava/lang/String; = "reminders_mask"

.field private static final KEY_REMINDERS_ON:Ljava/lang/String; = "reminders_on"

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-AnalyzerPlugin"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

.field private mPlugins:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mRemindersMask:I

.field private mRemindersOn:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    .line 54
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    .line 59
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPreferences:Landroid/content/SharedPreferences;

    .line 62
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/NotificationController;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/superstamina/analyzer/NotificationController;-><init>(Landroid/content/Context;Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    .line 65
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "reminders_mask"

    iget v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    .line 66
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "reminders_on"

    iget-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    .line 67
    return-void
.end method

.method private static logIddReminder(I)V
    .locals 4
    .param p0, "id"    # I

    .prologue
    .line 220
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 221
    .local v1, "elapsed":J
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    .line 222
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    .line 225
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;)V
    .locals 1
    .param p1, "plugin"    # Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public areRemindersEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    return v0
.end method

.method public debug([Ljava/lang/String;)I
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    aget-object v0, p1, v3

    .line 235
    .local v0, "cmd":Ljava/lang/String;
    const-string v4, "notification"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 236
    array-length v4, p1

    if-eq v4, v5, :cond_0

    .line 237
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Usage: notification <id>"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_0
    aget-object v1, p1, v2

    .line 240
    .local v1, "id":Ljava/lang/String;
    const-string v4, "xssm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-virtual {v4, v3}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->notifyUser(I)V

    .line 253
    .end local v1    # "id":Ljava/lang/String;
    :goto_0
    return v2

    .line 243
    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    const-string v3, "lbwifi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-virtual {v3, v2}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->notifyUser(I)V

    goto :goto_0

    .line 246
    :cond_2
    const-string v3, "powersave"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-virtual {v3, v5}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->notifyUser(I)V

    goto :goto_0

    .line 250
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid notification id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1    # "id":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 253
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 257
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 258
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 260
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public enableReminders(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    if-eq v0, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    .line 150
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->saveSettings()V

    .line 152
    :cond_0
    return-void
.end method

.method public getBuilder(I)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 183
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "builder":Landroid/app/Notification$Builder;
    packed-switch p1, :pswitch_data_0

    .line 205
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown notification id"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 187
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 188
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v3, 0x7f050013

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 207
    :goto_0
    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 208
    const v1, 0x7f020009

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v3, 0x7f050014

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-virtual {v3, p1}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->getActionIntent(I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 212
    return-object v0

    .line 192
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v2, 0x7f050018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 193
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 194
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v3, 0x7f05001a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v2, 0x7f050015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 199
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 200
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    const v3, 0x7f050017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isReminderEnabled(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 155
    shl-int v0, v1, p1

    .line 156
    .local v0, "bit":I
    iget v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAction(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->setReminderEnabled(IZ)V

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public onBatteryChanged(IZ)V
    .locals 3
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 117
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 118
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1, p2}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onBatteryChanged(IZ)V

    goto :goto_0

    .line 120
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public onContent(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.intent.action.POWER_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public onPowerSaverActivated(Z)V
    .locals 3
    .param p1, "activated"    # Z

    .prologue
    .line 110
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 111
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onPowerSaverActivated(Z)V

    goto :goto_0

    .line 113
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public onPowerSaverEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 103
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 104
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onPowerSaverEnabled(Z)V

    goto :goto_0

    .line 106
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 124
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 125
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onScreenOn(Z)V

    goto :goto_0

    .line 127
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public onXssmActivated(Z)V
    .locals 3
    .param p1, "activated"    # Z

    .prologue
    .line 89
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 90
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onXssmActivated(Z)V

    goto :goto_0

    .line 92
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public onXssmEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 83
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onXssmEnabled(Z)V

    goto :goto_0

    .line 85
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V
    .locals 3
    .param p1, "state"    # Lcom/sonymobile/superstamina/xssm/PowerState;

    .prologue
    .line 96
    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPlugins:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;

    .line 97
    .local v1, "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    invoke-virtual {v1, p1}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;->onXssmStateChanged(Lcom/sonymobile/superstamina/xssm/PowerState;)V

    goto :goto_0

    .line 99
    .end local v1    # "plugin":Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
    :cond_0
    return-void
.end method

.method public saveSettings()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "reminders_on"

    iget-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v1, "reminders_mask"

    iget v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 74
    return-void
.end method

.method public setReminderEnabled(IZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 130
    const/4 v2, 0x1

    shl-int v0, v2, p1

    .line 131
    .local v0, "bit":I
    iget v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    .line 132
    .local v1, "mask":I
    if-eqz p2, :cond_1

    .line 133
    or-int/2addr v1, v0

    .line 137
    :goto_0
    iget v2, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    if-eq v1, v2, :cond_0

    .line 138
    iput v1, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersMask:I

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->saveSettings()V

    .line 141
    :cond_0
    return-void

    .line 135
    :cond_1
    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public triggerReminder(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mRemindersOn:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->isReminderEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/Analyzer;->mNotificationController:Lcom/sonymobile/superstamina/analyzer/NotificationController;

    invoke-virtual {v0, p1}, Lcom/sonymobile/superstamina/analyzer/NotificationController;->notifyUser(I)V

    .line 165
    invoke-static {p1}, Lcom/sonymobile/superstamina/analyzer/Analyzer;->logIddReminder(I)V

    goto :goto_0
.end method
