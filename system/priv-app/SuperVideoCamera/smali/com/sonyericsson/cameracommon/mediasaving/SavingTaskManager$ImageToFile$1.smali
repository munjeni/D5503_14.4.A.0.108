.class Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;
.super Ljava/lang/Object;
.source "SavingTaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->storeData(Ljava/lang/Exception;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile$1;->this$1:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager$ImageToFile;->this$0:Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    # getter for: Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->mMessagePopup:Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;
    invoke-static {v0}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->access$200(Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;)Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_ims_access_error_txt:I

    sget v2, Lcom/sonyericsson/cameracommon/R$string;->cam_strings_error_memory_title_txt:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/messagepopup/MessagePopup;->showMemoryError(II)Lcom/sonyericsson/cameracommon/rotatableview/RotatableDialog;

    .line 369
    return-void
.end method
