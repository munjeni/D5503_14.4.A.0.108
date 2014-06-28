.class Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;
.super Ljava/lang/Object;
.source "ConversationRecipientEditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 101
    .local v1, "start":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v0

    .line 103
    .local v0, "count":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEditorEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->mRecipientsEditor:Lcom/sonyericsson/conversations/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)Lcom/sonyericsson/conversations/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/RecipientsEditor;->isEndWithTerminator()Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_1

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->showRecentContactList()V
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->access$100(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;)V

    .line 107
    :cond_1
    return-void
.end method
