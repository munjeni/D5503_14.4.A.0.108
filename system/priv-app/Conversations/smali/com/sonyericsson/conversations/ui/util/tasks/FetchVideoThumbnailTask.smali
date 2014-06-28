.class public Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;
.super Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;
.source "FetchVideoThumbnailTask.java"


# instance fields
.field private mUniqueId:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;JLcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;)V
    .locals 0
    .param p1, "videoUri"    # Landroid/net/Uri;
    .param p2, "uniqueId"    # J
    .param p4, "callback"    # Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;

    .prologue
    .line 25
    invoke-direct {p0, p1, p4}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;-><init>(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;)V

    .line 26
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;->mUniqueId:J

    .line 27
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "params"    # [Landroid/content/Context;

    .prologue
    .line 32
    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/util/MediaUtil;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 33
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->setRoundedCorners(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 36
    .local v1, "roundedThumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 37
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mUri:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;->mUniqueId:J

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/sonyericsson/conversations/model/ModelCache;->setVideoThumbnail(Landroid/net/Uri;JLandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v1    # "roundedThumbnail":Landroid/graphics/Bitmap;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02008c

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchVideoThumbnailTask;->doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
