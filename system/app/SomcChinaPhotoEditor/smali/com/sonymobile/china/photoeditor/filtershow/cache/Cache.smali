.class public interface abstract Lcom/sonymobile/china/photoeditor/filtershow/cache/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# virtual methods
.method public abstract addObserver(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
.end method

.method public abstract get(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Landroid/graphics/Bitmap;
.end method

.method public abstract isCacheBusy(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z
.end method

.method public abstract prepare(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
.end method

.method public abstract reset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
.end method

.method public abstract setOriginalBitmap(Landroid/graphics/Bitmap;)V
.end method
