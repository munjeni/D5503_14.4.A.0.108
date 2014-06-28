.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$2;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$2;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1$2;->this$1:Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$1;->val$activity:Landroid/app/Activity;

    const v1, 0x7f0700d7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 691
    return-void
.end method
