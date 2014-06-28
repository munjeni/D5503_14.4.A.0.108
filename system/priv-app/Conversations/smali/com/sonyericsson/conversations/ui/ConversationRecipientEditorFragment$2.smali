.class Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;
.super Ljava/lang/Thread;
.source "ConversationRecipientEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

.field final synthetic val$addresses:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;->val$addresses:Ljava/util/List;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$2;->val$addresses:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->addParticipiantToEditorAsync(Ljava/util/List;)V

    .line 208
    :cond_0
    return-void
.end method
