.class Lcom/sonyericsson/conversations/ui/Composer$1;
.super Ljava/lang/Thread;
.source "Composer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/Composer;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/Composer;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/Composer;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1565
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    # invokes: Lcom/sonyericsson/conversations/ui/Composer;->deleteDraft(Lcom/sonyericsson/conversations/model/Message;)Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->access$100(Lcom/sonyericsson/conversations/ui/Composer;Lcom/sonyericsson/conversations/model/Message;)Z

    .line 1574
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->onExternalTaskDone()V

    .line 1575
    return-void

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/Composer$1;->this$0:Lcom/sonyericsson/conversations/ui/Composer;

    # invokes: Lcom/sonyericsson/conversations/ui/Composer;->deleteObsoleteMessages()Z
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->access$200(Lcom/sonyericsson/conversations/ui/Composer;)Z

    goto :goto_0
.end method
