.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;->updateOptionMenuAndExpandView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->val$searchString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$300(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1365
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$300(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->val$searchString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->val$searchString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$11;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 1372
    :cond_0
    return-void
.end method
