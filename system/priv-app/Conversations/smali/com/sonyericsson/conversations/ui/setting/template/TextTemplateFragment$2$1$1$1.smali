.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;->this$3:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;->this$3:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070148

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;->this$3:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1$1;->this$3:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1$1;->this$2:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2$1;->this$1:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 422
    :cond_0
    return-void
.end method
