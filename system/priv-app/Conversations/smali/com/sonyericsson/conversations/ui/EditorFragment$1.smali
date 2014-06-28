.class Lcom/sonyericsson/conversations/ui/EditorFragment$1;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 252
    :cond_0
    return-void
.end method
