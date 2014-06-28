.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5$1;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$5;->val$activity:Landroid/app/Activity;

    const v1, 0x7f070016

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1030
    return-void
.end method
