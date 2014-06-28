.class public Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;
.super Lcom/sonyericsson/conversations/cityid/CityIdHelper;
.source "CtCityIdHelper.java"


# static fields
.field private static final COLUMN_COUNTRY:I = 0x0

.field private static final COLUMN_LOCATION:I = 0x1

.field private static final COLUMN_OPERATOR:I = 0x2

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.sonymobile.providers.landownerprovider"

.field private static final TAG:Ljava/lang/String; = "CtCityIdHelper"


# instance fields
.field private mCountryName:Ljava/lang/String;

.field private mLocationName:Ljava/lang/String;

.field private mOperatorName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.sonymobile.providers.landownerprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mCountryName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mLocationName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mOperatorName:Ljava/lang/String;

    return-void
.end method

.method private computeDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, "displayName":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mCountryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mLocationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mLocationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mOperatorName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "com.sonymobile.providers.landownerprovider"

    return-object v0
.end method


# virtual methods
.method protected implLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "isSystemProvided"    # Z

    .prologue
    const/4 v7, 0x0

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 79
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 81
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mCountryName:Ljava/lang/String;

    .line 83
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mLocationName:Ljava/lang/String;

    .line 84
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->mOperatorName:Ljava/lang/String;

    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/cityid/CtCityIdHelper;->computeDisplayName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 98
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v6, 0x0

    :cond_0
    :goto_0
    return-object v1

    .line 98
    :cond_1
    if-eqz v6, :cond_2

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v6, 0x0

    :cond_2
    move-object v1, v7

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 100
    const/4 v6, 0x0

    :cond_3
    throw v1
.end method
