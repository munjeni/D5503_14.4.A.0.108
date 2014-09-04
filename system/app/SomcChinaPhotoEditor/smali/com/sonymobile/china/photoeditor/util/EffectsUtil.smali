.class public Lcom/sonymobile/china/photoeditor/util/EffectsUtil;
.super Ljava/lang/Object;
.source "EffectsUtil.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "jni_photoeditor"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native nativeBacklight(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeColorTemp(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeCopy(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeCrossProcess(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeDuotone(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)V
.end method

.method public static native nativeFisheye(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FFF)V
.end method

.method public static native nativeFlipBoth(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeFlipHorizontal(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeFlipVertical(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeGrain(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeGrayscale(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeHEQ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeNegative(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeQuantize(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeRedEye(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[Landroid/graphics/PointF;FF)V
.end method

.method public static native nativeSaturation(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeSepia(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeSharpen(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeTint(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
.end method

.method public static native nativeVignetting(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
.end method

.method public static native nativeWarmify(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end method

.method public static native nativeWhiteBlack(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;FF)V
.end method
