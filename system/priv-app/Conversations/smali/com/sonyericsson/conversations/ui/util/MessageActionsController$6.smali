.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;
.super Ljava/lang/Thread;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1144
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$800(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mMimeType:Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$800(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/x-vCard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveVCardContact()V

    .line 1151
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$6;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->saveObject()V

    goto :goto_0
.end method
