.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

.field final synthetic val$duration:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;II)V
    .locals 0

    .prologue
    .line 2624
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iput p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->val$resId:I

    iput p3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2626
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->val$resId:I

    iget v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 2627
    return-void
.end method
