.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;
.super Ljava/lang/Object;
.source "LocationEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 418
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsServiceAvailable:Z
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)I

    move-result v12

    const/4 v13, 0x3

    if-eq v12, v13, :cond_2

    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mIsLocationSelected:Z
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1000(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 422
    :cond_2
    const/4 v4, 0x0

    .line 423
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 425
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapController:Lcom/google/android/maps/MapController;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1100(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/google/android/maps/MapController;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 426
    :try_start_1
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1200(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 427
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mItemizedOverlay:Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1200(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/location/ui/AddressMarkOverlay;->removeAllUnSelectedOverlayItem()V

    .line 429
    :cond_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :try_start_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 432
    .local v7, "intent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->isDrawingCacheEnabled()Z

    move-result v12

    if-nez v12, :cond_4

    .line 433
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->setDrawingCacheEnabled(Z)V

    .line 435
    :cond_4
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 436
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->generateLocationPicFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 440
    .local v3, "fileName":Ljava/lang/String;
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    .line 441
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 442
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5f

    invoke-virtual {v0, v12, v13, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 443
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 444
    .local v11, "uri":Landroid/net/Uri;
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, v5

    .line 450
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v11    # "uri":Landroid/net/Uri;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    .local v8, "locationDetails":Ljava/lang/StringBuilder;
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditLocationAddress:Landroid/widget/EditText;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/EditText;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 459
    .local v2, "editable":Landroid/text/Editable;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 460
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\r\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_5
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 464
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    iget-object v13, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLink:Ljava/lang/String;
    invoke-static {v13}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mMapView:Lcom/sonyericsson/conversations/location/ui/DrawableMapView;
    invoke-static {v14}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1300(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Lcom/sonyericsson/conversations/location/ui/DrawableMapView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sonyericsson/conversations/location/ui/DrawableMapView;->getZoomLevel()I

    move-result v14

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getUrl(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v12, v13, v14}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "fullLinkString":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 466
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .end local v6    # "fullLinkString":Ljava/lang/String;
    :cond_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mStartType:I
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$900(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)I

    move-result v12

    if-nez v12, :cond_7

    .line 473
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v13}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07011d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 475
    .local v10, "prefix":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_7
    const-string v12, "location"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const/4 v13, -0x1

    invoke-virtual {v12, v13, v7}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 481
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->finish()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 486
    if-eqz v4, :cond_0

    .line 488
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 489
    :catch_0
    move-exception v1

    .line 490
    .end local v2    # "editable":Landroid/text/Editable;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "locationDetails":Ljava/lang/StringBuilder;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 429
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v12
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 483
    :catch_1
    move-exception v1

    .line 484
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_8
    const-string v12, "LocationSharing"

    const-string v13, "file not found!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 486
    if-eqz v4, :cond_0

    .line 488
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 489
    :catch_2
    move-exception v1

    goto :goto_2

    .line 446
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_8
    const/4 v12, 0x0

    :try_start_a
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 486
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    :catchall_1
    move-exception v12

    :goto_4
    if-eqz v4, :cond_9

    .line 488
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 486
    :cond_9
    :goto_5
    throw v12

    .line 495
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_a
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v9

    .line 497
    .local v9, "msg":Landroid/os/Message;
    const v12, 0x7f070115

    iput v12, v9, Landroid/os/Message;->arg1:I

    .line 498
    iget-object v12, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$3;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$1600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 489
    .end local v9    # "msg":Landroid/os/Message;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 490
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 486
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "intent":Landroid/content/Intent;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 483
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method
