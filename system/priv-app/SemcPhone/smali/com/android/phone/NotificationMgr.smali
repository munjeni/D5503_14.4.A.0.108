.class public Lcom/android/phone/NotificationMgr;
.super Ljava/lang/Object;
.source "NotificationMgr.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$1;,
        Lcom/android/phone/NotificationMgr$QueryHandler;,
        Lcom/android/phone/NotificationMgr$StatusBarHelper;
    }
.end annotation


# static fields
.field private static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NotificationMgr;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mInCallResId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNumberAnswerMachine:I

.field private mNumberMissedCalls:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

.field private mSelectedUnavailableNotify:Z

.field private mShowVoicemailNotificationText:Z

.field private mShowingMuteIcon:Z

.field private mShowingSpeakerphoneIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mToast:Landroid/widget/Toast;

.field private mVmNumberRetriesRemaining:I

.field public statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "presentation"

    aput-object v1, v0, v5

    const-string v1, "date"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 358
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 119
    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    .line 126
    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowVoicemailNotificationText:Z

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    .line 137
    iput-object v1, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 154
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 155
    iput-object p1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    .line 156
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    .line 158
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 159
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 160
    iget-object v0, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 161
    new-instance v0, Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    .line 164
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowVoicemailNotificationText:Z

    .line 166
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/NotificationMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/NotificationMgr;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 1439
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelInCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1441
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1442
    return-void
.end method

.method private cancelMute()V
    .locals 2

    .prologue
    .line 892
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 896
    :cond_0
    return-void
.end method

.method private cancelNetworkSelection()V
    .locals 2

    .prologue
    .line 1713
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelNetworkSelection()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1715
    return-void
.end method

.method private cancelSpeakerphone()V
    .locals 2

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 827
    :cond_0
    return-void
.end method

.method private static configureLedNotification(Landroid/app/Notification;)V
    .locals 1
    .param p0, "note"    # Landroid/app/Notification;

    .prologue
    .line 589
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification;->ledARGB:I

    .line 590
    const/16 v0, 0x64

    iput v0, p0, Landroid/app/Notification;->ledOnMS:I

    .line 591
    const/16 v0, 0x1770

    iput v0, p0, Landroid/app/Notification;->ledOffMS:I

    .line 592
    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 593
    return-void
.end method

.method private createClearAnsweringMachineIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 800
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/am/ClearAmNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    const-string v1, "com.android.phone.intent.ACTION_CLEAR_AM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 802
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createClearMissedCallsIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 733
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/ClearMissedCallsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 734
    const-string v1, "com.android.phone.intent.CLEAR_MISSED_CALLS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;
    .locals 4

    .prologue
    .line 177
    const-class v1, Lcom/android/phone/NotificationMgr;

    monitor-enter v1

    .line 178
    :try_start_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/android/phone/NotificationMgr;

    invoke-direct {v0, p0}, Lcom/android/phone/NotificationMgr;-><init>(Lcom/android/phone/PhoneGlobals;)V

    sput-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    .line 181
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-direct {v0}, Lcom/android/phone/NotificationMgr;->updateNotificationsAtStartup()V

    .line 185
    :goto_0
    sget-object v0, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    monitor-exit v1

    return-object v0

    .line 183
    :cond_0
    const-string v0, "NotificationMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/NotificationMgr;->sInstance:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1764
    const-string v0, "NotificationMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    return-void
.end method

.method private notifyMute()V
    .locals 5

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    const v2, 0x1080076

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingMuteIcon:Z

    .line 889
    :cond_0
    return-void
.end method

.method private notifySpeakerphone()V
    .locals 5

    .prologue
    .line 815
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    if-nez v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    const v2, 0x1080087

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mShowingSpeakerphoneIcon:Z

    .line 820
    :cond_0
    return-void
.end method

.method private showNetworkSelection()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1684
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0387

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1686
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0388

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1689
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1690
    const v3, 0x108008a

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1691
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1692
    const/4 v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1693
    const/4 v3, 0x0

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1696
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    const/high16 v4, 0x10200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1700
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.phone"

    const-string v6, "com.android.phone.NetworkSetting"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1702
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1704
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1706
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1707
    return-void
