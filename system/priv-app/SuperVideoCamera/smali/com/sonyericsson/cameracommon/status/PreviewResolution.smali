.class public Lcom/sonyericsson/cameracommon/status/PreviewResolution;
.super Lcom/sonyericsson/cameracommon/status/ResolutionValue;
.source "PreviewResolution.java"


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "preview_resolution"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/PreviewResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera$Size;)V
    .locals 0
    .param p1, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;-><init>(Landroid/hardware/Camera$Size;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "preview_resolution"

    return-object v0
.end method
