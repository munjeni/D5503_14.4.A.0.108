.class Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;
.super Ljava/lang/Object;
.source "TwoPaneUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->onCurrentConversationDeleted(J)V
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
    .line 223
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 227
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setWriteNewHeaderVisibility(Z)V

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->invalidateOptionsMenu()V

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;->removeDimLayer()V

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/TwoPaneUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->asyncDeleteObsoleteThreads()V

    .line 232
    return-void
.end method
