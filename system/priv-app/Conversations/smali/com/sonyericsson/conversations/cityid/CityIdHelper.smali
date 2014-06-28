.class public abstract Lcom/sonyericsson/conversations/cityid/CityIdHelper;
.super Ljava/lang/Object;
.source "CityIdHelper.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CityIdHelper"

.field private static sCityIdHelper:Lcom/sonyericsson/conversations/cityid/CityIdHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCityIdHelperInstance(Landroid/content/Context;)Lcom/sonyericsson/conversations/cityid/CityIdHelper;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-class v3, Lcom/sonyericsson/conversations/cityid/CityIdHelper;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->getProviderEnabledState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 30
    .local v0, "attProviderAvailable":Z
    invoke-static {}, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sonyericsson/conversations/util/ComponmentEnabler;->getProviderEnabledState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 33
    .local v1, "ctProviderAvailable":Z
    if-eqz v0, :cond_0

    .line 34
    new-instance v2, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;-><init>()V

    sput-object v2, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->sCityIdHelper:Lcom/sonyericsson/conversations/cityid/CityIdHelper;

    .line 41
    :goto_0
    sget-object v2, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->sCityIdHelper:Lcom/sonyericsson/conversations/cityid/CityIdHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    return-object v2

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    :try_start_1
    new-instance v2, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;

    invoke-direct {v2}, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;-><init>()V

    sput-object v2, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->sCityIdHelper:Lcom/sonyericsson/conversations/cityid/CityIdHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    .end local v0    # "attProviderAvailable":Z
    .end local v1    # "ctProviderAvailable":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 38
    .restart local v0    # "attProviderAvailable":Z
    .restart local v1    # "ctProviderAvailable":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCityIdInfo(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isSystemProvided"    # Z

    .prologue
    .line 54
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->sCityIdHelper:Lcom/sonyericsson/conversations/cityid/CityIdHelper;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->sCityIdHelper:Lcom/sonyericsson/conversations/cityid/CityIdHelper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract implLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;
.end method
