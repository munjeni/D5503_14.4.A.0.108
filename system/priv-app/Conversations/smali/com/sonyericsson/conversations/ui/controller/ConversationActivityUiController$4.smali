.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendAnimation()V
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
    .line 757
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->cleanupSendAnimation()V

    .line 770
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 760
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->cleanupSendAnimation()V

    .line 763
    :cond_0
    return-void
.end method
