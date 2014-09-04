.class Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;
.super Landroid/os/AsyncTask;
.source "CollageLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddPictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;[",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mPicAddCallback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V
    .locals 0
    .param p2, "pac"    # Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1401
    iput-object p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->mPicAddCallback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    .line 1402
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([[Landroid/net/Uri;)Landroid/util/Pair;
    .locals 12
    .param p1, "params"    # [[Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1416
    array-length v8, p1

    if-gez v8, :cond_0

    .line 1417
    const/4 v8, 0x0

    .line 1435
    :goto_0
    return-object v8

    .line 1419
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I

    move-result-object v8

    aget v8, v8, v10

    iget-object v9, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I
    invoke-static {v9}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I

    move-result-object v9

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1420
    .local v5, "shortSide":I
    if-nez v5, :cond_1

    .line 1421
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->getCollageSize()[I
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2000(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I

    move-result-object v6

    .line 1422
    .local v6, "size":[I
    aget v8, v6, v10

    aget v9, v6, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1423
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I

    move-result-object v8

    aget v9, v6, v10

    aput v9, v8, v10

    .line 1424
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I
    invoke-static {v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I

    move-result-object v8

    aget v9, v6, v11

    aput v9, v8, v11

    .line 1429
    .end local v6    # "size":[I
    :cond_1
    int-to-float v8, v5

    const v9, 0x3f666666

    mul-float/2addr v8, v9

    float-to-int v3, v8

    .line 1430
    .local v3, "requestLength":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1431
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    aget-object v0, p1, v10

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v7, v0, v1

    .line 1432
    .local v7, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    sget-object v9, Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;->FIT:Lcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;

    invoke-static {v8, v7, v3, v3, v9}, Lcom/sonymobile/china/collage/utils/ImageUtils;->convertBitmap(Landroid/content/Context;Landroid/net/Uri;IILcom/sonymobile/china/collage/utils/ImageUtils$ScaleMode;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1435
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v8, Landroid/util/Pair;

    aget-object v9, p1, v10

    invoke-direct {v8, v4, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1393
    check-cast p1, [[Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->doInBackground([[Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Landroid/graphics/Bitmap;>;[Landroid/net/Uri;>;"
    const/4 v7, 0x1

    .line 1440
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->isDestroyed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1444
    :cond_1
    const/4 v3, 0x0

    .line 1445
    .local v3, "validCnt":I
    const/4 v2, 0x0

    .line 1446
    .local v2, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v4, "valids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    if-eqz p1, :cond_3

    .line 1448
    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 1449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 1450
    iget-object v5, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1451
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    const/4 v5, 0x6

    if-ge v3, v5, :cond_2

    .line 1452
    add-int/lit8 v3, v3, 0x1

    .line 1453
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2100(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2200(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v5, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Landroid/net/Uri;

    aget-object v5, v5, v1

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1459
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "i":I
    :cond_3
    if-ne v3, v2, :cond_4

    if-nez v3, :cond_5

    .line 1460
    :cond_4
    const/4 v5, 0x2

    if-ge v2, v5, :cond_9

    .line 1461
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v6, 0x7f070075

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1469
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->mPicAddCallback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    if-eqz v5, :cond_6

    .line 1470
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->mPicAddCallback:Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    invoke-interface {v5, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;->onPictureAdded(Ljava/util/List;)V

    .line 1474
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;
    invoke-static {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2300(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1475
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v6, 0x0

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;
    invoke-static {v5, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2302(Lcom/sonymobile/china/collage/CollageLaunchActivity;[Landroid/net/Uri;)[Landroid/net/Uri;

    .line 1477
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z
    invoke-static {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2400(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1478
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const/4 v6, 0x0

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z
    invoke-static {v5, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2402(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)Z

    .line 1480
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->cancelProgressDialog()V
    invoke-static {v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2500(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    goto/16 :goto_0

    .line 1464
    :cond_9
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v6, 0x7f070076

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1393
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1412
    :goto_0
    return-void

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->showProgressBar()Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1800(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1702(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
