.class Lcom/sonyericsson/conversations/ui/EditorFragment$5;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->onSetPriority()V
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
    .line 1524
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$700(Lcom/sonyericsson/conversations/ui/EditorFragment;)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I
    invoke-static {v0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$702(Lcom/sonyericsson/conversations/ui/EditorFragment;I)I

    .line 1528
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$700(Lcom/sonyericsson/conversations/ui/EditorFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->updatePriorityIcon()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$800(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1531
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1532
    return-void
.end method
