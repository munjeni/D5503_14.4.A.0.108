.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;
.super Landroid/database/ContentObserver;
.source "SimMessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mIsResumed:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$000(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->refreshMessageList()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$100(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mPendingRefresh:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$202(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;Z)Z

    goto :goto_0
.end method
