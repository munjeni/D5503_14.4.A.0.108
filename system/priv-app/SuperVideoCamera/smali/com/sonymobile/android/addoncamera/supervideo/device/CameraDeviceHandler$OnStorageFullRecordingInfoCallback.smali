.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;
.super Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnStorageFullRecordingInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 1

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;

    .prologue
    .line 1274
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1277
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnStorageFullRecordingInfoCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->mStateMachine:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
    invoke-static {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1282
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;->onInfo(Landroid/media/MediaRecorder;II)V

    .line 1283
    return-void
.end method
