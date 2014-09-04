.class Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/data/UriImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p2, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->mType:I

    .line 219
    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 222
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->prepareInputFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z
    invoke-static {v4, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->access$100(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 239
    :goto_0
    return-object v0

    .line 224
    :cond_0
    iget v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->mType:I

    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/data/LocalImage;->getTargetSize(I)I

    move-result v2

    .line 225
    .local v2, "targetSize":I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 226
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 227
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->access$200(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {p1, v4, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestDecode(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 229
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v3

    .line 230
    goto :goto_0

    .line 233
    :cond_2
    iget v3, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 234
    invoke-static {v0, v2, v5}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 236
    :cond_3
    invoke-static {v0, v2, v5}, Lcom/sonymobile/china/photoeditor/crop/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 214
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$BitmapJob;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
