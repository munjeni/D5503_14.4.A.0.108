.class public Lcom/sonyericsson/conversations/model/LoaderModel;
.super Lcom/sonyericsson/conversations/model/BaseModel;
.source "LoaderModel.java"


# instance fields
.field protected mLoaderManager:Landroid/app/LoaderManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonyericsson/conversations/model/BaseModel;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/LoaderModel;->mLoaderManager:Landroid/app/LoaderManager;

    return-void
.end method


# virtual methods
.method protected createCursorLoaderForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    .param p2, "loaderId"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;",
            "I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, "callback":Landroid/app/LoaderManager$LoaderCallbacks;, "Landroid/app/LoaderManager$LoaderCallbacks<Landroid/database/Cursor;>;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/model/LoaderModel;->initLoaderManagerFromListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 20
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/LoaderModel;->mLoaderManager:Landroid/app/LoaderManager;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/sonyericsson/conversations/model/LoaderModel;->mLoaderManager:Landroid/app/LoaderManager;

    invoke-virtual {v0, p2, p3, p4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 23
    :cond_0
    return-void
.end method

.method protected initLoaderManagerFromListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;

    .prologue
    .line 26
    if-nez p1, :cond_1

    .line 34
    .end local p1    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    :cond_0
    :goto_0
    return-void

    .line 29
    .restart local p1    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    :cond_1
    instance-of v0, p1, Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 30
    check-cast p1, Landroid/app/Fragment;

    .end local p1    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    invoke-virtual {p1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/LoaderModel;->mLoaderManager:Landroid/app/LoaderManager;

    goto :goto_0

    .line 31
    .restart local p1    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 32
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "listener":Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;
    invoke-virtual {p1}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/LoaderModel;->mLoaderManager:Landroid/app/LoaderManager;

    goto :goto_0
.end method
