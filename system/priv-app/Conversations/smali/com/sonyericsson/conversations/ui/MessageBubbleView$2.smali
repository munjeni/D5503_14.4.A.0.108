.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;
.super Ljava/lang/Object;
.source "MessageBubbleView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageBubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v6, 0x0

    .line 83
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v10, p2

    .line 84
    check-cast v10, Landroid/widget/TextView;

    .line 87
    .local v10, "textView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    .line 89
    .local v9, "text":Landroid/text/Spannable;
    if-nez v9, :cond_1

    .line 105
    .end local v9    # "text":Landroid/text/Spannable;
    .end local v10    # "textView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 92
    .restart local v9    # "text":Landroid/text/Spannable;
    .restart local v10    # "textView":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v10}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {v9, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ClickableSpan;

    .line 94
    .local v8, "spans":[Landroid/text/style/ClickableSpan;
    array-length v1, v8

    if-lez v1, :cond_2

    .line 95
    aget-object v1, v8, v6

    check-cast v1, Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 97
    .local v5, "uri":Landroid/net/Uri;
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mThreadId:J
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$000(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$100(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 99
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->createLinkContextMenu(Landroid/view/ContextMenu;)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # setter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$202(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    .line 102
    .end local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-static {v9}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0
.end method
