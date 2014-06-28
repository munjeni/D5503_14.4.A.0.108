.class Lcom/sonyericsson/conversations/ui/SimMessageListFragment$3;
.super Ljava/lang/Object;
.source "SimMessageListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$800(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageListFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/SimMessageListFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SimMessageListFragment;->access$800(Lcom/sonyericsson/conversations/ui/SimMessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 328
    :cond_0
    return-void
.end method
