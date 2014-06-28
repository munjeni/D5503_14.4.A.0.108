.class Lcom/sonyericsson/conversations/ui/EditorFragment$11;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initSendButton()V
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
    .line 1877
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1881
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onClickSendMessage()V

    .line 1883
    :cond_0
    return-void
.end method
