.class Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;
.super Ljava/lang/Object;
.source "MmsOnePageViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

.field final synthetic val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessage:Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$300(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v0

    iget v0, v0, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;->val$deleteStarred:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity$3;->this$0:Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;

    # getter for: Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;->access$400(Lcom/sonyericsson/conversations/ui/MmsOnePageViewActivity;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->deleteMessage()V

    .line 288
    :cond_1
    return-void
.end method
