.class Lcom/sonyericsson/conversations/ui/EditorFragment$20;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initMasterPile()V
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
    .line 2096
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDeleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2099
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 2101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1902(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2106
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z
    invoke-static {v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2002(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2110
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$20;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onPileViewContentDeleted()V

    .line 2111
    return-void
.end method
