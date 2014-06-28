.class public abstract Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/Feature;
.source "BaseFeature.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final FEATURES_URI:Landroid/net/Uri;

.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-BaseFeature"

.field private static final MSG_ON_CHANGED_BY_USER:I = 0x1

.field private static final STATE_ABORT:I = 0x2

.field private static final STATE_OFF:I = 0x0

.field private static final STATE_ON:I = 0x1


# instance fields
.field private final FEATURE_URI:Landroid/net/Uri;

.field private mActivated:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field protected mSavedState:I

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "powersaver/features"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->FEATURES_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "defOverriden"    # Z

    .prologue
    .line 125
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZI)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "defOverriden"    # Z
    .param p5, "defParam"    # I

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sonymobile/superstamina/powersaver/features/Feature;-><init>(Ljava/lang/String;IZI)V

    .line 110
    iput v3, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    .line 114
    iput v3, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature$1;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mObserver:Landroid/database/ContentObserver;

    .line 130
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powersaver/features/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->FEATURE_URI:Landroid/net/Uri;

    .line 133
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->FEATURE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    invoke-direct {p0, p2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->updateFeatureFromCP(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->updateFeatureFromCP(Ljava/lang/String;)V

    return-void
.end method

.method private handleActivation()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mActivated:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    if-eqz v0, :cond_2

    .line 302
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->saveSetting()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    .line 304
    iput v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    .line 305
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->savePreferences()V

    .line 306
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->startListening()V

    .line 309
    :cond_0
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    if-ne v0, v1, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->applySaving()V

    .line 321
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    if-ne v0, v1, :cond_3

    .line 315
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->restoreSetting(I)V

    .line 316
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->stopListening()V

    .line 318
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    .line 319
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->savePreferences()V

    goto :goto_0
.end method

.method private final declared-synchronized savePreferences()V
    .locals 5

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 163
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "overriden"

    iget-boolean v2, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 164
    const-string v1, "param"

    iget v2, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v1, "saved_state"

    iget v2, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    const-string v1, "state"

    iget v2, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->FEATURES_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 162
    .end local v0    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized updateFeatureFromCP(Ljava/lang/String;)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 139
    monitor-enter p0

    const/4 v6, 0x0

    .line 141
    .local v6, "available":Z
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->FEATURES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 144
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 145
    const-string v0, "saved_state"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    .line 146
    const-string v0, "state"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    .line 147
    const-string v0, "available"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 148
    const-string v0, "overriden"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "param"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->setOverriden(ZI)V

    .line 151
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->isAvailableOnDevice()Z

    move-result v0

    if-eq v6, v0, :cond_0

    .line 152
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 153
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "available"

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->isAvailableOnDevice()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->FEATURES_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, p1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract applySaving()V
.end method

.method public declared-synchronized dumpState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v0, "ret":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, ": overriden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, " param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, " saved="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 363
    .end local v0    # "ret":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 349
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 354
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 351
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUserImpl()V

    .line 352
    const/4 v0, 0x1

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailableOnDevice()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method protected final declared-synchronized isSavingActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 241
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mActivated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onChangedByUser()V
    .locals 2

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onChangedByUserImpl()V
    .locals 2

    .prologue
    .line 336
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 345
    :goto_0
    monitor-exit p0

    return-void

    .line 340
    :cond_0
    const/4 v0, 0x2

    :try_start_1
    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    .line 341
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->savePreferences()V

    .line 342
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->stopListening()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPowerSaverActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mActivated:Z

    .line 285
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->handleActivation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_0
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restore()V
    .locals 2

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 271
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mSavedState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->restoreSetting(I)V

    .line 273
    :cond_0
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mState:I

    .line 275
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->savePreferences()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :cond_1
    monitor-exit p0

    return-void

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract restoreSetting(I)V
.end method

.method protected abstract saveSetting()I
.end method

.method public final declared-synchronized setOverriden(ZI)V
    .locals 1
    .param p1, "bool"    # Z
    .param p2, "param"    # I

    .prologue
    .line 246
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_1

    .line 254
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mOverriden:Z

    .line 248
    iput p2, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->savePreferences()V

    .line 250
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->mActivated:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->handleActivation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract startListening()V
.end method

.method protected abstract stopListening()V
.end method

.method public declared-synchronized update(Lcom/sonymobile/superstamina/powersaver/features/Feature;)V
    .locals 2
    .param p1, "f"    # Lcom/sonymobile/superstamina/powersaver/features/Feature;

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getParam()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    .line 263
    invoke-virtual {p1}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->isOverriden()Z

    move-result v0

    iget v1, p0, Lcom/sonymobile/superstamina/powersaver/features/Feature;->mParam:I

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->setOverriden(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 262
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
