.class Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "FreeCollageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/free/FreeCollageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 126
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mActionRecevierState:Z
    invoke-static {v3}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->access$000(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.sonymobile.photoeditor.collage.free.replaceWithNew"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/sonymobile/china/collage/utils/ImageUtils;->pickImage(Ljava/lang/Object;I)V

    goto :goto_0

    .line 133
    :cond_2
    const-string v3, "com.sonymobile.photoeditor.collage.free.deleteLayer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const-string v3, "id"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 135
    .local v2, "layerId":I
    if-eq v2, v4, :cond_0

    .line 137
    # getter for: Lcom/sonymobile/china/collage/free/FreeCollageFragment;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive removeLayer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;
    invoke-static {v3}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->access$200(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->getTopLayer()Lcom/sonymobile/china/collage/free/model/Layer;

    move-result-object v1

    .line 140
    .local v1, "layer":Lcom/sonymobile/china/collage/free/model/Layer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->getForNew()Z

    move-result v3

    if-nez v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/BaseCollageFragment;->mInfoInterface:Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;
    invoke-static {v3}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->access$300(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/china/collage/free/model/Layer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;->removePicture(Landroid/graphics/Bitmap;)Z

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollage:Lcom/sonymobile/china/collage/free/model/FreeCollage;
    invoke-static {v3}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->access$200(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/free/model/FreeCollage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/model/FreeCollage;->removeTopLayer()V

    .line 144
    iget-object v3, p0, Lcom/sonymobile/china/collage/free/FreeCollageFragment$1;->this$0:Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    # getter for: Lcom/sonymobile/china/collage/free/FreeCollageFragment;->mFreeCollageView:Lcom/sonymobile/china/collage/free/FreeCollageView;
    invoke-static {v3}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->access$400(Lcom/sonymobile/china/collage/free/FreeCollageFragment;)Lcom/sonymobile/china/collage/free/FreeCollageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/free/FreeCollageView;->exitSelectModeWithoutRefresh()V

    goto :goto_0
.end method
