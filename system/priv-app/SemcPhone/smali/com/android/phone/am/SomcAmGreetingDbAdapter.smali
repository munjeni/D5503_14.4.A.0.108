.class public Lcom/android/phone/am/SomcAmGreetingDbAdapter;
.super Ljava/lang/Object;
.source "SomcAmGreetingDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;
    }
.end annotation


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    .line 107
    new-instance v0, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    invoke-direct {v0, p1}, Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    .line 108
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 125
    return-void
.end method

.method public deleteGreetingById(I)I
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "numberOfDeleteRows":I
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 236
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "selection":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "t_greeting"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 239
    .end local v1    # "selection":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public getAllGreetings()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "t_greeting"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 136
    :cond_0
    return-object v2
.end method

.method public getCountGreetingByUser()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 266
    const/4 v8, 0x0

    .line 267
    .local v8, "count":I
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 268
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s = \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "user"

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "t_greeting"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 271
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 273
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 275
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 279
    .end local v3    # "selection":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    return v8

    .line 275
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getFirstGreetingId()I
    .locals 3

    .prologue
    .line 313
    const/4 v1, -0x1

    .line 314
    .local v1, "firstGreetingId":I
    iget-object v2, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getAllGreetings()Landroid/database/Cursor;

    move-result-object v0

    .line 316
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 318
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 319
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 321
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 325
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    return v1

    .line 321
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public getSelectedGreetingFilePath(I)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v9, 0x0

    .line 185
    .local v9, "filepath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "t_greeting"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 188
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 190
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 195
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 199
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v9

    .line 195
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getSelectedGreetingName(I)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 209
    const/4 v9, 0x0

    .line 210
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 211
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s = %d"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "t_greeting"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 213
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 215
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 220
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 224
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object v9

    .line 220
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public idPresetGreeting(I)Z
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 289
    const-string v9, "preset"

    .line 290
    .local v9, "type":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 291
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "selection":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "t_greeting"

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 293
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 295
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 297
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 300
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 304
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    const-string v0, "preset"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 300
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public open()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDbHelper:Lcom/android/phone/am/SomcAmGreetingDbAdapter$SomcAmGreetingDbHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    iget-object v0, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public renameGreeting(ILjava/lang/String;)I
    .locals 8
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "numberOfRenamedRows":I
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 252
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 253
    .local v2, "selection":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 254
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v3, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "t_greeting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 257
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v2    # "selection":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public saveGreetingToDb(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 147
    iget-object v7, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_1

    .line 148
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->getAllGreetings()Landroid/database/Cursor;

    move-result-object v1

    .line 150
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 152
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 153
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_0

    .line 154
    const-string v7, "_id"

    const/4 v8, 0x0

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    :goto_0
    const-string v7, "type"

    const-string v8, "user"

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v7, "name"

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v7, "path"

    invoke-virtual {v0, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v7, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    iget-object v7, p0, Lcom/android/phone/am/SomcAmGreetingDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "t_greeting"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 164
    .local v3, "result":J
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 165
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-eqz v7, :cond_1

    .line 174
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "result":J
    :goto_1
    return v5

    .line 157
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v7, "_id"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "SomcAmGreetingDbAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception with Cursor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 174
    goto :goto_1
.end method
