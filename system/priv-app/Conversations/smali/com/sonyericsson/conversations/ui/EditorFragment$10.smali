.class Lcom/sonyericsson/conversations/ui/EditorFragment$10;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initPreviewButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1863
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    :goto_0
    return-void

    .line 1867
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1400(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$10;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onClickPreBtn()V

    goto :goto_0
.end method
