.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newQueryString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 301
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchMenu:Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$300(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$400(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    :goto_0
    return v0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # setter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mQueryString:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$402(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onOpenSearchMode(Ljava/lang/String;)V

    .line 315
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$500(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mReloadConversations:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$500(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    const/4 v0, 0x1

    goto :goto_0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onCloseSearchModeInConversationList()V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 290
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 295
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$200(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;->onQueryTextSubmit()V

    .line 296
    const/4 v1, 0x1

    return v1
.end method
