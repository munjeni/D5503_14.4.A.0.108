.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->onRecipientsEditorFocusChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_1

    .line 297
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCTFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setRecipientValid(Z)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setFocus(Z)V

    .line 302
    :cond_1
    return-void
.end method
