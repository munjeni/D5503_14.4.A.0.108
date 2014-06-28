.class public Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "StaminaAppwidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;,
        Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$EstimatesObserver;
    }
.end annotation


# static fields
.field private static final ACTION_TOGGLE_STAMINA_MODE:Ljava/lang/String; = "com.sonymobile.superstamina.appwidget.TOGGLE_STAMINA_MODE"

.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.superstamina.xperiapowerservice.provider"

.field private static final CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_ESTIMATES:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    .line 48
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_ESTIMATES:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_ESTIMATES:Landroid/net/Uri;

    return-object v0
.end method

.method public static getBatteryTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isXssmEnabled"    # Z

    .prologue
    .line 210
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 215
    const/4 v7, 0x0

    .line 216
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 219
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    const-string v0, "time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_0
    return v7

    .line 222
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "timeLeft"    # I

    .prologue
    const v10, 0x7f060001

    const/high16 v9, 0x7f060000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 172
    div-int/lit8 v1, p1, 0x18

    .line 173
    .local v1, "days":I
    rem-int/lit8 v3, p1, 0x18

    .line 176
    .local v3, "hours":I
    if-nez v1, :cond_0

    .line 177
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "standbyTime":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 180
    .end local v4    # "standbyTime":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 181
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "standbyTime":Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v4    # "standbyTime":Ljava/lang/String;
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "hourStr":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "dayStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "standbyTime":Ljava/lang/String;
    goto :goto_0
.end method

.method public static isXssmEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 195
    const/4 v7, 0x0

    .line 196
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 198
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 200
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 201
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_0
    return v7

    .line 203
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private toggleStaminaMode(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0b0001

    .line 143
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x7f030000

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v4, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v5

    .line 148
    .local v5, "xssm":Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p0, v5}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v7

    invoke-static {v6, v7}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "batteryTimeLeft":Ljava/lang/String;
    const/high16 v6, 0x7f0b0000

    invoke-virtual {v4, v6, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 152
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_1

    .line 153
    if-eqz v5, :cond_0

    const v6, 0x7f020005

    :goto_0
    invoke-virtual {v4, v8, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sonymobile.superstamina.appwidget.TOGGLE_STAMINA_MODE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-static {p0, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 160
    .local v3, "toggleStaminaModeIntent":Landroid/app/PendingIntent;
    invoke-virtual {v4, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 167
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    .end local v3    # "toggleStaminaModeIntent":Landroid/app/PendingIntent;
    :goto_1
    new-instance v2, Landroid/content/ComponentName;

    const-class v6, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;

    invoke-direct {v2, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v2, "thisWidget":Landroid/content/ComponentName;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 169
    return-void

    .line 153
    .end local v2    # "thisWidget":Landroid/content/ComponentName;
    :cond_0
    const v6, 0x7f020003

    goto :goto_0

    .line 163
    :cond_1
    const/16 v6, 0x8

    invoke-virtual {v4, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 122
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 114
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$WidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonymobile.superstamina.appwidget.TOGGLE_STAMINA_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->toggleStaminaMode(Landroid/content/Context;)V

    .line 135
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonymobile.SUPER_STAMINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {p1}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 107
    invoke-static {p1}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->updateWidget(Landroid/content/Context;)V

    .line 108
    return-void
.end method
