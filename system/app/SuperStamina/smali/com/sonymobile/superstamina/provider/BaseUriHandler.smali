.class public Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.super Ljava/lang/Object;
.source "BaseUriHandler.java"

# interfaces
.implements Lcom/sonymobile/superstamina/provider/IUriHandler;


# instance fields
.field private mBatchCounter:I

.field private mContext:Landroid/content/Context;

.field private mPath:Ljava/lang/String;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mUpdateAfterBatch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    .line 38
    iput-boolean v2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mUpdateAfterBatch:Z

    .line 41
    iput-object p1, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mPath:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mContext:Landroid/content/Context;

    const-string v1, "service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 45
    return-void
.end method


# virtual methods
.method public beginBatch()V
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    .line 76
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support delete"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endBatch()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    .line 81
    iget v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mUpdateAfterBatch:Z

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mUpdateAfterBatch:Z

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    .line 85
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support insert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    iget v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mBatchCounter:I

    if-lez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mUpdateAfterBatch:Z

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t support update"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
