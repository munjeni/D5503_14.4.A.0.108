.class Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnRecordingInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;


# direct methods
.method private constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V
    .locals 0

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;
    .param p2, "x1"    # Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$1;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;)V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 1
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1299
    sparse-switch p2, :sswitch_data_0

    .line 1324
    :sswitch_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler$OnRecordingInfoCallback;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/device/CameraDeviceHandler;->stopRecording()V

    .line 1325
    return-void

    .line 1299
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x320 -> :sswitch_0
        0x321 -> :sswitch_0
    .end sparse-switch
.end method
