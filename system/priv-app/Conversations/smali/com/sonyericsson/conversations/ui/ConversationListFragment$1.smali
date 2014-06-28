.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;
.super Landroid/os/Handler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->handleMessage(Landroid/os/Message;)V

    .line 256
    :cond_0
    return-void
.end method
