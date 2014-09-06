.class Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;
.super Ljava/lang/Object;
.source "StateMachineController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->onStoreComplete(Lcom/sonyericsson/cameracommon/mediasaving/TakenStatus;ILjava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

.field final synthetic val$originalUri:Landroid/net/Uri;

.field final synthetic val$requestId:I

.field final synthetic val$result:Z

.field final synthetic val$thumbnailOrientation:I


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;ZLandroid/net/Uri;II)V
    .locals 0

    .prologue
    .line 1852
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    iput-boolean p2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$result:Z

    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$originalUri:Landroid/net/Uri;

    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$thumbnailOrientation:I

    iput p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$requestId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1855
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mActivity:Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$result:Z

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$originalUri:Landroid/net/Uri;

    const-string v3, "image/jpeg"

    iget v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$thumbnailOrientation:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/activity/BaseExtendedActivity;->onStoreComplete(ZLandroid/net/Uri;Ljava/lang/String;I)V

    .line 1857
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    monitor-enter v1

    .line 1858
    :try_start_0
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$requestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_ADD_NEW_CONTENT:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$requestId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->val$originalUri:Landroid/net/Uri;

    aput-object v5, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    .line 1869
    :goto_0
    monitor-exit v1

    .line 1870
    return-void

    .line 1864
    :cond_0
    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StateMachineController.onStoreComplete():[AddCompleted Failed]"

    invoke-static {v0, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController$3;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->mViewFinder:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachineController;)Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;

    move-result-object v0

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;->EVENT_REQUEST_RELOAD_CONTENT:Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder;->sendViewUpdateEvent(Lcom/sonymobile/android/addoncamera/supervideo/view/SuperVideoViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1869
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
