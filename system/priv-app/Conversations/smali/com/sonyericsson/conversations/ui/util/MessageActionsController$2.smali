.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;
.super Ljava/lang/Object;
.source "MessageActionsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showSimCardFullDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$2;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    # invokes: Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getSimCardFullDialog()Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->access$200(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/app/AlertDialog;

    .line 738
    return-void
.end method
