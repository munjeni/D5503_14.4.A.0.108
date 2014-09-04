.class public interface abstract Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;
.super Ljava/lang/Object;
.source "FaceBeautyEngine.java"


# virtual methods
.method public abstract beautyStyleRgb(I[BIII[I)I
.end method

.method public abstract beautyStyleRgb(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
.end method

.method public abstract beautyStyleRgbM(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
.end method

.method public abstract beautyStyleYuv(I[BIII[I)I
.end method

.method public abstract beautyStyleYuv(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
.end method

.method public abstract beautyStyleYuvM(I[BIII[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
.end method

.method public abstract faceDetectRgb([BIIIF[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
.end method

.method public abstract faceDetectYuv([BIII)[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
.end method

.method public abstract getStyleDemo(II)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getStyleList()[I
.end method

.method public abstract getStyleName(I)Ljava/lang/String;
.end method

.method public abstract initEngine()V
.end method

.method public abstract realAddYuv([BLandroid/graphics/Rect;I[II)V
.end method

.method public abstract realClear()V
.end method

.method public abstract realRelease()V
.end method

.method public abstract realSetCallback(Lcom/sonymobile/android/facebeauty/engine/FaceCallback;)V
.end method

.method public abstract releaseEngine()V
.end method
