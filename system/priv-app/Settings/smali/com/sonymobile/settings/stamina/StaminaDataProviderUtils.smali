.class public abstract Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;
.super Ljava/lang/Object;
.source "StaminaDataProviderUtils.java"


# static fields
.field private static final CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

.field private static final CONTENT_URI_WHITELIST_INTERNAL:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist/user"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    .line 30
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    .line 36
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/activation_dialog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    .line 39
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/standby_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

    .line 42
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/standby_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

    .line 45
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_with_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    .line 48
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/estimates/battery_without_xssm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    .line 51
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    .line 54
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/installedApps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

    .line 57
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/features"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    .line 60
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    .line 63
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

    .line 66
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/activation_dialog"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_SHOW_ACTIVATION_DIALOG:Landroid/net/Uri;

    .line 69
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/powersaver/battery_threshold"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    .line 72
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist_groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    .line 75
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/gate/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    .line 78
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/whitelist_internal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_INTERNAL:Landroid/net/Uri;

    .line 81
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/runtime/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableQueuing(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enable"    # Z

    .prologue
    .line 353
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 354
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "enabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 356
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getBatteryTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isXssmEnabled"    # Z

    .prologue
    .line 114
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_BATTERY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method public static getInstalledApplications(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_INSTALLED_APPS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getInternalWhitelist(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 364
    .local v8, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 366
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_INTERNAL:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 368
    const-string v0, "package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 369
    .local v7, "index":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 373
    .end local v7    # "index":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 373
    .restart local v7    # "index":I
    :cond_1
    if-eqz v6, :cond_2

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 377
    :cond_2
    return-object v8
.end method

.method public static getPowerSaverBatteryThreshold(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 226
    const/4 v7, 0x0

    .line 227
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 229
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 231
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 232
    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 234
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 237
    :cond_0
    return v7

    .line 234
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPowerSaverFeatures(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getStandbyTimeEstimate(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isXssmEnabled"    # Z

    .prologue
    .line 109
    if-eqz p1, :cond_0

    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITH_XSSM:Landroid/net/Uri;

    :goto_0
    invoke-static {p0, v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_STANDBY_WITHOUT_XSSM:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static getTimeEstimate(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 119
    const/4 v7, 0x0

    .line 120
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    const-string v0, "time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    :cond_0
    return v7

    .line 126
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getWhitelist(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v3, "user = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getWhitelistGroups(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, "cursor":Landroid/database/Cursor;
    return-object v6
.end method

.method public static getXssmBatteryThreshold(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 133
    const/4 v7, 0x0

    .line 134
    .local v7, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 138
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 139
    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 141
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_0
    return v7

    .line 141
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static isPowerSaverEnabled(Landroid/content/Context;)Z
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

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

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

.method public static isQueuingAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const/4 v6, 0x0

    .line 314
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    if-eqz v6, :cond_1

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 318
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    const/4 v0, 0x1

    .line 324
    if-eqz v6, :cond_0

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    if-eqz v6, :cond_2

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 324
    if-eqz v6, :cond_2

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 324
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isQueuingEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 333
    const/4 v6, 0x0

    .line 335
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_GATE_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 337
    if-eqz v6, :cond_1

    .line 338
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 339
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 344
    if-eqz v6, :cond_0

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    if-eqz v6, :cond_2

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 341
    :catch_0
    move-exception v0

    .line 344
    if-eqz v6, :cond_2

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 344
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static isStaminaRuntimeSupported(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    const/4 v7, 0x0

    .line 382
    .local v7, "supported":Z
    const/4 v6, 0x0

    .line 384
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_RUNTIME_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 386
    if-eqz v6, :cond_1

    const/4 v7, 0x1

    .line 390
    :goto_0
    if-eqz v6, :cond_0

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_0
    :goto_1
    return v7

    .line 386
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 387
    :catch_0
    move-exception v0

    .line 390
    if-eqz v6, :cond_0

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 390
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 391
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static isXssmEnabled(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v7, 0x0

    .line 95
    .local v7, "result":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 99
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 100
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    return v7

    .line 102
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 299
    return-void
.end method

.method public static registerXssmEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 285
    return-void
.end method

.method public static removePackageFromWhitelist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v2, "user=? and package=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method public static setPowerSaverBatteryThreshold(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 241
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 242
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "threshold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public static setWhitelist(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "mWhitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "user":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v5, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "user=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, "item":Ljava/lang/String;
    sget-object v5, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.sonymobile.superstamina.xperiapowerservice.provider"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 177
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 178
    .local v0, "e":Landroid/content/OperationApplicationException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static setXssmBatteryThreshold(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 149
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "threshold"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_THRESHOLD:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method public static togglePowersaveEnable(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method public static toggleXssmEnable(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_XSSM_TOGGLE_ENABLED:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 280
    return-void
.end method

.method public static unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 303
    return-void
.end method

.method public static unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 289
    return-void
.end method

.method public static updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "param"    # I

    .prologue
    .line 218
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 219
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "overriden"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    const-string v1, "param"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->CONTENT_URI_POWERSAVER_FEATURES:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    return-void
.end method
