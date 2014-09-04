.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;
.super Landroid/os/AsyncTask;
.source "FilterShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/sonymobile/china/photoeditor/filtershow/Result;",
        ">;"
    }
.end annotation


# instance fields
.field mBitmapSize:I

.field mTinyPlanetButton:Landroid/view/View;

.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;


# direct methods
.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Landroid/view/View;)V
    .locals 1
    .param p2, "button"    # Landroid/view/View;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 605
    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->mTinyPlanetButton:Landroid/view/View;

    .line 606
    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getScreenImageSize()I
    invoke-static {p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1400(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    .line 607
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/filtershow/Result;
    .locals 5
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 611
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1500(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-result-object v1

    aget-object v2, p1, v4

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->mBitmapSize:I

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->loadBitmap(Landroid/net/Uri;I)Lcom/sonymobile/china/photoeditor/filtershow/Result;

    move-result-object v0

    .line 612
    .local v0, "loadResult":Lcom/sonymobile/china/photoeditor/filtershow/Result;
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    if-ne v0, v1, :cond_0

    .line 613
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->publishProgress([Ljava/lang/Object;)V

    .line 614
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1500(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->queryLightCycle360()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 615
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/Result;->OK_AND_SUPPORTS_LIGHT_CYCLE_360:Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .line 618
    .end local v0    # "loadResult":Lcom/sonymobile/china/photoeditor/filtershow/Result;
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 599
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->doInBackground([Landroid/net/Uri;)Lcom/sonymobile/china/photoeditor/filtershow/Result;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonymobile/china/photoeditor/filtershow/Result;)V
    .locals 2
    .param p1, "result"    # Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    :goto_0
    return-void

    .line 638
    :cond_0
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$9;->$SwitchMap$com$sonymobile$china$photoeditor$filtershow$Result:[I

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/Result;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 652
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1700(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1702(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 655
    :cond_1
    invoke-static {}, Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;->onLoadFinished()V

    .line 656
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->onLoadImageComplete()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    goto :goto_0

    .line 640
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const v1, 0x7f07000f

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showToastAndFinish(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;I)V

    goto :goto_1

    .line 643
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const v1, 0x7f070091

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showToastAndFinish(I)V
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;I)V

    goto :goto_1

    .line 646
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->mTinyPlanetButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 638
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 599
    check-cast p1, Lcom/sonymobile/china/photoeditor/filtershow/Result;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->onPostExecute(Lcom/sonymobile/china/photoeditor/filtershow/Result;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 599
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 624
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 628
    .local v0, "filters":Landroid/view/View;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const v3, 0x7f0c002f

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 629
    .local v1, "loading":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 630
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
