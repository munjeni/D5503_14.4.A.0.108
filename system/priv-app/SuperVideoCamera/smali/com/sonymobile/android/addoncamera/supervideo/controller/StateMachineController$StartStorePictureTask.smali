.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartStorePictureTask"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)V
    .locals 1
    .param p2, "request"    # Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .prologue
    .line 1762
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1763
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    invoke-direct {v0, p2}, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;-><init>(Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .line 1764
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->disableAutoOffTimer()V

    .line 1772
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getSavingTaskManager()Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mImage:[B

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mStatus:Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-boolean v3, v3, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mPostProcessing:Z

    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-object v4, v4, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mExtraOutput:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    iget-boolean v5, v5, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;->mAddToMediaStore:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/SavingTaskManager;->storePicture([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    .line 1778
    return-void
.end method
