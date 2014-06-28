.class public Lcom/sonymobile/superstamina/SuperStaminaReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuperStaminaReceiver.java"


# static fields
.field static final ACTIVATE_PRESSED_KEY:Ljava/lang/String; = "activate-pressed"

.field private static final CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-Receiver"

.field private static final USER_WHITELIST_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    .line 31
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "powersaver/enabled"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    .line 34
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "xssm/whitelist/user"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->USER_WHITELIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handlePackageAdded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 197
    .local v7, "packageName":Ljava/lang/String;
    const-string v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 200
    .local v4, "isReplacing":Z
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v4, :cond_0

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f0a0000

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "cust":[Ljava/lang/String;
    :try_start_0
    const-string v9, "xperia_power_service"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/superstamina/IXperiaPowerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/superstamina/IXperiaPowerService;

    move-result-object v8

    .line 206
    .local v8, "service":Lcom/sonymobile/superstamina/IXperiaPowerService;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v6, v0, v3

    .line 207
    .local v6, "pName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 210
    invoke-interface {v8, v6}, Lcom/sonymobile/superstamina/IXperiaPowerService;->addPackageToOperatorWhitelist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cust":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pName":Ljava/lang/String;
    .end local v8    # "service":Lcom/sonymobile/superstamina/IXperiaPowerService;
    :cond_0
    return-void

    .line 206
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "cust":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "pName":Ljava/lang/String;
    .restart local v8    # "service":Lcom/sonymobile/superstamina/IXperiaPowerService;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pName":Ljava/lang/String;
    .end local v8    # "service":Lcom/sonymobile/superstamina/IXperiaPowerService;
    :catch_0
    move-exception v2

    .line 215
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method private handlePackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 163
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    .local v0, "isReplacing":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->USER_WHITELIST_URI:Landroid/net/Uri;

    const-string v4, "user = ? and package = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method public static isPowersaverEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 146
    const/4 v7, 0x0

    .line 147
    .local v7, "enabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 149
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 151
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 152
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_0
    return v7

    .line 155
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isXssmEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v7, 0x0

    .line 131
    .local v7, "enabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 133
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 136
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_0
    return v7

    .line 139
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setPowersaverEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 124
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 125
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public static setXssmEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "checked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 119
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->handlePackageRemoved(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->handlePackageAdded(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sonymobile.XSSM_SETTING_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 56
    invoke-static {p1}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 59
    invoke-static {p1, v6}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->setXssmEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 63
    :cond_5
    sget-object v4, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    invoke-static {p1, v4, v7}, Lcom/sonymobile/superstamina/Util;->getSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)Z

    move-result v3

    .line 65
    .local v3, "showDialog":Z
    const-string v4, "activate-pressed"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, "activatePressed":Z
    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    .line 72
    :cond_6
    invoke-static {p1, v7}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->setXssmEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 76
    :cond_7
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/superstamina/SuperStaminaDialog;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v1, "activityIntent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    :try_start_0
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v2

    .line 81
    .local v2, "anfe":Landroid/content/ActivityNotFoundException;
    const-string v4, "SuperStamina-Receiver"

    const-string v5, "Unable to start activity"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v0    # "activatePressed":Z
    .end local v1    # "activityIntent":Landroid/content/Intent;
    .end local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    .end local v3    # "showDialog":Z
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sonymobile.POWERSAVER_SETTING_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    invoke-static {p1}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->isPowersaverEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 90
    invoke-static {p1, v6}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->setPowersaverEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 94
    :cond_9
    sget-object v4, Lcom/sonymobile/superstamina/Util$Setting;->SHOW_POWERSAVE_DIALOG_IN_FUTURE:Lcom/sonymobile/superstamina/Util$Setting;

    invoke-static {p1, v4, v7}, Lcom/sonymobile/superstamina/Util;->getSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)Z

    move-result v3

    .line 96
    .restart local v3    # "showDialog":Z
    const-string v4, "activate-pressed"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 97
    .restart local v0    # "activatePressed":Z
    if-eqz v3, :cond_a

    if-eqz v0, :cond_b

    .line 100
    :cond_a
    invoke-static {p1, v7}, Lcom/sonymobile/superstamina/SuperStaminaReceiver;->setPowersaverEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 105
    :cond_b
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/superstamina/PowerSaverDialog;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .restart local v1    # "activityIntent":Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    :try_start_1
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 109
    :catch_1
    move-exception v2

    .line 110
    .restart local v2    # "anfe":Landroid/content/ActivityNotFoundException;
    const-string v4, "SuperStamina-Receiver"

    const-string v5, "Unable to start activity"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
