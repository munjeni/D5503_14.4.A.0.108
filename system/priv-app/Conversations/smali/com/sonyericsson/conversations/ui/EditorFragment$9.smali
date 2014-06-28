.class Lcom/sonyericsson/conversations/ui/EditorFragment$9;
.super Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initAddMedia()V
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
    .line 1833
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/util/ClickFilter$FilteredOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 1

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableAddMmsAttachment:Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->addMedia()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1200(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1841
    :goto_0
    return-void

    .line 1839
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$9;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->showCannotAddAttachmentToast()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1300(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    goto :goto_0
.end method
