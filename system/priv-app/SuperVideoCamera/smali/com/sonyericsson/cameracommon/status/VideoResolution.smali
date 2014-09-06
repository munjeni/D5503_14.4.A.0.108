.class public Lcom/sonyericsson/cameracommon/status/VideoResolution;
.super Lcom/sonyericsson/cameracommon/status/ResolutionValue;
.source "VideoResolution.java"


# static fields
.field public static final DEFAULT_VALUE:Landroid/graphics/Rect;

.field public static final KEY:Ljava/lang/String; = "video_resolution"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/status/VideoResolution;->DEFAULT_VALUE:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;-><init>(II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/status/ResolutionValue;-><init>(Landroid/graphics/Rect;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "video_resolution"

    return-object v0
.end method
