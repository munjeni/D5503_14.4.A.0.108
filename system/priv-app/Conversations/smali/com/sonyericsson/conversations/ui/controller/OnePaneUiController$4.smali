.class Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;
.super Ljava/lang/Object;
.source "OnePaneUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->showSaveDraftDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 485
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->discardDraftMessages()V

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mIsConvListVisibleInHistory:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$200(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->backToConversationList()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$300(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)V

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
