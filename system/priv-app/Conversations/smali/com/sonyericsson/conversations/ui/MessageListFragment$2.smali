.class Lcom/sonyericsson/conversations/ui/MessageListFragment$2;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 223
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    const v3, 0x7f07009e

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sonyericsson/conversations/ui/MessageListFragment;->showProgressDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$400(Lcom/sonyericsson/conversations/ui/MessageListFragment;ILjava/lang/String;)V

    .line 227
    return-void
.end method
