.class Lcom/sonyericsson/conversations/ui/EditorFragment$27;
.super Ljava/lang/Thread;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByText([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$contactIds:[J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;[J)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 3093
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->val$contactIds:[J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3095
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->postShowProgressRunnable()Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Ljava/lang/Runnable;

    move-result-object v1

    .line 3096
    .local v1, "sendTextProgress":Ljava/lang/Runnable;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3097
    .local v0, "contactsInfo":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->val$contactIds:[J

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getContactsInfo(Landroid/content/Context;[JLjava/lang/StringBuilder;)V

    .line 3101
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3102
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$27$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$27;Ljava/lang/Runnable;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3111
    :cond_0
    return-void
.end method
