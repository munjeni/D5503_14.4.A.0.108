.class public Lcom/sonyericsson/conversations/model/StarredMessageListModel;
.super Lcom/sonyericsson/conversations/model/LoaderModel;
.source "StarredMessageListModel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/conversations/model/LoaderModel;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

.field public static final MODEL_EVENT_DATA_RESET:Ljava/lang/String;

.field private static final STARRED_MESSAGE_LIST_CURSOR_LOADER_ID:I = 0x0

.field private static final UPDATE_CURSER_DELAY:I = 0x15e


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoader:Landroid/content/CursorLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sonyericsson/conversations/model/StarredMessageListModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data_reset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/LoaderModel;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getQueryProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    .line 40
    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p0, p2}, Lcom/sonyericsson/conversations/model/BaseModel;->addListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 43
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1, p0}, Lcom/sonyericsson/conversations/model/LoaderModel;->createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V

    .line 44
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "all-star-message"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 55
    .local v2, "tempUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "semc_ext"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 56
    const-string v4, " star_status=1 "

    .line 58
    .local v4, "where":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->getQueryProjection()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "normalized_date"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 61
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/model/BaseModel;->onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/BaseModel;->removeListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 50
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/StarredMessageListModel;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method
