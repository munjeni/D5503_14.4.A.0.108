.class Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment$21;)V
    .locals 0

    .prologue
    .line 2195
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/conversations/ui/ExpandedPileViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2199
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "message_content_adapter"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2400(Lcom/sonyericsson/conversations/ui/EditorFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2202
    const-string v1, "master_pile_view"

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2500(Lcom/sonyericsson/conversations/ui/EditorFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2204
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$4;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 2206
    return-void
.end method
