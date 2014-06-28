.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->onEncodingChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

.field final synthetic val$newMessageSize:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;I)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;->val$newMessageSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 426
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007d

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;->val$newMessageSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "toastText":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

    iget-object v2, v2, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 432
    .local v0, "toast":Landroid/widget/Toast;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->upperToast(Landroid/widget/Toast;)V

    .line 434
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 435
    return-void
.end method
