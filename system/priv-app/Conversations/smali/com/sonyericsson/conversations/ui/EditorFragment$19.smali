.class Lcom/sonyericsson/conversations/ui/EditorFragment$19;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initEditButton()V
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
    .line 2036
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$19;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2039
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$19;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1700(Lcom/sonyericsson/conversations/ui/EditorFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$19;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1702(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2041
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$19;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->editSlideshow()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1800(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2043
    :cond_0
    return-void
.end method
