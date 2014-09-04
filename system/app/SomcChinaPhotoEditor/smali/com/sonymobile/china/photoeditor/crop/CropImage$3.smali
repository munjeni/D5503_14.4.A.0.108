.class Lcom/sonymobile/china/photoeditor/crop/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonymobile/china/photoeditor/crop/util/FutureListener",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sonymobile/china/photoeditor/crop/util/Future;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "future":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Landroid/content/Intent;>;"
    const/4 v5, 0x4

    .line 605
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    const/4 v4, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSaveTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    invoke-static {v3, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$902(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 606
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 611
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    const/4 v4, 0x1

    # setter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mState:I
    invoke-static {v3, v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1002(Lcom/sonymobile/china/photoeditor/crop/CropImage;I)I

    .line 639
    :goto_0
    return-void

    .line 614
    :cond_0
    if-eqz v0, :cond_3

    .line 615
    const-string v3, "saved-to-media-provider"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 617
    .local v1, "savedToMediaProvider":Z
    if-eqz v1, :cond_2

    .line 618
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 619
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 621
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 625
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 630
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 637
    .end local v1    # "savedToMediaProvider":Z
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$3;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
