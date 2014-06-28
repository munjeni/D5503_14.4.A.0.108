.class Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageListScrollListener"
.end annotation


# instance fields
.field private final mLayout:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

.field private mScrollStarted:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 2

    .prologue
    .line 708
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    .line 710
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mLayout:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Lcom/sonyericsson/conversations/ui/MessageListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$1;

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 714
    add-int v1, p2, p3

    add-int/lit8 v0, v1, -0x1

    .line 720
    .local v0, "lastVisibleItem":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->markMessagesAsRead(II)V

    .line 721
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFooterView:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    .line 729
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mLayout:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFooterView:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    if-nez p2, :cond_0

    .line 733
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;->mScrollStarted:Z

    goto :goto_0
.end method
