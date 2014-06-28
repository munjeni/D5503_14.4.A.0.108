.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
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
    .line 404
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodingChanged(III)V
    .locals 6
    .param p1, "oldEncoding"    # I
    .param p2, "newEncoding"    # I
    .param p3, "newMessageSize"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    .line 409
    if-ne p2, v5, :cond_1

    move v2, v3

    .line 410
    .local v2, "turned16bit":Z
    :goto_0
    if-ne p1, v5, :cond_2

    if-eq p2, v5, :cond_2

    .line 412
    .local v3, "turnedFrom16bit":Z
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEncodingChangedNotificationEnabled()Z

    move-result v4

    if-nez v4, :cond_3

    .line 440
    :cond_0
    :goto_2
    return-void

    .end local v2    # "turned16bit":Z
    .end local v3    # "turnedFrom16bit":Z
    :cond_1
    move v2, v4

    .line 409
    goto :goto_0

    .restart local v2    # "turned16bit":Z
    :cond_2
    move v3, v4

    .line 410
    goto :goto_1

    .line 415
    .restart local v3    # "turnedFrom16bit":Z
    :cond_3
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->shouldDisplayDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 416
    invoke-static {p3}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->newInstance(I)Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;

    move-result-object v1

    .line 417
    .local v1, "rwd":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 418
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const-string v4, "EncodingChangeDialog"

    invoke-virtual {v0, v1, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 419
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    .line 420
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "rwd":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_0

    .line 422
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$300(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;

    invoke-direct {v5, p0, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
