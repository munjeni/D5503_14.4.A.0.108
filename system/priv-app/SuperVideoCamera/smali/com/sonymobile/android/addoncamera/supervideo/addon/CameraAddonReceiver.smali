.class public Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CameraAddonReceiver.java"


# static fields
.field public static final CAPTURE_MODE_4K_UHD:Ljava/lang/String; = "capture_mode_4kuhd_video"

.field public static final CAPTURE_MODE_HIGH_FRAME_RATE:Ljava/lang/String; = "capture_mode_high_frame_rate"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private is4kVideoSupported(Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;I)Z
    .locals 6
    .param p1, "parameterseCache"    # Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;
    .param p2, "cameraid"    # I

    .prologue
    .line 120
    invoke-virtual {p1, p2}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;->get(I)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 121
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v3

    .line 123
    .local v3, "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v3, :cond_1

    .line 124
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 125
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    const/16 v5, 0xf00

    if-ne v4, v5, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    const/16 v5, 0x870

    if-ne v4, v5, :cond_0

    .line 127
    const/4 v4, 0x1

    .line 132
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "sizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static isAcceptedPackage(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v2, 0x1

    .line 114
    :goto_0
    return v2

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 109
    const-string v2, "package:"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "packagename":Ljava/lang/String;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  package-name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  my-package-name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 114
    .end local v0    # "packagename":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isHighFrameRateSupported(Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;I)Z
    .locals 4
    .param p1, "parameterseCache"    # Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;
    .param p2, "cameraid"    # I

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p1, p2}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;->get(I)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 138
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_0

    .line 139
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/device/CameraParameterUtil;->getPreviewMasFps(Landroid/hardware/Camera$Parameters;)I

    move-result v0

    .line 140
    .local v0, "maxFps":I
    const/16 v3, 0x78

    if-lt v0, v3, :cond_0

    const/4 v2, 0x1

    .line 142
    .end local v0    # "maxFps":I
    :cond_0
    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f0a0288

    const v8, 0x7f0a0287

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 49
    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive() intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->isAcceptedPackage(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v1, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;

    invoke-direct {v1, p1}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, "parameters":Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;->saveExcept(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributes;>;"
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->is4kVideoSupported(Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 68
    new-instance v3, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    invoke-direct {v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->packageName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const-class v4, Lcom/sonymobile/android/addoncamera/supervideo/HighResolutionVideoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->activityName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->modeName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const v4, 0x7f020005

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const v4, 0x7f0a028f

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->descriptionLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleNormal(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleOneshot(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->build()Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    invoke-direct {p0, v1, v6}, Lcom/sonymobile/android/addoncamera/supervideo/addon/CameraAddonReceiver;->isHighFrameRateSupported(Lcom/sonymobile/camera/addon/internal/capabilities/CameraParametersCache;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    new-instance v3, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    invoke-direct {v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->packageName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const-class v4, Lcom/sonymobile/android/addoncamera/supervideo/HighFrameRateVideoActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->activityName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    sget-object v4, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v4}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->modeName(Ljava/lang/String;)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const v4, 0x7f02000d

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->selectorLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const v4, 0x7f020006

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutIconId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    const v4, 0x7f0a0290

    invoke-virtual {v3, v4}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->descriptionLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->shortcutLabelId(I)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleNormal(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->isVisibleOneshot(Z)Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributesBuilder;->build()Lcom/sonymobile/camera/addon/internal/capturingmode/CapturingModeAttributes;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 99
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {v2, v0}, Lcom/sonymobile/camera/addon/internal/registration/AddOnRegistrationHelper;->register(Landroid/content/ContentResolver;Ljava/util/List;)V

    goto/16 :goto_0
.end method
