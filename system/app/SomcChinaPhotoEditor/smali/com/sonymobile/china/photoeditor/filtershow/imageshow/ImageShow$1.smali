.class Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$1;
.super Ljava/lang/Object;
.source "ImageShow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowToast:Z
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->access$002(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Z)Z

    .line 443
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$1;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 444
    return-void
.end method
