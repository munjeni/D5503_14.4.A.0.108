.class Lcom/sonyericsson/conversations/ui/MessageItemView$1;
.super Ljava/lang/Object;
.source "MessageItemView.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/MessageContentClickable$OnShortClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageItemView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageItemView;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortClick(Landroid/view/View;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "objectUri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 286
    if-nez p2, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    iget-wide v2, v2, Lcom/sonyericsson/conversations/ui/MessageItemView;->mThreadId:J

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageItemView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageItemView;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    const/4 v6, 0x0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;Landroid/net/Uri;ILjava/lang/String;)V

    .line 293
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->viewObject()V

    goto :goto_0
.end method
