.class Lcom/sonymobile/superstamina/BaseActivator$2;
.super Landroid/database/ContentObserver;
.source "BaseActivator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/superstamina/BaseActivator;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/BaseActivator;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/BaseActivator;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sonymobile/superstamina/BaseActivator$2;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator$2;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator$2;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/BaseActivator;->isEnabled()Z

    move-result v1

    # invokes: Lcom/sonymobile/superstamina/BaseActivator;->enableImpl(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/superstamina/BaseActivator;->access$200(Lcom/sonymobile/superstamina/BaseActivator;Z)V

    .line 105
    return-void
.end method
