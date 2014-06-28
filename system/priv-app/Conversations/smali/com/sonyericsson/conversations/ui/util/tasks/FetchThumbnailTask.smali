.class public abstract Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;
.super Landroid/os/AsyncTask;
.source "FetchThumbnailTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;",
            ">;"
        }
    .end annotation
.end field

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mUri:Landroid/net/Uri;

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mCallback:Ljava/lang/ref/WeakReference;

    .line 40
    return-void
.end method


# virtual methods
.method protected varargs abstract doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, [Landroid/content/Context;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->doInBackground([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 44
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;

    .line 45
    .local v0, "callback":Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;
    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask$ThumbnailReady;->onThumbnailReady(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/tasks/FetchThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected setRoundedCorners(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 61
    if-nez p1, :cond_0

    .line 62
    const/4 v3, 0x0

    .line 84
    :goto_0
    return-object v3

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 66
    .local v2, "imageWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 68
    .local v1, "imageHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 71
    .local v3, "newImage":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 73
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 74
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v8, v8, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 75
    .local v5, "rect":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 77
    .local v6, "rectF":Landroid/graphics/RectF;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 79
    const/high16 v7, -0x1000000

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    int-to-float v7, p2

    int-to-float v8, p2

    invoke-virtual {v0, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 82
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 83
    invoke-virtual {v0, p1, v9, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method
