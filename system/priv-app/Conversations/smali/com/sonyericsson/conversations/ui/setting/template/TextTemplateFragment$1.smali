.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;
.super Ljava/lang/Object;
.source "TextTemplateFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->switchToMultiSelectMode(I)V
    invoke-static {v0, p3}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$000(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;I)V

    .line 154
    const/4 v0, 0x1

    return v0
.end method
