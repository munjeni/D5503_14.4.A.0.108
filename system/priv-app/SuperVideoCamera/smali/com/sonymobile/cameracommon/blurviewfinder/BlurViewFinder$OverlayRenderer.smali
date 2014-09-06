.class Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;
.super Ljava/lang/Object;
.source "BlurViewFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayRenderer"
.end annotation


# instance fields
.field public final frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

.field public final maskBitmap:Landroid/graphics/Bitmap;

.field public final sizeRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "inFrame"    # Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;
    .param p2, "inSizeRect"    # Landroid/graphics/Rect;
    .param p3, "inMaskBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->frame:Lcom/sonymobile/cameracommon/opengl/AlphaMaskedBlurredYuvFrame;

    .line 196
    iput-object p2, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->sizeRect:Landroid/graphics/Rect;

    .line 197
    iput-object p3, p0, Lcom/sonymobile/cameracommon/blurviewfinder/BlurViewFinder$OverlayRenderer;->maskBitmap:Landroid/graphics/Bitmap;

    .line 198
    return-void
.end method
