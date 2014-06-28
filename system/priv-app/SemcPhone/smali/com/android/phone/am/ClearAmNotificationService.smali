.class public Lcom/android/phone/am/ClearAmNotificationService;
.super Landroid/app/IntentService;
.source "ClearAmNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/android/phone/am/ClearAmNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 36
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 40
    const-string v2, "com.android.phone.intent.ACTION_CLEAR_AM_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string v2, "%s = %s AND %s = 1 AND %s = \'%s\'"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v5, "new"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "source_package"

    aput-object v5, v3, v4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "selection":Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 47
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "new"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 51
    invoke-static {}, Lcom/android/phone/SomcSharedObjAccessUtils;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelAnsweringMachine()V

    .line 53
    .end local v0    # "selection":Ljava/lang/String;
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
