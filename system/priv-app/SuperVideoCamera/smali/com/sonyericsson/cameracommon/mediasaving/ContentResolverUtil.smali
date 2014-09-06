.class public Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;
.super Ljava/lang/Object;
.source "ContentResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static crBulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # [Landroid/content/ContentValues;

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 112
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 119
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 115
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static crDelete(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;->where:Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 90
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static crInsert(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/CrInsertParameter;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/CrInsertParameter;

    .prologue
    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "result":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrInsertParameter;->values:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 100
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static crOpenInputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static crOpenOutputStream(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "result":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static crQuery(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;)Landroid/database/Cursor;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;

    .prologue
    .line 53
    const/4 v6, 0x0

    .line 56
    .local v6, "result":Landroid/database/Cursor;
    :try_start_0
    iget v0, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->limit:I

    if-lez v0, :cond_0

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s limit %d offset %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->sortOrder:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->offset:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "order":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->where:Ljava/lang/String;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 75
    .end local v5    # "order":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 64
    :cond_0
    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->sortOrder:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v5    # "order":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v5    # "order":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static crUpdate(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/CrUpdateParameter;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Lcom/sonyericsson/cameracommon/mediasaving/CrUpdateParameter;

    .prologue
    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrUpdateParameter;->values:Landroid/content/ContentValues;

    iget-object v4, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrUpdateParameter;->where:Ljava/lang/String;

    iget-object v5, p2, Lcom/sonyericsson/cameracommon/mediasaving/CrUpdateParameter;->selectionArgs:[Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 137
    :goto_0
    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    throw v0

    .line 133
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static deleteImage(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 185
    if-nez p1, :cond_0

    .line 226
    :goto_0
    return v7

    .line 189
    :cond_0
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;-><init>()V

    .line 191
    .local v5, "params":Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "_id"

    aput-object v9, v8, v7

    const-string v9, "_data"

    aput-object v9, v8, v12

    iput-object v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 192
    iput-object v11, v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->where:Ljava/lang/String;

    .line 193
    iput-object v11, v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->selectionArgs:[Ljava/lang/String;

    .line 194
    iput-object v11, v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->sortOrder:Ljava/lang/String;

    .line 195
    iput v7, v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->limit:I

    .line 196
    iput v7, v5, Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;->offset:I

    .line 197
    invoke-static {p0, p1, v5}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->crQuery(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .local v0, "cur":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 199
    .local v2, "failCount":I
    if-eqz v0, :cond_3

    .line 200
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 201
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 202
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "path":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;

    invoke-direct {v1}, Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;-><init>()V

    .line 206
    .local v1, "deleteParams":Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;->where:Ljava/lang/String;

    .line 207
    iput-object v11, v1, Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;->selectionArgs:[Ljava/lang/String;

    .line 208
    invoke-static {p0, p1, v1}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->crDelete(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;)I

    move-result v4

    .line 209
    .local v4, "number":I
    if-eq v4, v12, :cond_1

    .line 210
    add-int/lit8 v2, v2, 0x1

    .line 200
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 213
    .end local v1    # "deleteParams":Lcom/sonyericsson/cameracommon/mediasaving/CrDeleteParameter;
    .end local v4    # "number":I
    .end local v6    # "path":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    .end local v3    # "i":I
    :cond_3
    const/4 v7, 0x0

    .line 219
    .local v7, "result":Z
    if-nez v2, :cond_4

    .line 220
    const/4 v7, 0x1

    goto :goto_0

    .line 222
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static executeDeteleTask(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    .prologue
    .line 233
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;)V

    .line 234
    .local v0, "task":Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    return-void
.end method

.method public static isExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 163
    const/4 v2, 0x1

    .line 164
    .local v2, "result":Z
    const/4 v1, 0x0

    .line 166
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    :goto_0
    if-eqz v1, :cond_0

    .line 173
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :cond_0
    :goto_1
    return v2

    .line 167
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_1
.end method
