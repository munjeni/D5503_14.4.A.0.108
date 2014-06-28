.class public abstract Lcom/sonymobile/superstamina/BaseActivator;
.super Ljava/lang/Object;
.source "BaseActivator.java"


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-BaseActivator"


# instance fields
.field private final BATTERY_URI:Landroid/net/Uri;

.field private final ENABLED_URI:Landroid/net/Uri;

.field private mActivated:Z

.field private mBatteryLevel:I

.field private mBatteryThreshold:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mId:Ljava/lang/String;

.field private mIsCharging:Z

.field private mReady:Z

.field private mService:Lcom/sonymobile/superstamina/XperiaPowerService;


# direct methods
.method public constructor <init>(Lcom/sonymobile/superstamina/XperiaPowerService;Ljava/lang/String;)V
    .locals 3
    .param p1, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mIsCharging:Z

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    .line 78
    iput-object p2, p0, Lcom/sonymobile/superstamina/BaseActivator;->mId:Ljava/lang/String;

    .line 80
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/BaseActivator;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/battery_threshold"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->BATTERY_URI:Landroid/net/Uri;

    .line 82
    sget-object v0, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/BaseActivator;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->ENABLED_URI:Landroid/net/Uri;

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/superstamina/BaseActivator;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/BaseActivator;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mBatteryThreshold:I

    return p1
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/BaseActivator;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/BaseActivator;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getBatteryThreshold()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sonymobile/superstamina/BaseActivator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/superstamina/BaseActivator;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/BaseActivator;->enableImpl(Z)V

    return-void
.end method

.method private final enableImpl(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mEnabled:Z

    if-ne v0, p1, :cond_0

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mEnabled:Z

    .line 186
    invoke-virtual {p0, p1}, Lcom/sonymobile/superstamina/BaseActivator;->onEnabled(Z)V

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    goto :goto_0
.end method

.method private getBatteryThreshold()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 164
    const/4 v7, 0x0

    .line 165
    .local v7, "threshold":I
    iget-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->BATTERY_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 168
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    const-string v0, "threshold"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_0
    return v7

    .line 172
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method protected final checkActivation()V
    .locals 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->shouldBeActivated()Z

    move-result v0

    .line 197
    .local v0, "activated":Z
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mActivated:Z

    if-ne v1, v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iput-boolean v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mActivated:Z

    .line 199
    invoke-virtual {p0, v0}, Lcom/sonymobile/superstamina/BaseActivator;->onActivated(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " battery threshold = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mBatteryThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected final getService()Lcom/sonymobile/superstamina/XperiaPowerService;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    return-object v0
.end method

.method public init()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    new-instance v0, Lcom/sonymobile/superstamina/BaseActivator$1;

    iget-object v4, p0, Lcom/sonymobile/superstamina/BaseActivator;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v4}, Lcom/sonymobile/superstamina/BaseActivator$1;-><init>(Lcom/sonymobile/superstamina/BaseActivator;Landroid/os/Handler;)V

    .line 101
    .local v0, "batteryObserver":Landroid/database/ContentObserver;
    new-instance v3, Lcom/sonymobile/superstamina/BaseActivator$2;

    iget-object v4, p0, Lcom/sonymobile/superstamina/BaseActivator;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/superstamina/BaseActivator$2;-><init>(Lcom/sonymobile/superstamina/BaseActivator;Landroid/os/Handler;)V

    .line 109
    .local v3, "enabledObserver":Landroid/database/ContentObserver;
    invoke-direct {p0}, Lcom/sonymobile/superstamina/BaseActivator;->getBatteryThreshold()I

    move-result v4

    iput v4, p0, Lcom/sonymobile/superstamina/BaseActivator;->mBatteryThreshold:I

    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isEnabled()Z

    move-result v2

    .line 112
    .local v2, "enable":Z
    if-eqz v2, :cond_0

    .line 116
    invoke-direct {p0, v6}, Lcom/sonymobile/superstamina/BaseActivator;->enableImpl(Z)V

    .line 120
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/superstamina/BaseActivator;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/sonymobile/superstamina/BaseActivator;->BATTERY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 122
    iget-object v4, p0, Lcom/sonymobile/superstamina/BaseActivator;->ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {v1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 124
    iput-boolean v6, p0, Lcom/sonymobile/superstamina/BaseActivator;->mReady:Z

    .line 125
    return-void
.end method

.method protected isAboveThreshold()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mBatteryLevel:I

    iget v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mBatteryThreshold:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActivated()Z
    .locals 1

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mActivated:Z

    return v0
.end method

.method public final isCharging()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mIsCharging:Z

    return v0
.end method

.method protected final isEnabled()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 144
    const/4 v7, 0x0

    .line 146
    .local v7, "enabled":Z
    iget-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->ENABLED_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 150
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    :cond_0
    return v7

    .line 153
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected abstract onActivated(Z)V
.end method

.method public onBatteryChanged(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 228
    iput-boolean p2, p0, Lcom/sonymobile/superstamina/BaseActivator;->mIsCharging:Z

    .line 229
    iput p1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mBatteryLevel:I

    .line 230
    iget-boolean v0, p0, Lcom/sonymobile/superstamina/BaseActivator;->mReady:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    .line 233
    :cond_0
    return-void
.end method

.method protected abstract onEnabled(Z)V
.end method

.method protected shouldBeActivated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 208
    iget-boolean v1, p0, Lcom/sonymobile/superstamina/BaseActivator;->mEnabled:Z

    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/BaseActivator;->isAboveThreshold()Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method
