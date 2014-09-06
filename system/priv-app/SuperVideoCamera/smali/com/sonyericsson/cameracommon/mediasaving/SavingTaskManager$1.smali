.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

.field final synthetic val$status:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;->val$status:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 520
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;->val$status:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;->notifyFailed(I)V

    .line 521
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # invokes: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->cancelPhotoSavingTask(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$700(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;I)V

    .line 522
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$1;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_access_error_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryError(II)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 525
    return-void
.end method
