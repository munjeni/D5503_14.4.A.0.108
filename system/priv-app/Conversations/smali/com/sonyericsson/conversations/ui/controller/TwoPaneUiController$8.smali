.class Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$8;
.super Ljava/lang/Object;
.source "TwoPaneUiController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->showSaveDraftDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$8;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$8;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->discardDraftMessages()V

    .line 484
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$8;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 485
    return-void
.end method
