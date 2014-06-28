.class Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;
.super Ljava/lang/Object;
.source "TextInputInfoBoxHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->showToast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

.field final synthetic val$length:I

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$text:Ljava/lang/String;

    iput p3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$length:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 562
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mContext:Landroid/content/Context;

    const-string v4, ""

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    # setter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$002(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 564
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    .line 565
    .local v1, "viewGroup":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 566
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "viewGroup":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 567
    .local v0, "textView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 568
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "textView":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 572
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v2

    iget v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$length:I

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 575
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$000(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 577
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToastMonitor:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$100(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 578
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->this$0:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    # getter for: Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->mToastMonitor:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->access$100(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;)Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$text:Ljava/lang/String;

    iget v4, p0, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$1;->val$length:I

    invoke-interface {v2, v3, v4}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$ToastMonitor;->onToastShown(Ljava/lang/String;I)V

    .line 580
    :cond_1
    return-void
.end method
