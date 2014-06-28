.class public Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;
.super Ljava/lang/Object;
.source "SqLiteRadioStore.java"

# interfaces
.implements Lcom/sonyericsson/fmradio/station/RadioStore;


# static fields
.field private static final FM_RADIO_PREFS_NAME:Ljava/lang/String; = "com.sonyericsson.fmradio.prefs"

.field private static final SAVED_FREQUENCY:Ljava/lang/String; = "saved_frequency"

.field private static final SAVED_REGION:Ljava/lang/String; = "saved_region"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mContext:Landroid/content/Context;

    const-string v1, "com.sonyericsson.fmradio.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    .line 49
    new-instance v0, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    .line 50
    return-void
.end method

.method private getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 182
    return-void
.end method

.method public loadFrequency()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "saved_frequency"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 189
    .local v0, "savedFreq":I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieved frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 190
    return v0
.end method

.method public loadRegion()I
    .locals 5

    .prologue
    .line 206
    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "saved_region"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "savedRegion":I
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrieved region: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 208
    return v0
.end method

.method public readFavorites()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 97
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v3, "favorites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 99
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_2

    .line 100
    iget-object v6, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v6, v2}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->getFavoritesCursor(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;

    move-result-object v1

    .line 101
    .local v1, "cursor":Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    if-eqz v1, :cond_1

    .line 106
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getFrequency()I

    move-result v4

    .line 108
    .local v4, "frequency":I
    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getName()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getColor()I

    move-result v0

    .line 110
    .local v0, "color":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-direct {v7, v5, v0}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    .end local v0    # "color":I
    .end local v4    # "frequency":I
    .end local v5    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Landroid/database/CursorWrapper;->close()V

    throw v6

    :cond_0
    invoke-virtual {v1}, Landroid/database/CursorWrapper;->close()V

    .line 116
    :cond_1
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-static {v6}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 120
    .end local v1    # "cursor":Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    :goto_1
    return-object v3

    .line 118
    :cond_2
    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "Failed to get database, returning no items"

    aput-object v7, v6, v8

    invoke-static {v6}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public readStations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 71
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 72
    .local v4, "stations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 73
    .local v1, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_2

    .line 74
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v1}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->getStationsCursor(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;

    move-result-object v0

    .line 75
    .local v0, "cursor":Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    if-eqz v0, :cond_1

    .line 79
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getFrequency()I

    move-result v2

    .line 81
    .local v2, "frequency":I
    invoke-virtual {v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;->getName()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "name":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-direct {v6, v3}, Lcom/sonyericsson/fmradio/station/RadioStation;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    .end local v2    # "frequency":I
    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    throw v5

    :cond_0
    invoke-virtual {v0}, Landroid/database/CursorWrapper;->close()V

    .line 88
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 92
    .end local v0    # "cursor":Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper$CursorHelper;
    :goto_1
    return-object v4

    .line 90
    :cond_2
    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Failed to get database, returning no items"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public saveFrequency(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "saved_frequency"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    return-void
.end method

.method public saveRegion(I)V
    .locals 2
    .param p1, "region"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 213
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "saved_region"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    return-void
.end method

.method public writeFavorites(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "favorites":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 151
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 152
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 153
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 154
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Failed to get database, write skipped"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 174
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 160
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->removeAllFavorites(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 161
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    const-string v6, "frequency"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v6, "name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v6, "color"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/station/Favorite;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/station/Favorite;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v5, "favorites"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 169
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/database/SQLException;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "SQLException when inserting favorite frequency"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 168
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public writeStations(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/RadioStation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "radioStations":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 125
    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 127
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 128
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Failed to get database, write skipped"

    aput-object v6, v5, v7

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V

    .line 147
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 134
    :try_start_0
    iget-object v5, p0, Lcom/sonyericsson/fmradio/station/SqLiteRadioStore;->mDataBaseOpenHelper:Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/fmradio/station/FmRadioDbOpenHelper;->removeAllStations(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 135
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v4, "values":Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    const-string v6, "frequency"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v6, "name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/station/RadioStation;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/station/RadioStation;->getProgramServiceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v5, "radiostations"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 142
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/RadioStation;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/database/SQLException;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "SQLException when inserting station frequency"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/sonyericsson/fmradio/util/LogUtil;->logw([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 141
    .end local v1    # "e":Landroid/database/SQLException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method
