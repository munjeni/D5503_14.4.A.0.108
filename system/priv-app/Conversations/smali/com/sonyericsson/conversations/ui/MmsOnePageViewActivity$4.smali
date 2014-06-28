.class Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;
.super Ljava/lang/Object;
.source "MmsOnePageViewActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

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

    .line 411
    const v2, 0x7f0a007f

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 412
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, "mimeType":Ljava/lang/String;
    :goto_0
    const v2, 0x7f0a007e

    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    .line 414
    instance-of v2, v8, Landroid/net/Uri;

    if-eqz v2, :cond_1

    check-cast v8, Landroid/net/Uri;

    .end local v8    # "tag":Ljava/lang/Object;
    move-object v5, v8

    .line 415
    .local v5, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mThreadId:J
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$200(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$300(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 417
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->createObjectContextMenu(Landroid/view/ContextMenu;)V

    .line 418
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$4;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # setter for: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$502(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    .line 419
    return-void

    .end local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v7    # "mimeType":Ljava/lang/String;
    .restart local v8    # "tag":Ljava/lang/Object;
    :cond_0
    move-object v7, v1

    .line 412
    goto :goto_0

    .restart local v7    # "mimeType":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    .line 414
    goto :goto_1
.end method
