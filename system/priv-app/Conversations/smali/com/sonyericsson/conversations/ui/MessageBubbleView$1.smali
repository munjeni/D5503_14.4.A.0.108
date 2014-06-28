.class Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;
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
    .line 64
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v1, 0x0

    .line 67
    const v2, 0x7f0a007f

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 68
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "mimeType":Ljava/lang/String;
    :goto_0
    const v2, 0x7f0a007e

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 70
    instance-of v2, v8, Landroid/net/Uri;

    if-eqz v2, :cond_1

    check-cast v8, Landroid/net/Uri;

    .end local v8    # "tag":Ljava/lang/Object;
    move-object v5, v8

    .line 71
    .local v5, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mThreadId:J
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$000(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mMessage:Lcom/sonyericsson/conversations/model/Message;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$100(Lcom/sonyericsson/conversations/ui/MessageBubbleView;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 73
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->createObjectContextMenu(Landroid/view/ContextMenu;)V

    .line 74
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageBubbleView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    # setter for: Lcom/sonyericsson/conversations/ui/MessageBubbleView;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->access$202(Lcom/sonyericsson/conversations/ui/MessageBubbleView;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    .line 75
    return-void

    .end local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/Object;
    :cond_0
    move-object v7, v1

    .line 68
    goto :goto_0

    .restart local v7    # "mimeType":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    .line 70
    goto :goto_1
.end method
