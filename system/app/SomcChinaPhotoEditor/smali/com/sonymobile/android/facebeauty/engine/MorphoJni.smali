.class public Lcom/sonymobile/android/facebeauty/engine/MorphoJni;
.super Ljava/lang/Object;
.source "MorphoJni.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "beautyface"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native beautyStyleRGB([BIII[II[B[B[B[B[BI[B[II)I
.end method

.method public static native beautyStyleYuv([BIII[II[B[B[B[B[BI[B[ILcom/sonymobile/android/facebeauty/engine/InterruptCallBack;JI)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
.end method

.method public static native faceDetect([BIIF[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
.end method

.method public static native faceDetectAndBeautyFaceFull([BIIII[II[B[B[B[B[BI[B[Lcom/sonymobile/android/facebeauty/engine/FaceRect;I)I
.end method

.method public static native getVersion()I
.end method

.method public static native init()I
.end method

.method public static native release()V
.end method
