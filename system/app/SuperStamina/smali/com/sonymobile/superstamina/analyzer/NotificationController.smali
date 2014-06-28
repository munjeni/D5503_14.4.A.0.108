.class public Lcom/sonymobile/superstamina/analyzer/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_INTENT:Ljava/lang/String; = "com.sonymobile.superstamina.ANALYZER_ACTION"

.field private static final CONTENT_INTENT:Ljava/lang/String; = "com.sonymobile.superstamina.ANALYZER_CONTENT"

.field private static final DELETE_INTENT:Ljava/lang/String; = "com.sonymobile.superstamina.ANALYZER_DELETE"

.field private static final EXTRA_ID:Ljava/lang/String; = "ID"

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "Reminders"


# instance fields
.field private mActionReceiver:Landroid/content/BroadcastReceiver;

.field private mActiveNotifications:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;

.field private mContentReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDeleteReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationMgr:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActiveNotifications:Ljava/util/HashSet;

    .line 75
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/NotificationController$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/analyzer/NotificationController$1;-><init>(Lcom/sonymobile/superstamina/analyzer/NotificationController;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActionReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/NotificationController$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/analyzer/NotificationController$2;-><init>(Lcom/sonymobile/superstamina/analyzer/NotificationController;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContentReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/NotificationController$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/analyzer/NotificationController$3;-><init>(Lcom/sonymobile/superstamina/analyzer/NotificationController;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/NotificationController$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/superstamina/analyzer/NotificationController$4;-><init>(Lcom/sonymobile/superstamina/analyzer/NotificationController;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mCallback:Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;

    .line 140
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 143
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.superstamina.ANALYZER_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.superstamina.ANALYZER_CONTENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mDeleteReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.superstamina.ANALYZER_DELETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/NotificationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mCallback:Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/NotificationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mNotificationMgr:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/analyzer/NotificationController;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/analyzer/NotificationController;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActiveNotifications:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public getActionIntent(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.superstamina.ANALYZER_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public notifyUser(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 154
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mCallback:Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;

    invoke-interface {v4, p1}, Lcom/sonymobile/superstamina/analyzer/NotificationController$Callback;->getBuilder(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 156
    .local v0, "builder":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonymobile.superstamina.ANALYZER_CONTENT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "contentIntent":Landroid/content/Intent;
    const-string v4, "ID"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 160
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sonymobile.superstamina.ANALYZER_DELETE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, "deleteIntent":Landroid/content/Intent;
    const-string v4, "ID"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 165
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mNotificationMgr:Landroid/app/NotificationManager;

    const-string v5, "Reminders"

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, p1, v3, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 166
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/NotificationController;->mActiveNotifications:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method
