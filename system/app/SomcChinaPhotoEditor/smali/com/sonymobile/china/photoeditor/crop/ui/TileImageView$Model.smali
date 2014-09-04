.class public interface abstract Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView$Model;
.super Ljava/lang/Object;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Model"
.end annotation


# virtual methods
.method public abstract getBackupImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getImageHeight()I
.end method

.method public abstract getImageWidth()I
.end method

.method public abstract getLevelCount()I
.end method

.method public abstract getTile(IIII)Landroid/graphics/Bitmap;
.end method

.method public abstract isFailedToLoad()Z
.end method
