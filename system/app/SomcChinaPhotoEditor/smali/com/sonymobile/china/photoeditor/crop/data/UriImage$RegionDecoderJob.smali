.class Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;
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
    name = "RegionDecoderJob"
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
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/data/UriImage;
    .param p2, "x1"    # Lcom/sonymobile/china/photoeditor/crop/data/UriImage$1;

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;-><init>(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;
    .locals 3
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->prepareInputFile(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z
    invoke-static {v1, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->access$100(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;->this$0:Lcom/sonymobile/china/photoeditor/crop/data/UriImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage;->access$200(Lcom/sonymobile/china/photoeditor/crop/data/UriImage;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/sonymobile/china/photoeditor/crop/data/DecodeUtils;->requestCreateBitmapRegionDecoder(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    .line 210
    .local v0, "decoder":Landroid/graphics/BitmapRegionDecoder;
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/data/UriImage$RegionDecoderJob;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    return-object v0
.end method
