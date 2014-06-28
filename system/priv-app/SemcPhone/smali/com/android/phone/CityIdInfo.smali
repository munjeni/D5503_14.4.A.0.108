.class public Lcom/android/phone/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CityIdInfo$Info;
    }
.end annotation


# static fields
.field private static final CITYINFO_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static sServiceSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    sput-boolean v0, Lcom/android/phone/CityIdInfo;->DBG:Z

    .line 41
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CityIdInfo;->sServiceSupported:Ljava/lang/Boolean;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "city"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "st"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "country"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "isnanp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CityIdInfo;->CITYINFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method public static getCityIdInfo(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "isSystemProvided"    # Z

    .prologue
    .line 93
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const-string v2, ""

    .line 103
    :goto_0
    return-object v2

    .line 95
    :cond_1
    const/4 v1, 0x0

    .line 97
    .local v1, "info":Lcom/android/phone/CityIdInfo$Info;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/phone/CityIdInfo;->lookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)Lcom/android/phone/CityIdInfo$Info;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    :goto_1
    if-nez v1, :cond_2

    const-string v2, ""

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CityIdInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurs when looking up the cityIdInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v1}, Lcom/android/phone/CityIdInfo$Info;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static declared-synchronized isServiceSupported(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const-class v3, Lcom/android/phone/CityIdInfo;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/phone/CityIdInfo;->sServiceSupported:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 67
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_2

    .line 68
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CityIdInfo;->sServiceSupported:Ljava/lang/Boolean;

    .line 69
    sget-boolean v2, Lcom/android/phone/CityIdInfo;->DBG:Z

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "CityIdInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Content Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " NOT found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 77
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "provider":Landroid/content/IContentProvider;
    :cond_1
    sget-object v2, Lcom/android/phone/CityIdInfo;->sServiceSupported:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    .line 73
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "provider":Landroid/content/IContentProvider;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/phone/CityIdInfo;->sServiceSupported:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "provider":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static lookup(Landroid/content/Context;Ljava/lang/CharSequence;Z)Lcom/android/phone/CityIdInfo$Info;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/CharSequence;
    .param p2, "isSystemProvided"    # Z

    .prologue
    .line 109
    sget-boolean v1, Lcom/android/phone/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CityIdInfo.impLookup, content = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", phoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isSystemProvided:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    const/4 v12, 0x0

    .line 118
    .local v12, "info":Lcom/android/phone/CityIdInfo$Info;
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NANP"

    aput-object v2, v4, v1

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v2

    .line 122
    .local v4, "flags":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 125
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/phone/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/CityIdInfo;->CITYINFO_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 127
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    const-string v1, "city"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "cityName":Ljava/lang/String;
    const-string v1, "state"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "stateName":Ljava/lang/String;
    const-string v1, "st"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 131
    .local v8, "stateAbrv":Ljava/lang/String;
    const-string v1, "country"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "countryName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "City   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ST     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v1, "CityIdInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Country: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    const-string v1, "isnanp"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v10, 0x1

    .line 139
    .local v10, "isNanp":Z
    :goto_1
    new-instance v5, Lcom/android/phone/CityIdInfo$Info;

    invoke-direct/range {v5 .. v10}, Lcom/android/phone/CityIdInfo$Info;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .end local v6    # "cityName":Ljava/lang/String;
    .end local v7    # "stateName":Ljava/lang/String;
    .end local v8    # "stateAbrv":Ljava/lang/String;
    .end local v9    # "countryName":Ljava/lang/String;
    .end local v10    # "isNanp":Z
    .end local v12    # "info":Lcom/android/phone/CityIdInfo$Info;
    .local v5, "info":Lcom/android/phone/CityIdInfo$Info;
    :goto_2
    if-eqz v11, :cond_2

    .line 143
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_2
    return-object v5

    .line 118
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v4    # "flags":[Ljava/lang/String;
    .end local v5    # "info":Lcom/android/phone/CityIdInfo$Info;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "info":Lcom/android/phone/CityIdInfo$Info;
    :cond_3
    const-string v1, "user"

    goto/16 :goto_0

    .line 138
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v4    # "flags":[Ljava/lang/String;
    .restart local v6    # "cityName":Ljava/lang/String;
    .restart local v7    # "stateName":Ljava/lang/String;
    .restart local v8    # "stateAbrv":Ljava/lang/String;
    .restart local v9    # "countryName":Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 142
    .end local v6    # "cityName":Ljava/lang/String;
    .end local v7    # "stateName":Ljava/lang/String;
    .end local v8    # "stateAbrv":Ljava/lang/String;
    .end local v9    # "countryName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_5

    .line 143
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_5
    throw v1

    :cond_6
    move-object v5, v12

    .end local v12    # "info":Lcom/android/phone/CityIdInfo$Info;
    .restart local v5    # "info":Lcom/android/phone/CityIdInfo$Info;
    goto :goto_2
.end method
