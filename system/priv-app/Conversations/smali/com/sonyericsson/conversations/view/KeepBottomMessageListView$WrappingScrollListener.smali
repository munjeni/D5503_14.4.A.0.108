.class Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;
.super Ljava/lang/Object;
.source "KeepBottomMessageListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappingScrollListener"
.end annotation


# instance fields
.field private mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

.field final synthetic this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$1;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;-><init>(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 126
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 106
    if-nez p2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    # invokes: Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->isLastChildAtBottom()Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->access$100(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->this$0:Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->mKeepLastItemAtBottom:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;->access$202(Lcom/sonyericsson/conversations/view/KeepBottomMessageListView;Z)Z

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 117
    :cond_1
    return-void
.end method

.method public setWrappedListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "listenerToWrap"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/KeepBottomMessageListView$WrappingScrollListener;->mWrappedListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 102
    return-void
.end method
