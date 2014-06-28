.class Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$7;
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
    .line 472
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$7;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$7;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 476
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$7;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 477
    return-void
.end method
