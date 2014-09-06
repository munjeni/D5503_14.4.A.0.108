.class public Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;
.super Ljava/lang/Object;
.source "CustomizationUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;


# instance fields
.field private mIsMmsSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->mIsMmsSupported:Z

    .line 26
    return-void
.end method

.method public static declared-synchronized isMmsSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const-class v1, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    .line 48
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->readCustomization(Landroid/content/Context;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->sInstance:Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;

    iget-boolean v0, v0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->mIsMmsSupported:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readCustomization(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sonyericsson/cameracommon/utility/CustomizationLocalR$bool;->disable_mms:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->mIsMmsSupported:Z

    .line 41
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->mIsMmsSupported:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/CustomizationUtil;->TAG:Ljava/lang/String;

    const-string v2, "readCustomization failed."

    invoke-static {v1, v2, v0}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
