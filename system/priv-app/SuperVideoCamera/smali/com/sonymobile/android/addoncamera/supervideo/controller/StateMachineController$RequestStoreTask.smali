.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;
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
    name = "RequestStoreTask"
.end annotation


# instance fields
.field private final mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;[BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V
    .locals 6
    .param p2, "data"    # [B
    .param p3, "status"    # Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;
    .param p4, "isSuperResolutinZoom"    # Z
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "addToMediaStore"    # Z

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1787
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;-><init>([BLcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ZLandroid/net/Uri;Z)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    .line 1789
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1794
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    monitor-enter v2

    .line 1797
    :try_start_0
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    iget-object v3, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->mRequest:Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;Lcom/sonyericsson/cameracommon/mediasaving/PhotoSavingRequest;)V

    .line 1798
    .local v0, "task":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$2000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1799
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$2000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask$1;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$RequestStoreTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1810
    return-void

    .line 1799
    .end local v0    # "task":Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$StartStorePictureTask;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
