.class public interface abstract Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageListFragmentCallback"
.end annotation


# virtual methods
.method public abstract onAllMessagesDeleted()V
.end method

.method public abstract onCloseSearchModeInMessageList()V
.end method

.method public abstract onCurrentConversationDeleted(J)V
.end method

.method public abstract onFinishDeleteMessagesActionMode()V
.end method

.method public abstract onMsgListLoadFinished()V
.end method

.method public abstract onStartDeleteConversation()V
.end method

.method public abstract onStartDeleteSeveralMessages()V
.end method
