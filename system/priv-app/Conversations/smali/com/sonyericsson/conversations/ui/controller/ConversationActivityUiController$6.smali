.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onActionBarHomePressed()V
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
    .line 1344
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToMainActivity()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$800(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 1347
    return-void
.end method
