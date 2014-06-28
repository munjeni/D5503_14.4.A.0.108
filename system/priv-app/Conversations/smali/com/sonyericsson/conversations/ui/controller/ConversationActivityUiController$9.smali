.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientAndSend()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$recipientStatus:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0

    .prologue
    .line 2217
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->val$recipientStatus:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;->val$recipientStatus:I

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1000(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 2221
    return-void
.end method