.end method

.method private updateInCallNotification(Z)V
    .locals 12

    .prologue
    .line 992
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 998
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_2

    .line 999
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- non-voice-capable device; suppressing notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1402
    :cond_1
    :goto_0
    return-void

    .line 1005
    :cond_2
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_3

    .line 1006
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1007
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1008
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0

    .line 1012
    :cond_3
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 1013
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    .line 1014
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    .line 1015
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - hasRingingCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - hasActiveCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - hasHoldingCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1025
    :cond_4
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    .line 1037
    if-eqz v4, :cond_5

    const/4 v0, 0x0

    .line 1041
    :cond_5
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getVoicePrivacyState()Z

    move-result v1

    .line 1043
    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 1045
    :cond_6
    if-eqz v0, :cond_8

    .line 1046
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_7

    .line 1047
    const-string v0, "- suppressNotification = true; reducing clutter in status bar..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1049
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1052
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 1053
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto/16 :goto_0

    .line 1060
    :cond_8
    if-eqz v4, :cond_19

    .line 1062
    const v0, 0x7f02013b

    .line 1084
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Updating status bar icon: resId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1085
    :cond_9
    iput v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    .line 1096
    if-eqz v4, :cond_1d

    .line 1097
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    .line 1103
    :goto_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 1105
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1106
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1113
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v9, 0x0

    invoke-static {v0, v2, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1115
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1120
    const/4 v2, 0x0

    .line 1121
    if-eqz v7, :cond_21

    .line 1122
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1123
    instance-of v3, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1f

    .line 1124
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v3, v0

    .line 1131
    :goto_3
    const/4 v2, 0x0

    .line 1132
    if-eqz v7, :cond_c

    .line 1136
    const/4 v0, 0x0

    .line 1137
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 1138
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v11

    if-eqz v11, :cond_22

    .line 1139
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "use confernce call icon for large icon"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1140
    :cond_a
    const v0, 0x7f020094

    .line 1151
    :cond_b
    :goto_4
    if-eqz v0, :cond_c

    .line 1152
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1153
    instance-of v10, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_c

    .line 1154
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1155
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1156
    const/4 v2, 0x1

    .line 1160
    :cond_c
    if-eqz v3, :cond_2b

    .line 1163
    if-nez v2, :cond_d

    iget-boolean v0, v3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_d

    .line 1167
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_26

    .line 1168
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1169
    const/4 v2, 0x1

    .line 1185
    :cond_d
    :goto_5
    if-nez v2, :cond_f

    iget v0, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-lez v0, :cond_f

    .line 1186
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- BitmapDrawable nor person Id not found for large icon. Use photoResource: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1190
    :cond_e
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, v3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1192
    instance-of v3, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_29

    .line 1193
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1194
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1195
    const/4 v0, 0x1

    :goto_6
    move v2, v0

    .line 1210
    :cond_f
    :goto_7
    if-nez v2, :cond_11

    .line 1211
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_10

    .line 1212
    const-string v0, "- No useful Bitmap was found for the photo. Use the default contact photo in the notification."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1215
    :cond_10
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1217
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_11

    .line 1218
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1219
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1226
    :cond_11
    if-eqz v7, :cond_2f

    .line 1227
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "- Updating context text and chronometer."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1228
    :cond_12
    if-eqz v4, :cond_2c

    .line 1230
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0382

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1231
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 1269
    :cond_13
    :goto_8
    const-string v0, ""

    .line 1274
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1276
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0374

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1290
    :goto_9
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_14

    .line 1291
    const-string v1, "- Updating expanded view: line 2 \'xxxxxxx\'"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1293
    :cond_14
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1303
    if-eqz v4, :cond_31

    .line 1304
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_15

    const-string v1, "- Using hi-pri notification for ringing call!"

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1308
    :cond_15
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1316
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1318
    if-eqz p1, :cond_17

    .line 1324
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Setting fullScreenIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1325
    :cond_16
    const/4 v0, 0x1

    invoke-virtual {v8, v9, v0}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 1347
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1348
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_17

    .line 1349
    const-string v0, "NotificationMgr"

    const-string v1, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1393
    :cond_17
    :goto_a
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1394
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1395
    :cond_18
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1400
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification()V

    .line 1401
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateMuteNotification()V

    goto/16 :goto_0

    .line 1063
    :cond_19
    if-nez v5, :cond_1b

    if-eqz v6, :cond_1b

    .line 1065
    if-eqz v1, :cond_1a

    .line 1066
    const v0, 0x7f020142

    goto/16 :goto_1

    .line 1068
    :cond_1a
    const v0, 0x7f02013e

    goto/16 :goto_1

    .line 1071
    :cond_1b
    if-eqz v1, :cond_1c

    .line 1072
    const v0, 0x7f020140

    goto/16 :goto_1

    .line 1074
    :cond_1c
    const v0, 0x7f02013b

    goto/16 :goto_1

    .line 1098
    :cond_1d
    if-eqz v5, :cond_1e

    .line 1099
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 1101
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_2

    .line 1125
    :cond_1f
    instance-of v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_20

    .line 1126
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move-object v3, v0

    goto/16 :goto_3

    .line 1128
    :cond_20
    const-string v0, "NotificationMgr"

    const-string v3, "CallerInfo isn\'t available while Call object is available."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    move-object v3, v2

    goto/16 :goto_3

    .line 1141
    :cond_22
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_24

    invoke-static {v10}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 1143
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_23

    const-string v0, "use emergency call icon for large icon"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1144
    :cond_23
    const v0, 0x7f020096

    goto/16 :goto_4

    .line 1145
    :cond_24
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1147
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "use voicemail call icon for large icon"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1148
    :cond_25
    const v0, 0x7f02009d

    goto/16 :goto_4

    .line 1170
    :cond_26
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_28

    .line 1171
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_27

    const-string v0, "- BitmapDrawable found for large icon"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1172
    :cond_27
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1173
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1174
    const/4 v2, 0x1

    .line 1175
    goto/16 :goto_5

    .line 1176
    :cond_28
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_d

    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- Failed to fetch icon from CallerInfo\'s cached photo. (cachedPhotoIcon: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ", cachedPhoto: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ")."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " Ignore it."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1197
    :cond_29
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2a

    .line 1198
    const-string v0, "- PhotoResource was found but it didn\'t return BitmapDrawable. Ignore it"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    :cond_2a
    move v0, v2

    goto/16 :goto_6

    .line 1204
    :cond_2b
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_f

    .line 1205
    const-string v0, "- CallerInfo not found. Use the same icon as in the status bar."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1232
    :cond_2c
    if-eqz v6, :cond_2d

    if-nez v5, :cond_2d

    .line 1234
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0381

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1235
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 1238
    :cond_2d
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 1247
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v2

    .line 1248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    invoke-virtual {v8, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1250
    const v0, 0x7f0b0380

    .line 1252
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1253
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyCapabilities;->canDistinguishDialingAndConnected(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1255
    const v0, 0x7f0b037b

    .line 1258
    :cond_2e
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    .line 1260
    :cond_2f
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_13

    .line 1261
    const-string v0, "NotificationMgr"

    const-string v2, "updateInCallNotification: null connection, can\'t set exp view line 2."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1279
    :cond_30
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1281
    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 1358
    :cond_31
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1361
    if-eqz v7, :cond_35

    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1362
    :goto_b
    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 1363
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1364
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1365
    iget-object v2, v0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_32

    iget-object v2, v1, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_33

    :cond_32
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_36

    :cond_33
    const/4 v0, 0x1

    .line 1368
    :goto_c
    if-eqz v0, :cond_37

    .line 1369
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_34

    .line 1370
    const-string v0, "Call State : Mute button is disabled: INVISIBLE."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1386
    :cond_34
    :goto_d
    const-string v0, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1388
    const v0, 0x7f020097

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0389

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_a

    .line 1361
    :cond_35
    const/4 v0, 0x0

    goto :goto_b

    .line 1365
    :cond_36
    const/4 v0, 0x0

    goto :goto_c

    .line 1373
    :cond_37
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 1374
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_38

    .line 1375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInCallNotification, isMuteEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1377
    :cond_38
    if-eqz v0, :cond_39

    const v0, 0x7f02009c

    .line 1379
    :goto_e
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b03ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->createMuteOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v8, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_d

    .line 1377
    :cond_39
    const v0, 0x7f02009b

    goto :goto_e
.end method

.method private updateNotificationsAtStartup()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 309
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateNotificationsAtStartup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 312
    :cond_0
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 315
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "type="

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .local v8, "where":Ljava/lang/StringBuilder;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    const-string v0, " AND new=1"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- start call log query..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x1

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->startQueryForAmNotification()V

    .line 328
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- updating in-call notification at startup..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 329
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 334
    return-void
.end method

.method private updateSpeakerNotification()V
    .locals 4

    .prologue
    .line 841
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 842
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 845
    .local v1, "showNotification":Z
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    const-string v2, "updateSpeakerNotification: speaker ON"

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 849
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/phone/NotificationMgr;->updateSpeakerNotification(Z)V

    .line 850
    return-void

    .line 842
    .end local v1    # "showNotification":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 845
    .restart local v1    # "showNotification":Z
    :cond_2
    const-string v2, "updateSpeakerNotification: speaker OFF (or not offhook)"

    goto :goto_1
.end method


# virtual methods
.method public cancelAnsweringMachine()V
    .locals 2

    .prologue
    .line 810
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    .line 811
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 812
    return-void
.end method

.method cancelCallInProgressNotifications()V
    .locals 2

    .prologue
    .line 1449
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "cancelCallInProgressNotifications()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1450
    :cond_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    if-nez v0, :cond_1

    .line 1458
    :goto_0
    return-void

    .line 1454
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelCallInProgressNotifications: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr;->mInCallResId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1455
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelInCall()V

    .line 1456
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 1457
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method

.method cancelMissedCallNotification()V
    .locals 2

    .prologue
    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 746
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 747
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateBadgeIcon()V

    .line 748
    return-void
.end method

.method hideDataDisconnectedRoaming()V
    .locals 2

    .prologue
    .line 1676
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1677
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1678
    return-void
.end method

.method notifyAnsweringMachine(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 757
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    .line 762
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    :goto_0
    iget v0, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    if-eq v0, v6, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0169

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 780
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/am/SomcAmIncomingMessageSetting;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 783
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    const v2, 0x7f020011

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0145

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createClearAnsweringMachineIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 793
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 794
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 795
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 796
    return-void

    .line 764
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 771
    :cond_2
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p5, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p6, "date"    # J

    .prologue
    .line 618
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/phone/PhoneGlobals;->createPendingCallLogIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 624
    .local v8, "pendingCallLogIntent":Landroid/app/PendingIntent;
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v10, :cond_1

    .line 625
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_0

    .line 626
    const-string v10, "notifyMissedCall: non-voice-capable device, not posting notification"

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 729
    .end local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 631
    .restart local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_1
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v10, :cond_2

    .line 632
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyMissedCall(). name: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", label: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", photo: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", photoIcon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", date: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 640
    :cond_2
    const/4 v4, 0x0

    .local v4, "cityIdInfo":Ljava/lang/String;
    const/4 v6, 0x0

    .line 643
    .local v6, "landOwnerInfo":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 644
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-static {v10, v0, v11}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v4

    .line 648
    :cond_3
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/phone/SomcLandOwnerInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 649
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/phone/SomcLandOwnerInfo;->getLandOwnerInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 653
    :cond_4
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    .line 657
    if-eqz p1, :cond_9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 658
    move-object/from16 v3, p1

    .line 672
    .local v3, "callName":Ljava/lang/String;
    :goto_1
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 673
    const v9, 0x7f0b037c

    .line 674
    .local v9, "titleResId":I
    move-object v5, v3

    .line 675
    .local v5, "expandedText":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 676
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 678
    :cond_5
    if-eqz v6, :cond_6

    .line 679
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 687
    :cond_6
    :goto_2
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 688
    .local v2, "builder":Landroid/app/Notification$Builder;
    const v10, 0x108007f

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0b037f

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    move-wide/from16 v0, p6

    invoke-virtual {v10, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->createClearMissedCallsIntent()Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 701
    iget v10, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b01c7

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b01c6

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    .line 705
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add actions with the number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 707
    :cond_7
    const v10, 0x7f020099

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0b038a

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneGlobals;->getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v2, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 711
    const v10, 0x7f02009a

    iget-object v11, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v12, 0x7f0b038b

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-static {v12, v0}, Lcom/android/phone/PhoneGlobals;->getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v2, v10, v11, v12}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 715
    if-eqz p5, :cond_c

    .line 716
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 726
    .end local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_8
    :goto_3
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 727
    .local v7, "notification":Landroid/app/Notification;
    invoke-static {v7}, Lcom/android/phone/NotificationMgr;->configureLedNotification(Landroid/app/Notification;)V

    .line 728
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 659
    .end local v2    # "builder":Landroid/app/Notification$Builder;
    .end local v3    # "callName":Ljava/lang/String;
    .end local v5    # "expandedText":Ljava/lang/String;
    .end local v7    # "notification":Landroid/app/Notification;
    .end local v9    # "titleResId":I
    .restart local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 663
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u202a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u202c"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "callName":Ljava/lang/String;
    goto/16 :goto_1

    .line 666
    .end local v3    # "callName":Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b01c6

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "callName":Ljava/lang/String;
    goto/16 :goto_1

    .line 682
    :cond_b
    const v9, 0x7f0b037d

    .line 683
    .restart local v9    # "titleResId":I
    iget-object v10, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v11, 0x7f0b037e

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget v14, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "expandedText":Ljava/lang/String;
    goto/16 :goto_2

    .line 717
    .restart local v2    # "builder":Landroid/app/Notification$Builder;
    :cond_c
    move-object/from16 v0, p4

    instance-of v10, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_8

    .line 718
    check-cast p4, Landroid/graphics/drawable/BitmapDrawable;

    .end local p4    # "photo":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 721
    .restart local p4    # "photo":Landroid/graphics/drawable/Drawable;
    :cond_d
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_8

    .line 722
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Suppress actions. number: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", missedCalls: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3

    .prologue
    .line 1410
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallerInfo query complete (for NotificationMgr), updating in-call notification.."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1412
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1413
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- ci: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1415
    :cond_2
    if-ne p2, p0, :cond_5

    .line 1421
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- compactName is now: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {p3, v1}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1426
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updating notification after query complete..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1427
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1432
    :goto_0
    return-void

    .line 1429
    :cond_5
    const-string v0, "NotificationMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: caller-id query from unknown source! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method postTransientNotification(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "notifyId"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1759
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    .line 1760
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1761
    return-void
.end method

.method showDataDisconnectedRoaming()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1653
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showDataDisconnectedRoaming()..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1656
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1658
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b02af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1660
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1661
    const v3, 0x108008a

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1662
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b02ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1663
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1664
    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1666
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Style;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1669
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1670
    return-void
.end method

.method public startQueryForAmNotification()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 341
    iput v4, p0, Lcom/android/phone/NotificationMgr;->mNumberAnswerMachine:I

    .line 344
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler;

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/NotificationMgr$QueryHandler;-><init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    .line 347
    const-string v0, "%s = %s AND %s = 1 AND %s = \'%s\'"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "type"

    aput-object v3, v1, v4

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string v4, "new"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "source_package"

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;

    const/4 v1, -0x3

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    sget-object v4, Lcom/android/phone/NotificationMgr;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "date DESC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public updateBadgeIcon()V
    .locals 3

    .prologue
    .line 1772
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.home.action.UPDATE_BADGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1773
    const-string v1, "com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME"

    const-string v2, "com.sonyericsson.android.socialphonebook"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1775
    const-string v1, "com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME"

    const-string v2, "com.sonyericsson.android.socialphonebook.DialerEntryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    iget v1, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    if-eqz v1, :cond_0

    .line 1778
    const-string v1, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1779
    const-string v1, "com.sonyericsson.home.intent.extra.badge.MESSAGE"

    iget v2, p0, Lcom/android/phone/NotificationMgr;->mNumberMissedCalls:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1784
    :goto_0
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const-string v2, "com.sonyericsson.home.permission.RECEIVE_BADGE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1785
    return-void

    .line 1782
    :cond_0
    const-string v1, "com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method updateCfi(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1598
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCfi(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1599
    :cond_0
    if-eqz p1, :cond_1

    .line 1614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1615
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1616
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f02013d

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1624
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b025e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0261

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1637
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1639
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1645
    :goto_0
    return-void

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public updateInCallNotification()V
    .locals 1

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 937
    return-void
.end method

.method updateMuteNotification()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    .line 922
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "updateMuteNotification: MUTED"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 917
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifyMute()V

    goto :goto_0

    .line 919
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "updateMuteNotification: not muted (or not offhook)"

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 920
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelMute()V

    goto :goto_0
.end method

.method updateMwi(Z)V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x5

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 1466
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMwi(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1468
    :cond_0
    if-eqz p1, :cond_b

    .line 1469
    const v3, 0x108007e

    .line 1481
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0383

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1482
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    .line 1483
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- got vm number: \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1500
    :cond_1
    if-nez v2, :cond_5

    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1501
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- Null vm number: SIM records not loaded (yet)..."

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1514
    :cond_2
    iget v1, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    add-int/lit8 v4, v1, -0x1

    iput v4, p0, Lcom/android/phone/NotificationMgr;->mVmNumberRetriesRemaining:I

    if-lez v1, :cond_4

    .line 1515
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 1516
    const-string v0, "  - Retrying in 10000 msec..."

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1518
    :cond_3
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallNotifier;->sendMwiChangedDelayed(J)V

    .line 1590
    :goto_0
    return-void

    .line 1521
    :cond_4
    const-string v1, "NotificationMgr"

    const-string v4, "NotificationMgr.updateMwi: getVoiceMailNumber() failed after 5 retries; giving up."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_5
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    .line 1529
    if-lez v1, :cond_6

    .line 1530
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0384

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1531
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    :cond_6
    const-string v1, ""

    .line 1535
    iget-boolean v4, p0, Lcom/android/phone/NotificationMgr;->mShowVoicemailNotificationText:Z

    if-eqz v4, :cond_7

    .line 1536
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1537
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0386

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1548
    :cond_7
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    const-string v5, "voicemail"

    const-string v6, ""

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1551
    iget-object v4, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v4, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1553
    iget-object v2, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1555
    const-string v2, "button_voicemail_notification_ringtone_key"

    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1558
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1563
    :goto_2
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1564
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 1570
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1572
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    .line 1573
    const-string v1, "button_voicemail_notification_vibrate_key"

    invoke-interface {v5, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1575
    if-eqz v1, :cond_8

    .line 1576
    iget v1, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 1578
    :cond_8
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1579
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1580
    const v1, -0xff0100

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1581
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 1582
    const/16 v1, 0x7d0

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 1584
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1540
    :cond_9
    if-eqz v2, :cond_7

    .line 1541
    iget-object v1, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0385

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1560
    :cond_a
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_2

    .line 1588
    :cond_b
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method updateNetworkSelection(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1723
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsNetworkSelection(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1727
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1729
    const-string v0, "network_selection_name_key"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1732
    const-string v0, "network_selection_key"

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1736
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkSelection()...state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " new network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 1739
    :cond_1
    if-ne p1, v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1741
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-nez v0, :cond_2

    .line 1742
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->showNetworkSelection()V

    .line 1743
    iput-boolean v3, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    .line 1752
    :cond_2
    :goto_0
    return-void

    .line 1746
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    if-eqz v0, :cond_2

    .line 1747
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelNetworkSelection()V

    .line 1748
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NotificationMgr;->mSelectedUnavailableNotify:Z

    goto :goto_0
.end method

.method public updateNotificationAndLaunchIncomingCallUi()V
    .locals 1

    .prologue
    .line 973
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification(Z)V

    .line 974
    return-void
.end method

.method public updateSpeakerNotification(Z)V
    .locals 2
    .param p1, "showNotification"    # Z

    .prologue
    .line 865
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSpeakerNotification("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 873
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 882
    :goto_0
    return-void

    .line 877
    :cond_1
    if-eqz p1, :cond_2

    .line 878
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->notifySpeakerphone()V

    goto :goto_0

    .line 880
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    goto :goto_0
.end method
