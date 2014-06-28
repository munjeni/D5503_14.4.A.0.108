.class Lcom/sonyericsson/conversations/ui/MessageListFragment$7;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;->initMessageList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 695
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
