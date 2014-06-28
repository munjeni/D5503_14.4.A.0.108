.class Lcom/sonyericsson/conversations/ui/EditorFragment$8;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 1775
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1777
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1782
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$8;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onClickSendMessage()V

    .line 1786
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
