.class Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;
.super Ljava/lang/Object;
.source "SuperVideoActivity.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/mediasaving/StorageController$StorageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailableSizeUpdated(J)V
    .locals 0
    .param p1, "available"    # J

    .prologue
    .line 126
    return-void
.end method

.method public onDestinationToSaveChanged()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "storage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getCommonSettings()Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;->SAVE_DESTINATION:Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/activity/BaseActivity;->getStorageManager()Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isToggledStorageReady()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/commonsetting/CommonSettings;->setSelectability(Lcom/sonyericsson/cameracommon/commonsetting/CommonSettingKey;Z)V

    .line 109
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStorageManager:Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/mediasaving/CameraStorageManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_MOUNTED:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoActivity;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;->EVENT_STORAGE_ERROR:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;->sendEvent(Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0
.end method
