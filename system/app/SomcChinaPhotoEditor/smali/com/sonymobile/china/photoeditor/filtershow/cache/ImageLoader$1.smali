.class Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$1;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->mListeners:Ljava/util/Vector;
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->access$000(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 461
    .local v1, "imageShow":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->imageLoaded()V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "imageShow":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method
