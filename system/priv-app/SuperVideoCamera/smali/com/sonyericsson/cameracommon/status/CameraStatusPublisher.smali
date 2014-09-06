.class public Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.super Ljava/lang/Object;
.source "CameraStatusPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$1;,
        Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sonymobile.camera.status.provider"

.field private static final BASE_URI:Landroid/net/Uri;

.field private static final STATUS_CONTENT_URI:Landroid/net/Uri;

.field private static final STATUS_TABLE:Ljava/lang/String; = "status"

.field private static final TAG:Ljava/lang/String;

.field private static final mExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mContentValues:Landroid/content/ContentValues;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->TAG:Ljava/lang/String;

    .line 35
    const-string v0, "content://com.sonymobile.camera.status.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->BASE_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->BASE_URI:Landroid/net/Uri;

    const-string v1, "status"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->STATUS_CONTENT_URI:Landroid/net/Uri;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mResolver:Landroid/content/ContentResolver;

    .line 59
    return-void
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->STATUS_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public publish()V
    .locals 5

    .prologue
    .line 138
    sget-object v0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 1
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/status/CameraStatusValue;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusValue;->putInto(Landroid/content/ContentValues;)V

    .line 73
    :cond_0
    return-object p0
.end method

.method public putDefaultAll()Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->putDefaultAllWithValue(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    return-object v0
.end method

.method public putDefaultAllWithValue(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 4
    .param p1, "value"    # Lcom/sonyericsson/cameracommon/status/CameraStatusValue;

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Lcom/sonyericsson/cameracommon/status/DeviceStatus;

    sget-object v1, Lcom/sonyericsson/cameracommon/status/DeviceStatus;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/status/DeviceStatus;-><init>(Lcom/sonyericsson/cameracommon/status/DeviceStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/CameraId;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/CameraId;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/PreviewResolution;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/PreviewResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/PictureResolution;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/PictureResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/PictureResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/VideoResolution;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/VideoResolution;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/PreviewMaxFps;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/PreviewMaxFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/VideoRecordingFps;

    invoke-direct {v1, v3}, Lcom/sonyericsson/cameracommon/status/VideoRecordingFps;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/BurstShooting;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/BurstShooting;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/BurstShooting$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/BurstShooting;-><init>(Lcom/sonyericsson/cameracommon/status/BurstShooting$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/FaceIdentification;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/FaceIdentification;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/FaceIdentification;-><init>(Lcom/sonyericsson/cameracommon/status/FaceIdentification$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/FaceDetection;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/FaceDetection;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/FaceDetection$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/FaceDetection;-><init>(Lcom/sonyericsson/cameracommon/status/FaceDetection$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/SceneRecognition;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/SceneRecognition;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/SceneRecognition$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/SceneRecognition;-><init>(Lcom/sonyericsson/cameracommon/status/SceneRecognition$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/ObjectTracking;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/ObjectTracking;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/ObjectTracking$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/ObjectTracking;-><init>(Lcom/sonyericsson/cameracommon/status/ObjectTracking$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/VideoStabilizer;-><init>(Lcom/sonyericsson/cameracommon/status/VideoStabilizer$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/cameracommon/status/PhotoLight;

    sget-object v2, Lcom/sonyericsson/cameracommon/status/PhotoLight;->DEFAULT_VALUE:Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/status/PhotoLight;-><init>(Lcom/sonyericsson/cameracommon/status/PhotoLight$Value;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 129
    return-object p0
.end method

.method public putFromParameter(Landroid/hardware/Camera$Parameters;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
    .locals 5
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 88
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 89
    .local v0, "pictureSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 90
    new-instance v2, Lcom/sonyericsson/cameracommon/status/PreviewResolution;

    invoke-direct {v2, v1}, Lcom/sonyericsson/cameracommon/status/PreviewResolution;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/status/PictureResolution;

    invoke-direct {v3, v0}, Lcom/sonyericsson/cameracommon/status/PictureResolution;-><init>(Landroid/hardware/Camera$Size;)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/cameracommon/status/PreviewMaxFps;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;->getPreviewMasFps(Landroid/hardware/Camera$Parameters;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/sonyericsson/cameracommon/status/PreviewMaxFps;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->put(Lcom/sonyericsson/cameracommon/status/CameraStatusValue;)Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;

    .line 95
    .end local v0    # "pictureSize":Landroid/hardware/Camera$Size;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_0
    return-object p0
.end method
