.class public interface abstract Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;
.super Ljava/lang/Object;
.source "BaseCollageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/BaseCollageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollageInfoInterface"
.end annotation


# virtual methods
.method public abstract addPicture([Landroid/net/Uri;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V
.end method

.method public abstract getBgPicBitmaps()[Landroid/graphics/Bitmap;
.end method

.method public abstract getPicBitmaps()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removePicture(Landroid/graphics/Bitmap;)Z
.end method
