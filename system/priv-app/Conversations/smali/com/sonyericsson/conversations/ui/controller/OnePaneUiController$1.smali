.class Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;
.super Ljava/lang/Object;
.source "OnePaneUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;
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
    .line 55
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayHeightChange(I)V
    .locals 7
    .param p1, "height"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 58
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 59
    .local v1, "outSize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 60
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 61
    .local v0, "msgListContentAreaLocation":[I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 62
    iget v3, v1, Landroid/graphics/Point;->y:I

    aget v4, v0, v5

    sub-int v2, v3, v4

    .line 63
    .local v2, "visibleScreenHeight":I
    if-ne p1, v2, :cond_2

    .line 65
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$000(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # setter for: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z
    invoke-static {v3, v6}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$002(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;Z)Z

    .line 67
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3, v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onKeyboardStateChanged(Z)V

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isActionbarHideWhenKeypadOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->show()V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    if-ge p1, v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$000(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    # setter for: Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->mVirtualKeyBoardShowing:Z
    invoke-static {v3, v5}, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;->access$002(Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;Z)Z

    .line 80
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isActionbarHideWhenKeypadOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 85
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController$1;->this$0:Lcom/sonyericsson/conversations/ui/controller/OnePaneUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onKeyboardStateChanged(Z)V

    goto :goto_0
.end method
