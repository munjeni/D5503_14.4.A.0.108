.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->saveImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0

    .prologue
    .line 1204
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1207
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # invokes: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showSavingProgress()V
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1900(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 1208
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setFilterVisibility(Z)V

    .line 1210
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->endText()V

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$500(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setFilterVisibility(Z)V

    .line 1214
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$2000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 1216
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$700(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1217
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyStamp(Z)V

    .line 1218
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$702(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z

    .line 1219
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$900(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->clearStamp()V

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->saveImage(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V

    .line 1222
    return-void
.end method
