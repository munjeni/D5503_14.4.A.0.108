.class Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;
.super Ljava/lang/Object;
.source "MessageTimestampHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->mAnimationShowing:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->access$000(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    # getter for: Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->defaultController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;->access$100(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView$1;->this$0:Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->starMessage(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V

    goto :goto_0
.end method
