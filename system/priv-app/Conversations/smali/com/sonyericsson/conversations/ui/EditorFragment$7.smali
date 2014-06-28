.class Lcom/sonyericsson/conversations/ui/EditorFragment$7;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initTextInput()V
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
    .line 1765
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1767
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshIMEAction()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$900(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1770
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->checkAndUpdateEditorState()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1000(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1771
    return-void
.end method
