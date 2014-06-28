.class Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mListener:Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor$RecipientEditorListener;->onEditorFocusChanged(Z)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1900(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mIsImeActionNext:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$1902(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)Z

    .line 453
    :goto_0
    if-eqz p2, :cond_1

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2200(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # getter for: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->mShowSoftKeyBoardRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2100(Lcom/sonyericsson/conversations/ui/RecipientsEditor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    :cond_1
    return-void

    .line 451
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/RecipientsEditor$4;->this$0:Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    # invokes: Lcom/sonyericsson/conversations/ui/RecipientsEditor;->updateText(Z)V
    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->access$2000(Lcom/sonyericsson/conversations/ui/RecipientsEditor;Z)V

    goto :goto_0
.end method
