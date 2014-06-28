.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextTemplateOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mMultiSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$200(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # setter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mClickedPosition:I
    invoke-static {v1, p3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$302(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;I)I

    .line 305
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$400(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/template/sms/TextTemplate;

    .line 306
    .local v0, "originalTemplate":Lcom/sonymobile/template/sms/TextTemplate;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$TextTemplateOnClickListener;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    const/4 v2, 0x2

    # invokes: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->showTemplateDialog(ILcom/sonymobile/template/sms/TextTemplate;)V
    invoke-static {v1, v2, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$500(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;ILcom/sonymobile/template/sms/TextTemplate;)V

    goto :goto_0
.end method
