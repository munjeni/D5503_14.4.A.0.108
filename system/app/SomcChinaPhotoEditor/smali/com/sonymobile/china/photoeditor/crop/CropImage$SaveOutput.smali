.class Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$Job",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCropRect:Landroid/graphics/RectF;

.field private final mExtras:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/RectF;Landroid/os/Bundle;)V
    .locals 0
    .param p2, "cropRect"    # Landroid/graphics/RectF;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 312
    iput-object p3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mExtras:Landroid/os/Bundle;

    .line 313
    return-void
.end method


# virtual methods
.method public run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/content/Intent;
    .locals 13
    .param p1, "jc"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 316
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mCropRect:Landroid/graphics/RectF;

    .line 318
    .local v0, "cropRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/Rect;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v9, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget v10, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget v11, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 321
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v5, "result":Landroid/content/Intent;
    const-string v8, "cropped-rect"

    invoke-virtual {v5, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    const/4 v1, 0x0

    .line 325
    .local v1, "cropped":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 326
    .local v3, "outputted":Z
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mExtras:Landroid/os/Bundle;

    if-eqz v8, :cond_a

    .line 327
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mExtras:Landroid/os/Bundle;

    const-string v9, "output"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 328
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 329
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v5, v7

    .line 373
    .end local v5    # "result":Landroid/content/Intent;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v5

    .line 331
    .restart local v5    # "result":Landroid/content/Intent;
    .restart local v6    # "uri":Landroid/net/Uri;
    :cond_1
    const/4 v3, 0x1

    .line 332
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$500(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 333
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveBitmapToUri(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z
    invoke-static {v8, p1, v1, v6}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$600(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_2

    move-object v5, v7

    .line 334
    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 338
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mExtras:Landroid/os/Bundle;

    const-string v9, "return-data"

    invoke-virtual {v8, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 339
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v5, v7

    .line 340
    goto :goto_0

    .line 341
    :cond_4
    const/4 v3, 0x1

    .line 342
    if-nez v1, :cond_5

    .line 343
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$500(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 344
    :cond_5
    const-string v8, "data"

    invoke-virtual {v5, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->mExtras:Landroid/os/Bundle;

    const-string v9, "set-as-wallpaper"

    invoke-virtual {v8, v9, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 347
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v5, v7

    .line 348
    goto :goto_0

    .line 349
    :cond_7
    const/4 v3, 0x1

    .line 350
    if-nez v1, :cond_8

    .line 351
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v8, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$500(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 353
    :cond_8
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v5, v7

    .line 354
    goto :goto_0

    .line 356
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->setAsWallpaper(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z
    invoke-static {v8, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$700(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Z

    move-result v8

    if-nez v8, :cond_a

    move-object v5, v7

    .line 357
    goto :goto_0

    .line 362
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_a
    if-nez v3, :cond_0

    .line 363
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_b

    move-object v5, v7

    .line 364
    goto :goto_0

    .line 365
    :cond_b
    const-string v7, "saved-to-media-provider"

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    if-nez v1, :cond_c

    .line 367
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->getCroppedImage(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    invoke-static {v7, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$500(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 368
    :cond_c
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveToMediaProvider(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    invoke-static {v7, p1, v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$800(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;)Landroid/net/Uri;

    move-result-object v2

    .line 369
    .local v2, "data":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {v5, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public bridge synthetic run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/crop/CropImage$SaveOutput;->run(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
