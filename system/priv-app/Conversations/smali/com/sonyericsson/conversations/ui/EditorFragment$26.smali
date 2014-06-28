.class Lcom/sonyericsson/conversations/ui/EditorFragment$26;
.super Ljava/lang/Thread;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByVcard([J)V
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
    .line 3067
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$contactIds:[J

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3069
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->postShowProgressRunnable()Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Ljava/lang/Runnable;

    move-result-object v2

    .line 3070
    .local v2, "sendVCardProgress":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3300(Lcom/sonyericsson/conversations/ui/EditorFragment;)I

    move-result v1

    .line 3071
    .local v1, "curMmsSize":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->val$contactIds:[J

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/conversations/ui/SendContactHelper;->getVcardUri(Landroid/content/Context;[JI)Landroid/os/Bundle;

    move-result-object v0

    .line 3075
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3076
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$26$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment$26;Ljava/lang/Runnable;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3084
    :cond_0
    return-void
.end method
