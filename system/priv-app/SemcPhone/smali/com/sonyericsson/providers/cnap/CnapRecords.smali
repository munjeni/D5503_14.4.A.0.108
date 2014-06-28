.class public Lcom/sonyericsson/providers/cnap/CnapRecords;
.super Ljava/lang/Object;
.source "CnapRecords.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "content://com.sonyericsson.providers.cnap/cnaprecords"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOrUpdateRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeStamp"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 115
    .local v8, "values":Landroid/content/ContentValues;
    const-string v3, "number=?"

    .line 116
    .local v3, "where":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v9

    .line 117
    .local v4, "whereArgs":[Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 121
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "name"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    const-string v1, "updatable"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 126
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "id":Ljava/lang/String;
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 137
    .end local v7    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 130
    :cond_1
    if-eqz v6, :cond_2

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_2
    const-string v1, "name"

    invoke-virtual {v8, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v1, "number"

    invoke-virtual {v8, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 136
    const-string v1, "updatable"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    sget-object v1, Lcom/sonyericsson/providers/cnap/CnapRecords;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 130
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_3

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method
