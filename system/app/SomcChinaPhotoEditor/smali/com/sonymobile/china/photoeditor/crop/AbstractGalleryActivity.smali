.class public abstract Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;
.super Landroid/app/Activity;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;
.implements Lcom/sonymobile/china/photoeditor/crop/GalleryApp;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDataManager:Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

.field private mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

.field private mImageCacheService:Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;

.field private mMountFilter:Landroid/content/IntentFilter;

.field private mMountReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 50
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$1;-><init>(Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getActionBarHeight()I
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 120
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAndroidContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 83
    return-object p0
.end method

.method public getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mDataManager:Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryApp;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mDataManager:Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    .line 96
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mDataManager:Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->initializeSourceMap()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mDataManager:Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    return-object v0
.end method

.method public getGLRoot()Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    return-object v0
.end method

.method public getImageCacheService()Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mImageCacheService:Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mImageCacheService:Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mImageCacheService:Lcom/sonymobile/china/photoeditor/crop/data/ImageCacheService;

    return-object v0
.end method

.method public getThreadPool()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->invalidateOptionsMenu()V

    .line 80
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;->destroy()V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mThreadPool:Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool;

    .line 173
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->onPause()V

    .line 191
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->lockRenderThread()V

    .line 193
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->unlockRenderThread()V

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->lockRenderThread()V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->getDataManager()Lcom/sonymobile/china/photoeditor/crop/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/DataManager;->resume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->unlockRenderThread()V

    .line 184
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->onResume()V

    .line 185
    return-void

    .line 182
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->lockRenderThread()V

    .line 70
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->unlockRenderThread()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;->unlockRenderThread()V

    throw v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 134
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    .line 135
    new-instance v0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$2;-><init>(Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;)V

    .line 141
    .local v0, "onCancel":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$3;-><init>(Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;)V

    .line 147
    .local v1, "onClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 152
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mMountFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 154
    .end local v0    # "onCancel":Landroid/content/DialogInterface$OnCancelListener;
    .end local v1    # "onClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 159
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 164
    :cond_0
    return-void
.end method

.method protected onStorageReady()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 127
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mMountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 115
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->mGLRootView:Lcom/sonymobile/china/photoeditor/crop/ui/GLRootView;

    .line 116
    return-void
.end method
