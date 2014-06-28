.class Lcom/android/phone/PhoneGlobals$4;
.super Ljava/lang/Object;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/android/phone/PhoneGlobals$WakeupAlarm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneGlobals;->initWakeupAlarm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWakeupAlarmIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;

.field final synthetic val$interval:I


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;I)V
    .locals 0

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    iput p2, p0, Lcom/android/phone/PhoneGlobals$4;->val$interval:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized startWakeupAlarm()V
    .locals 8

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->mWakeupAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1031
    :goto_0
    monitor-exit p0

    return-void

    .line 1023
    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startWakeupAlarm: interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/PhoneGlobals$4;->val$interval:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1026
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.android.phone.intent.ACTION_WAKEUP_ALARM"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v7, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v7, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->mWakeupAlarmIntent:Landroid/app/PendingIntent;

    .line 1029
    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget v4, p0, Lcom/android/phone/PhoneGlobals$4;->val$interval:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/phone/PhoneGlobals$4;->mWakeupAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1022
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v7    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopWakeupAlarm()V
    .locals 3

    .prologue
    .line 1034
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    const-string v2, "stopWakeupAlarm"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->mWakeupAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1038
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->mWakeupAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1039
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals$4;->mWakeupAlarmIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1041
    .end local v0    # "am":Landroid/app/AlarmManager;
    :cond_1
    monitor-exit p0

    return-void

    .line 1034
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
