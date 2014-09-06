.class public Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;
.super Lcom/sonyericsson/cameracommon/mediasaving/StorageController;
.source "StorageAutoSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;,
        Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V
    .locals 0
    .param p1, "dialogListener"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinder;
    .param p2, "switchListener"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .param p3, "viewFinder"    # Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    .prologue
    .line 32
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageDialogStateListener;Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;)V

    .line 33
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;)Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    return-object v0
.end method

.method private checkBetterStorage(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "targetStorage"    # Ljava/lang/String;
    .param p2, "notify"    # Z

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->hasBetterStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v0, v1, :cond_1

    .line 93
    :cond_0
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchStorage()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showPopupDualStorageAvailable()Z

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showDialogForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->onStorageAutoSwitch(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkState(Ljava/lang/String;Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;ZZ)V
    .locals 1
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager$DetailStorageState;
    .param p3, "isStorageEvent"    # Z
    .param p4, "forceNotify"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mViewFinder:Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/viewfinder/ViewFinderInterface;->isHeadUpDesplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkAndNotifyStateChanged(Ljava/lang/String;Z)V

    .line 75
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->checkBetterStorage(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->switchStorage()V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z

    goto :goto_0
.end method

.method protected getTextIdForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)I
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    .line 157
    const/4 v0, -0x1

    .line 159
    .local v0, "textId":I
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 196
    :goto_0
    :pswitch_0
    return v0

    .line 167
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_full_storage_to_internal_txt:I

    .line 168
    goto :goto_0

    .line 173
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_storage_changing_to_internal_txt:I

    goto :goto_0

    .line 178
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 184
    :pswitch_3
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_storage_to_sd_txt:I

    .line 185
    goto :goto_0

    .line 190
    :pswitch_4
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_storage_to_sd_txt:I

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 178
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method protected hasBetterStorage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "targetStorage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 248
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 249
    .local v0, "currentPriority":I
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->mStorageAutoSwitchListener:Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;

    invoke-interface {v3}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$StorageAutoSwitchListener;->canSwitchStorage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->requestErrorCheckLater(Ljava/lang/String;)V

    move v3, v4

    .line 269
    :goto_0
    return v3

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-eq v3, v5, :cond_1

    .line 257
    const/16 v0, 0x64

    .line 260
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 261
    .local v2, "storage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_2

    .line 262
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v5, :cond_2

    .line 265
    const/4 v3, 0x1

    goto :goto_0

    .end local v2    # "storage":Ljava/lang/String;
    :cond_3
    move v3, v4

    .line 269
    goto :goto_0
.end method

.method public isToggledStorageReady()Z
    .locals 5

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
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

    .line 290
    .local v2, "storage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mCurrentStorage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStorageStatus:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    if-ne v3, v4, :cond_0

    .line 294
    const/4 v1, 0x1

    goto :goto_0

    .line 297
    .end local v2    # "storage":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public setStorage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "storage"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mStoragePriority:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method protected showDialogForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .locals 3
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;->getTextIdForForceChanged(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)I

    move-result v0

    .line 236
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    .line 237
    .local v1, "titleId":I
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    .line 238
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2
.end method

.method protected showOrClearStorageErrorPopup(Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;)Z
    .locals 5
    .param p1, "state"    # Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    .prologue
    const/4 v4, 0x1

    .line 207
    const/4 v0, -0x1

    .line 208
    .local v0, "textId":I
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    .line 209
    .local v1, "titleId":I
    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;->$SwitchMap$com$sonyericsson$cameracommon$mediasaving$StorageController$StorageState:[I

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->getCurrentStorageState()Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageState;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 224
    :goto_0
    invoke-virtual {p0, v0, v1, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->showStoragePopup(IIZ)Z

    move-result v2

    return v2

    .line 211
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->closeDialog(Z)V

    goto :goto_0

    .line 215
    :pswitch_1
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_internal_sd_full_txt:I

    .line 216
    goto :goto_0

    .line 221
    :pswitch_2
    sget v0, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_unavailable_txt:I

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected showPopupDualStorageAvailable()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 121
    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_storage_to_sd_txt:I

    .line 122
    .local v1, "textId":I
    const/4 v10, 0x0

    .line 124
    .local v10, "isShow":Z
    if-lez v1, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->checkCurrentDialog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return v3

    .line 129
    :cond_0
    const/4 v9, 0x0

    .line 130
    .local v9, "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_save_destination_title_txt:I

    sget v4, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_change_txt:I

    sget v5, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_cancel_txt:I

    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;

    invoke-direct {v6, p0, v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogOkClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    new-instance v7, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;

    invoke-direct {v7, p0, v8}, Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$DialogCancelClickListener;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController;Lcom/sonyericsson/cameracommon/mediasaving/StorageAutoSwitchController$1;)V

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showOkAndCancel(IIZIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    move-result-object v9

    .line 142
    if-eqz v9, :cond_1

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v9, v1, v0}, Lcom/sonyericsson/cameracommon/mediasaving/StorageController;->openDialog(Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;IZ)V

    .line 144
    const/4 v10, 0x1

    .end local v9    # "dialog":Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;
    :cond_1
    move v3, v10

    .line 147
    goto :goto_0
.end method
