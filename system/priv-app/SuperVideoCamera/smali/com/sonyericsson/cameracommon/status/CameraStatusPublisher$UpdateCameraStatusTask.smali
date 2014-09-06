.class Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;
.super Ljava/lang/Object;
.source "CameraStatusPublisher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateCameraStatusTask"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method private constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;->mResolver:Landroid/content/ContentResolver;

    .line 148
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;->mValues:Landroid/content/ContentValues;

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentResolver;
    .param p2, "x1"    # Landroid/content/ContentValues;
    .param p3, "x2"    # Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$1;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;-><init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;->mResolver:Landroid/content/ContentResolver;

    # getter for: Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->STATUS_CONTENT_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher;->access$100()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/status/CameraStatusPublisher$UpdateCameraStatusTask;->mValues:Landroid/content/ContentValues;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 155
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 165
    .end local v0    # "count":I
    :cond_0
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    goto :goto_0
.end method
