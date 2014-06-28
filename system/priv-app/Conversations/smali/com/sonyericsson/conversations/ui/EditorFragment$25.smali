.class Lcom/sonyericsson/conversations/ui/EditorFragment$25;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->postShowProgressRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$progressInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 3053
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->val$progressInfo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3055
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const-string v1, ""

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$25;->val$progressInfo:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/conversations/ui/EditorFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$3100(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 3056
    return-void
.end method
