.class Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/BitmapRegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field mItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;)V
    .locals 0
    .param p1, "item"    # Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .prologue
    .line 1073
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;->mItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    .line 1075
    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;->mItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;->mItem:Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/data/MediaItem;->requestLargeImage()Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 1070
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/CropImage$LoadDataTask;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
