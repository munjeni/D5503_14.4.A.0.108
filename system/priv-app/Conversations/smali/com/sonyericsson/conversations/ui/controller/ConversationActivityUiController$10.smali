.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;
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


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    .prologue
    .line 2223
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$002(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 2227
    return-void
.end method
