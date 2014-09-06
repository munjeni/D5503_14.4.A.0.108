.class public Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;
.super Ljava/lang/Object;
.source "CommonSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSelectabilities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;",
            "Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method private createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 306
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 307
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    return-object v1
.end method

.method private joinStoreTask()V
    .locals 3

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    const-string v2, "joinStoreTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 192
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->TAG:Ljava/lang/String;

    const-string v2, "joinStoreTask"

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 289
    if-nez p1, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public get(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 74
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SHUTTER_SOUND:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne p1, v1, :cond_1

    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/StaticConfigurationUtil;->isForceSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;->ON:Lcom/sonyericsson/cameracommon/commonsetting/values/ShutterSound;

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 78
    .local v0, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1, p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getDefaultValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v0

    goto :goto_0
.end method

.method public isSelectable(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 115
    .local v0, "selectability":Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingConstants;->COMMONSETTING_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v5

    const-string v4, "value"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 250
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 251
    .local v7, "cleared":Z
    if-eqz v6, :cond_2

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const/4 v7, 0x1

    .line 257
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "key":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 261
    .local v11, "value":Ljava/lang/String;
    invoke-static {v8}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->fromKey(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v9

    .line 262
    .local v9, "settingKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    if-eqz v9, :cond_0

    .line 263
    invoke-static {v9, v11}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->fromValue(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    move-result-object v10

    .line 265
    .local v10, "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-direct {p0, v9, v10}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->putIntoMap(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 270
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "settingKey":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v10    # "settingValue":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    .end local v11    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_2
    if-eqz v7, :cond_3

    .line 277
    sget-object v0, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->LAUNCH_ONLY:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V

    .line 280
    :cond_3
    return-void
.end method

.method public set(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;)V
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .prologue
    .line 93
    invoke-interface {p1}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;->getCommonSettingKey()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    move-result-object v0

    .line 94
    .local v0, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->FAST_CAPTURE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-ne v0, v1, :cond_0

    .line 98
    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->OFF:Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    if-ne p1, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    const-string v2, "fcc.status.off"

    check-cast p1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->getProviderValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->store()V

    .line 111
    return-void

    .line 104
    .restart local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mContext:Landroid/content/Context;

    const-string v2, "fcc.status.on"

    check-cast p1, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;

    .end local p1    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/commonsetting/values/FastCapture;->getProviderValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/commonsetting/securesetting/SecureSettingWriter;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .param p2, "selectable"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSelectabilities:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method

.method public store()V
    .locals 8

    .prologue
    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v3, "operations":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mSettings:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    .local v0, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    .line 136
    .local v2, "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;

    .line 140
    .local v4, "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    sget-object v5, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->AUTO_UPLOAD:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-eq v2, v5, :cond_0

    sget-object v5, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->TERM_OF_USE:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    if-eq v2, v5, :cond_0

    .line 145
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->createContentProviderUpdateOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    .end local v0    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;>;"
    .end local v2    # "key":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;
    .end local v4    # "value":Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingValue;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 153
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v5, :cond_2

    .line 154
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 156
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v6, v7, v3}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings$StoreTask;-><init>(Landroid/content/ContentResolver;Ljava/util/List;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mFuture:Ljava/util/concurrent/Future;

    .line 160
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->joinStoreTask()V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 178
    :cond_0
    return-void
.end method
