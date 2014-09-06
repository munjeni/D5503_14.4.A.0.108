.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.super Ljava/lang/Object;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected mAvailableSize:J

.field protected mCurrentStorage:Ljava/lang/String;

.field protected final mLatestCheckedStorageState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

.field protected mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

.field protected mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

.field protected final mStoragePriority:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mStorageStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;",
            ">;"
        }
    .end annotation
.end field

.field protected mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;
    .param p2, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 111
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    .line 130
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    .line 131
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .line 132
    return-void
.end method

.method private notifyAvailableSize(J)V
    .locals 3
    .param p1, "available"    # J

    .prologue
    .line 373
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 374
    .local v1, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onAvailableSizeUpdated(J)V

    goto :goto_0

    .line 376
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_0
    return-void
.end method

.method private notifyStateChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 353
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 354
    .local v1, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onStorageStateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_0
    return-void
.end method

.method private notifyStorageChanged()V
    .locals 3

    .prologue
    .line 362
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .line 363
    .local v1, "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    invoke-interface {v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;->onDestinationToSaveChanged()V

    goto :goto_0

    .line 365
    .end local v1    # "listener":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public addStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    return-void
.end method

.method protected checkAndNotifyStateChanged(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "forceNotify"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStateChanged(Ljava/lang/String;)V

    .line 294
    :cond_1
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyAvailableSize(J)V

    .line 295
    return-void
.end method

.method protected checkCurrentDialog(I)Z
    .locals 2
    .param p1, "textId"    # I

    .prologue
    const/4 v0, 0x0

    .line 454
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    iget v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;->mTextId:I

    if-eq v1, p1, :cond_1

    .line 456
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 464
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected checkState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isStorageEvent"    # Z
    .param p4, "forceNotify"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    .line 181
    invoke-virtual {p0, p1, p4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected closeDialog(Z)V
    .locals 1
    .param p1, "closeOnlyError"    # Z

    .prologue
    .line 331
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    if-eqz v0, :cond_2

    .line 332
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;->mIsError:Z

    if-nez v0, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;->onCloseStorageDialog()V

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->cancelMemoryErrorPopup()V

    goto :goto_0
.end method

.method public getAvailableStorageSize()J
    .locals 2

    .prologue
    .line 514
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    return-wide v0
.end method

.method public getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    return-object v0
.end method

.method public isStorageDialogOpen()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToggledStorageReady()Z
    .locals 5

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 475
    .local v1, "isReady":Z
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, "storage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v4, :cond_0

    .line 480
    const/4 v1, 0x1

    goto :goto_0

    .line 483
    .end local v2    # "storage":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method protected openDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;IZ)V
    .locals 1
    .param p1, "dialog"    # Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    .param p2, "textId"    # I
    .param p3, "isError"    # Z

    .prologue
    .line 317
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;-><init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;IZ)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialog:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialog;

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageDialogStateListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;->onOpenStorageDialog()V

    .line 320
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 383
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    return-void
.end method

.method public removeStorageListener(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;)V
    .locals 1
    .param p1, "cb"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    return-void
.end method

.method protected requestErrorCheckLater(Ljava/lang/String;)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mLatestCheckedStorageState:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method protected setAvailableStorageSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 506
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mAvailableSize:J

    .line 507
    return-void
.end method

.method public setCurrentStorage(Ljava/lang/String;)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    .line 407
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->getInstance()Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/DcfPathBuilder;->resetStatus()V

    .line 408
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->notifyStorageChanged()V

    .line 409
    return-void
.end method

.method public setMessegePopup(Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;)V
    .locals 0
    .param p1, "messagePopup"    # Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    .line 491
    return-void
.end method

.method public setStorage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method

.method protected showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .locals 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v4, 0x1

    .line 191
    const/4 v0, -0x1

    .line 192
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    .line 193
    .local v1, "titleId":I
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 228
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2

    .line 197
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_0

    .line 201
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_full_txt:I

    .line 202
    goto :goto_0

    .line 207
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_0

    .line 212
    :cond_0
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_0

    .line 218
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_full_txt:I

    .line 219
    goto :goto_0

    .line 224
    :pswitch_5
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 212
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method protected showStoragePopup(IIZ)Z
    .locals 3
    .param p1, "textId"    # I
    .param p2, "titleId"    # I
    .param p3, "isError"    # Z

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, "isShow":Z
    if-lez p1, :cond_1

    .line 431
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkCurrentDialog(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    const/4 v2, 0x1

    .line 444
    :goto_0
    return v2

    .line 436
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    invoke-virtual {v2, p1, p2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryError(II)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v0

    .line 438
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    if-eqz v0, :cond_1

    .line 439
    new-instance v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$DialogDismissListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 440
    invoke-virtual {p0, v0, p1, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->openDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;IZ)V

    .line 441
    const/4 v1, 0x1

    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_1
    move v2, v1

    .line 444
    goto :goto_0
.end method

.method public updateStorageState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {p2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->getState(Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    .line 272
    .local v0, "newState":Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
