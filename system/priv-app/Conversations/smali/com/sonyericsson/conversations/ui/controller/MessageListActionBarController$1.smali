.class Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;
.super Ljava/lang/Object;
.source "MessageListActionBarController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactLookupChanged()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->access$000(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->mRecipientActionBarView:Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;->access$000(Lcom/sonyericsson/conversations/ui/controller/MessageListActionBarController;)Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientActionView;->refresh(Z)V

    .line 29
    :cond_0
    return-void
.end method
