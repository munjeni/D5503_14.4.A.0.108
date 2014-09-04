.class Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;
.super Landroid/os/AsyncTask;
.source "SaveUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/utils/SaveUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavePublicScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mCallback:Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mCallback:Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;

    .line 71
    iput-object p2, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;Lcom/sonymobile/china/collage/utils/SaveUtils$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/graphics/Bitmap;
    .param p3, "x2"    # Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;
    .param p4, "x3"    # Lcom/sonymobile/china/collage/utils/SaveUtils$1;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/sonymobile/china/collage/utils/ImageUtils;->savePublicImage(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mCallback:Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;->onSaveComplete(Landroid/net/Uri;)V

    .line 92
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    check-cast p1, Landroid/net/Uri;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonymobile/china/collage/utils/SaveUtils$SavePublicScreenshotTask;->mCallback:Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;

    invoke-interface {v0}, Lcom/sonymobile/china/collage/utils/SaveUtils$CollageSaveCallback;->onSaveStarted()V

    .line 77
    return-void
.end method
