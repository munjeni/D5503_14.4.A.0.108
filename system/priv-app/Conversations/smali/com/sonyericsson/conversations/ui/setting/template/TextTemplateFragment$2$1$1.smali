.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;
.super Ljava/lang/Thread;
.source "TextTemplateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

.field final synthetic val$templateHelper:Lcom/sonymobile/template/sms/TextTemplateManager;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;Ljava/lang/String;Lcom/sonymobile/template/sms/TextTemplateManager;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->val$templateHelper:Lcom/sonymobile/template/sms/TextTemplateManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->val$templateHelper:Lcom/sonymobile/template/sms/TextTemplateManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$400(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManager;->saveAllTextTemplate(Ljava/util/List;)V

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    return-void
.end method
