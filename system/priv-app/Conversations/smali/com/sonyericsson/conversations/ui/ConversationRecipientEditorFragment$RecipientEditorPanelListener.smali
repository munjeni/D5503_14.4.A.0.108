.class public interface abstract Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;
.super Ljava/lang/Object;
.source "ConversationRecipientEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecipientEditorPanelListener"
.end annotation


# virtual methods
.method public abstract onParticipantsChanged(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract onRecipientsEditorFocusChange(Z)V
.end method
