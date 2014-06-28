.class Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment$26;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$26;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$sendVCardProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment$26;Ljava/lang/Runnable;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 3076
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$26;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->val$sendVCardProgress:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$26;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2600(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->val$sendVCardProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3079
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$26;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$200(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 3080
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$26;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;->val$bundle:Landroid/os/Bundle;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->addVcard(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3400(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/os/Bundle;)V

    .line 3081
    return-void
.end method
