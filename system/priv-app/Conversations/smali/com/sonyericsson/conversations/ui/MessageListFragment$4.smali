.class Lcom/sonyericsson/conversations/ui/MessageListFragment$4;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 403
    if-nez p6, :cond_1

    if-nez p8, :cond_1

    if-nez p9, :cond_1

    if-nez p7, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    if-ne p2, p6, :cond_2

    if-ne p4, p8, :cond_2

    if-ne p5, p9, :cond_2

    if-eq p3, p7, :cond_0

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(J)V

    goto :goto_0
.end method
