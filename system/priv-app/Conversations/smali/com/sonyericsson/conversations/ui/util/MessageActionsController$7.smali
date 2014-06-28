.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->popUpToastInUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field final synthetic val$resourceId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;I)V
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$resourceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$100(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$7;->val$resourceId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1174
    :cond_0
    return-void
.end method
