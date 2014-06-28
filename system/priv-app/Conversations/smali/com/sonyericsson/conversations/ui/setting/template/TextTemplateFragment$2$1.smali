.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->onDeleteMarkedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

.field final synthetic val$markedTextTemplateIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->val$markedTextTemplateIds:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 400
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$400(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->val$markedTextTemplateIds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->removeTextTemplates(Ljava/util/ArrayList;)V

    .line 402
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v1, v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v0

    .line 407
    .local v0, "templateHelper":Lcom/sonymobile/template/sms/TextTemplateManager;
    new-instance v1, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;

    const-string v2, "TextTemplateRemoved"

    invoke-direct {v1, p0, v2, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;Ljava/lang/String;Lcom/sonymobile/template/sms/TextTemplateManager;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 426
    return-void
.end method
