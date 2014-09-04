.class Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;
.super Landroid/os/AsyncTask;
.source "CollageLaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddBgPictureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<[",
        "Landroid/graphics/Bitmap;",
        "Landroid/net/Uri;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;


# direct methods
.method private constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p2, "x1"    # Lcom/sonymobile/china/collage/CollageLaunchActivity$1;

    .prologue
    .line 1488
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/util/Pair;
    .locals 5
    .param p1, "params"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair",
            "<[",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1502
    array-length v3, p1

    if-gez v3, :cond_1

    .line 1510
    :cond_0
    :goto_0
    return-object v2

    .line 1505
    :cond_1
    aget-object v1, p1, v4

    .line 1506
    .local v1, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-static {v3, v1}, Lcom/sonymobile/china/collage/utils/ImageUtils;->getBackgroundPics(Landroid/content/Context;Landroid/net/Uri;)[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1507
    .local v0, "bgs":[Landroid/graphics/Bitmap;
    aget-object v3, v0, v4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    .line 1508
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1488
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->doInBackground([Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<[",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<[Landroid/graphics/Bitmap;Landroid/net/Uri;>;"
    const/4 v5, 0x1

    .line 1516
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->cancelProgressDialog()V
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2500(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    .line 1521
    if-nez p1, :cond_2

    .line 1522
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v2, 0x7f070075

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1526
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;
    invoke-static {v1, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1202(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/util/Pair;)Landroid/util/Pair;

    .line 1527
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z
    invoke-static {v1, v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1302(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)Z

    .line 1528
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const-string v2, ""

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$702(Lcom/sonymobile/china/collage/CollageLaunchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1529
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateBackgroundList()V
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$2600(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    .line 1530
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    const v2, 0x7f0c0011

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->getFragmentById(I)Landroid/app/Fragment;
    invoke-static {v1, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1400(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)Landroid/app/Fragment;

    move-result-object v0

    .line 1531
    .local v0, "frag":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 1532
    instance-of v1, v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    if-eqz v1, :cond_3

    .line 1533
    check-cast v0, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->updateBackground(Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    .restart local v0    # "frag":Landroid/app/Fragment;
    :cond_3
    instance-of v1, v0, Lcom/sonymobile/china/collage/GridCollageFragment;

    if-eqz v1, :cond_0

    .line 1535
    check-cast v0, Lcom/sonymobile/china/collage/GridCollageFragment;

    .end local v0    # "frag":Landroid/app/Fragment;
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/GridCollageFragment;->updateBackground(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1488
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # getter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    :goto_0
    return-void

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->this$0:Lcom/sonymobile/china/collage/CollageLaunchActivity;

    # invokes: Lcom/sonymobile/china/collage/CollageLaunchActivity;->showProgressBar()Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1800(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    # setter for: Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->access$1702(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto :goto_0
.end method
