.class Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;
.super Ljava/lang/Object;
.source "GifMakerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConvertRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;
    .param p2, "x1"    # Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0x317e16

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Edited/Animation"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".gif"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 297
    .local v22, "outPath":Ljava/lang/String;
    new-instance v17, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;

    invoke-direct/range {v17 .. v17}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;-><init>()V

    .line 298
    .local v17, "encoder":Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;
    const v3, 0x7fffffff

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->setRepeat(I)V

    .line 299
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->start(Ljava/lang/String;)Z

    .line 300
    const/16 v3, 0x64

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->setDelay(I)V

    .line 303
    const/16 v19, 0x0

    .line 304
    .local v19, "input":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 305
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/16 v25, 0x1

    .line 306
    .local v25, "start":I
    const/16 v21, 0x0

    .line 307
    .local v21, "orientation":I
    :try_start_0
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .local v13, "matrix":Landroid/graphics/Matrix;
    move/from16 v26, v25

    .end local v25    # "start":I
    .local v26, "start":I
    move-object/from16 v20, v19

    .line 308
    .end local v19    # "input":Ljava/io/FileInputStream;
    .local v20, "input":Ljava/io/FileInputStream;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->isCancel:Z
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$200(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eqz v3, :cond_1

    .line 310
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$500(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    move/from16 v0, v26

    if-ne v0, v3, :cond_2

    .line 355
    if-eqz v2, :cond_0

    .line 356
    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    :cond_0
    if-eqz v20, :cond_1

    .line 359
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileInputStream;->close()V

    .line 363
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->finish()Z

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->isCancel:Z
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$200(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 365
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v18, "file":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v18    # "file":Ljava/io/File;
    :goto_1
    move/from16 v25, v26

    .line 379
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    .end local v17    # "encoder":Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;
    .end local v20    # "input":Ljava/io/FileInputStream;
    .end local v21    # "orientation":I
    .end local v22    # "outPath":Ljava/lang/String;
    .end local v26    # "start":I
    :goto_2
    return-void

    .line 313
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "encoder":Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    .restart local v21    # "orientation":I
    .restart local v22    # "outPath":Ljava/lang/String;
    .restart local v26    # "start":I
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "orientation"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 317
    new-instance v19, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$300(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/database/Cursor;

    move-result-object v4

    const-string v5, "_data"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 320
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "input":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$600(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 322
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/16 v4, 0x140

    if-eq v3, v4, :cond_3

    .line 323
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 324
    .local v7, "scaleMatrix":Landroid/graphics/Matrix;
    const/high16 v3, 0x43a00000

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v23, v3, v4

    .line 326
    .local v23, "scaleX":F
    const/high16 v3, 0x43340000

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v24, v3, v4

    .line 328
    .local v24, "scaleY":F
    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 329
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 332
    .local v15, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 333
    move-object v2, v15

    .line 335
    .end local v7    # "scaleMatrix":Landroid/graphics/Matrix;
    .end local v15    # "bmp":Landroid/graphics/Bitmap;
    .end local v23    # "scaleX":F
    .end local v24    # "scaleY":F
    :cond_3
    sparse-switch v21, :sswitch_data_0

    .line 350
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;->addFrame(Landroid/graphics/Bitmap;)Z

    .line 351
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    const v5, 0x317e17

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "start":I
    .restart local v25    # "start":I
    mul-int/lit8 v6, v26, 0x64

    :try_start_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mImageCount:I
    invoke-static {v8}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$500(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)I

    move-result v8

    div-int/2addr v6, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 355
    if-eqz v2, :cond_4

    .line 356
    :try_start_7
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    :cond_4
    if-eqz v19, :cond_5

    .line 359
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_5
    move/from16 v26, v25

    .end local v25    # "start":I
    .restart local v26    # "start":I
    move-object/from16 v20, v19

    .end local v19    # "input":Ljava/io/FileInputStream;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 339
    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "input":Ljava/io/FileInputStream;
    :sswitch_0
    move/from16 v0, v21

    int-to-float v3, v0

    :try_start_8
    invoke-virtual {v13, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 340
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x0

    move-object v8, v2

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 343
    .local v27, "temp":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 344
    move-object/from16 v2, v27

    .line 345
    goto :goto_3

    .line 355
    .end local v19    # "input":Ljava/io/FileInputStream;
    .end local v27    # "temp":Landroid/graphics/Bitmap;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    move/from16 v25, v26

    .end local v26    # "start":I
    .restart local v25    # "start":I
    move-object/from16 v19, v20

    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "input":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v2, :cond_6

    .line 356
    :try_start_9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    :cond_6
    if-eqz v19, :cond_7

    .line 359
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V

    :cond_7
    throw v3
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 371
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    :catch_0
    move-exception v16

    .line 372
    .local v16, "e":Ljava/io/IOException;
    :goto_5
    const-string v3, "photoeditor"

    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 368
    .end local v16    # "e":Ljava/io/IOException;
    .end local v19    # "input":Ljava/io/FileInputStream;
    .end local v25    # "start":I
    .restart local v13    # "matrix":Landroid/graphics/Matrix;
    .restart local v20    # "input":Ljava/io/FileInputStream;
    .restart local v26    # "start":I
    :cond_8
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0x317e18

    move-object/from16 v0, v22

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 371
    :catch_1
    move-exception v16

    move/from16 v25, v26

    .end local v26    # "start":I
    .restart local v25    # "start":I
    move-object/from16 v19, v20

    .end local v20    # "input":Ljava/io/FileInputStream;
    .restart local v19    # "input":Ljava/io/FileInputStream;
    goto :goto_5

    .line 376
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "matrix":Landroid/graphics/Matrix;
    .end local v17    # "encoder":Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;
    .end local v19    # "input":Ljava/io/FileInputStream;
    .end local v21    # "orientation":I
    .end local v22    # "outPath":Ljava/lang/String;
    .end local v25    # "start":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$400(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0x317e1a

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 355
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "matrix":Landroid/graphics/Matrix;
    .restart local v17    # "encoder":Lcom/sonymobile/china/photoeditor/gifmaker/engine/AnimatedGifEncoder;
    .restart local v19    # "input":Ljava/io/FileInputStream;
    .restart local v21    # "orientation":I
    .restart local v22    # "outPath":Ljava/lang/String;
    .restart local v26    # "start":I
    :catchall_1
    move-exception v3

    move/from16 v25, v26

    .end local v26    # "start":I
    .restart local v25    # "start":I
    goto :goto_4

    :catchall_2
    move-exception v3

    goto :goto_4

    .line 335
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
