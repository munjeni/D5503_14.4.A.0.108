.class public Lcom/android/phone/SomcLandOwnerInfo;
.super Ljava/lang/Object;
.source "SomcLandOwnerInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcLandOwnerInfo$Info;
    }
.end annotation


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static sServiceSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "content://com.sonymobile.providers.landownerprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SomcLandOwnerInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/SomcLandOwnerInfo;->sServiceSupported:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method public static getLandOwnerInfo(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;

    .prologue
    .line 60
    if-nez p1, :cond_0

    const-string v2, ""

    .line 69
    :goto_0
    return-object v2

    .line 62
    :cond_0
    const/4 v1, 0x0

    .line 64
    .local v1, "info":Lcom/android/phone/SomcLandOwnerInfo$Info;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/SomcLandOwnerInfo;->lookup(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/phone/SomcLandOwnerInfo$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_1
    if-nez v1, :cond_1

    const-string v2, ""

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SomcLandOwnerInfo"

    const-string v3, "Exception occurs when looking up the LandOwnerInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1}, Lcom/android/phone/SomcLandOwnerInfo$Info;->getInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static declared-synchronized isServiceSupported(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-class v3, Lcom/android/phone/SomcLandOwnerInfo;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/phone/SomcLandOwnerInfo;->sServiceSupported:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/SomcLandOwnerInfo;->sServiceSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 49
    :goto_0
    monitor-exit v3

    return v2

    .line 42
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/phone/SomcLandOwnerInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 44
    .local v1, "provider":Landroid/content/IContentProvider;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/phone/SomcLandOwnerInfo;->sServiceSupported:Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 49
    sget-object v2, Lcom/android/phone/SomcLandOwnerInfo;->sServiceSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 41
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static lookup(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/phone/SomcLandOwnerInfo$Info;
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 86
    const/4 v7, 0x0

    .line 88
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/phone/SomcLandOwnerInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 89
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 102
    :cond_0
    if-eqz v7, :cond_1

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    .line 100
    :cond_2
    :goto_0
    return-object v0

    .line 91
    :cond_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "columns":[Ljava/lang/String;
    array-length v0, v6

    new-array v9, v0, [Ljava/lang/String;

    .line 93
    .local v9, "landOwnerInfo":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v9

    if-ge v8, v0, :cond_4

    .line 94
    aget-object v0, v6, v8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    .line 93
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 100
    :cond_4
    new-instance v0, Lcom/android/phone/SomcLandOwnerInfo$Info;

    invoke-direct {v0, v9}, Lcom/android/phone/SomcLandOwnerInfo$Info;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    if-eqz v7, :cond_2

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 102
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "landOwnerInfo":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 103
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 102
    :cond_5
    throw v0
.end method
