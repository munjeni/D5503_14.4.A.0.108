.class Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "clickedView"    # Landroid/view/View;

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$800(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    .end local p1    # "clickedView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 804
    .restart local p1    # "clickedView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$900(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->access$900(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    move-result-object v0

    check-cast p1, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    .end local p1    # "clickedView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;->onBubbleClicked(I)V

    goto :goto_0
.end method
