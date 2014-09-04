.class Lcom/sonymobile/china/photoeditor/crop/CropImage$5;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/CropImage;->initializeData()V
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$5;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sonymobile/china/photoeditor/crop/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/china/photoeditor/crop/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 963
    .local p1, "future":Lcom/sonymobile/china/photoeditor/crop/util/Future;, "Lcom/sonymobile/china/photoeditor/crop/util/Future<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$5;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    const/4 v2, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/crop/util/Future;
    invoke-static {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1302(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/Future;)Lcom/sonymobile/china/photoeditor/crop/util/Future;

    .line 964
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 965
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-interface {p1}, Lcom/sonymobile/china/photoeditor/crop/util/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 966
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 970
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$5;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$5;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$1100(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
