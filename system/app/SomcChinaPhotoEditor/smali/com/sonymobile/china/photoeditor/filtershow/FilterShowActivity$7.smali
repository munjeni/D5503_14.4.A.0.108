.class Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;
.super Ljava/lang/Object;
.source "FilterShowActivity.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->beginText()V
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
    .line 1280
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayBoundsChanged()V
    .locals 0

    .prologue
    .line 1292
    return-void
.end method

.method public onTextInPhotoBounds(Z)V
    .locals 2
    .param p1, "exist"    # Z

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$2100(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 1286
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    # setter for: Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z
    invoke-static {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->access$202(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z

    .line 1288
    :cond_0
    return-void
.end method
