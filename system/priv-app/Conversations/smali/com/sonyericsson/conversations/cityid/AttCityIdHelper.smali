.class public Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;
.super Lcom/sonyericsson/conversations/cityid/CityIdHelper;
.source "AttCityIdHelper.java"


# static fields
.field private static final COLUMN_CITY:I = 0x2

.field private static final COLUMN_COUNTRY:I = 0x5

.field private static final COLUMN_ISNANP:I = 0x6

.field private static final COLUMN_STATE:I = 0x3

.field private static final COLUMN_STATE_ABRV:I = 0x4

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.cequint.cityid"

.field private static final TAG:Ljava/lang/String; = "AttCityIdHelper"


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mCountryName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mIsNanp:Z

.field private mStateAbrv:Ljava/lang/String;

.field private mStateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Lcom/sonyericsson/conversations/cityid/CityIdHelper;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mIsNanp:Z

    .line 50
    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCityName:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateName:Ljava/lang/String;

    .line 54
    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateAbrv:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCountryName:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method private computeDisplayName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mDisplayName:Ljava/lang/String;

    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mIsNanp:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mDisplayName:Ljava/lang/String;

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mDisplayName:Ljava/lang/String;

    return-object v0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateAbrv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCountryName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCountryName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "com.cequint.cityid"

    return-object v0
.end method


# virtual methods
.method protected implLookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/CharSequence;
    .param p3, "isSystemProvided"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "cr":Landroid/content/ContentResolver;
    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "NANP"

    aput-object v1, v4, v9

    if-eqz p3, :cond_1

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v8

    .line 114
    .local v4, "flags":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 116
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 118
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCityName:Ljava/lang/String;

    .line 120
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateName:Ljava/lang/String;

    .line 121
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mStateAbrv:Ljava/lang/String;

    .line 122
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mCountryName:Ljava/lang/String;

    .line 129
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v8

    :goto_1
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->mIsNanp:Z

    .line 130
    invoke-direct {p0}, Lcom/sonyericsson/conversations/cityid/AttCityIdHelper;->computeDisplayName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 138
    if-eqz v6, :cond_0

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v6, 0x0

    .line 135
    :cond_0
    :goto_2
    return-object v1

    .line 111
    .end local v4    # "flags":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v1, "user"

    goto :goto_0

    .restart local v4    # "flags":[Ljava/lang/String;
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v1, v9

    .line 129
    goto :goto_1

    .line 138
    :cond_3
    if-eqz v6, :cond_4

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v6, 0x0

    :cond_4
    move-object v1, v7

    .line 135
    goto :goto_2

    .line 138
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_5

    .line 139
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    const/4 v6, 0x0

    .line 138
    :cond_5
    throw v1
.end method
