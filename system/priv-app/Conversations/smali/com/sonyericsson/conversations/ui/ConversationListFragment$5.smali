.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 323
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$5;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/ConversationListFragment;->reload()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->access$600(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V

    .line 326
    return-void
.end method
