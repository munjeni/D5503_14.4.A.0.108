.class Lcom/sonyericsson/conversations/ui/EditorFragment$6;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V
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
    .line 1604
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllTextDeleted()V
    .locals 1

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$500(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1608
    return-void
.end method

.method public onFirstTextEntered()V
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$6;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$500(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1612
    return-void
.end method
