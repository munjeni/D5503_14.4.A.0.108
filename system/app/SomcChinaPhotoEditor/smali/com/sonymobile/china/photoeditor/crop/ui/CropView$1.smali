.class Lcom/sonymobile/china/photoeditor/crop/ui/CropView$1;
.super Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/ui/CropView;-><init>(Lcom/sonymobile/china/photoeditor/crop/GalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/ui/CropView;Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/ui/CropView;

    invoke-direct {p0, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->assertTrue(Z)V

    .line 144
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$DetectFaceTask;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/ui/CropView$DetectFaceTask;->updateFaces()V

    .line 145
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
