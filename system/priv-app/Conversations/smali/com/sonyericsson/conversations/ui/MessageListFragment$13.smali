.class Lcom/sonyericsson/conversations/ui/MessageListFragment$13;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;->this$0:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    # invokes: Lcom/sonyericsson/conversations/ui/MessageListFragment;->showProgressDlg()V
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->access$1600(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    .line 1350
    return-void
.end method
