.class Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment$27;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$27;

.field final synthetic val$contactsInfo:Ljava/lang/StringBuilder;

.field final synthetic val$sendTextProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment$27;Ljava/lang/Runnable;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 3102
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$27;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->val$sendTextProgress:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->val$contactsInfo:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3104
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$27;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2600(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->val$sendTextProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$27;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$200(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 3106
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$27;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;->val$contactsInfo:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->insertContactText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3500(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;)V

    .line 3108
    return-void
.end method
