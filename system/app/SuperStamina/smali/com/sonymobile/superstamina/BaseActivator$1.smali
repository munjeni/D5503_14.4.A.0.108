.class Lcom/sonymobile/superstamina/BaseActivator$1;
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
    .line 92
    iput-object p1, p0, Lcom/sonymobile/superstamina/BaseActivator$1;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator$1;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    iget-object v1, p0, Lcom/sonymobile/superstamina/BaseActivator$1;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    # invokes: Lcom/sonymobile/superstamina/BaseActivator;->getBatteryThreshold()I
    invoke-static {v1}, Lcom/sonymobile/superstamina/BaseActivator;->access$100(Lcom/sonymobile/superstamina/BaseActivator;)I

    move-result v1

    # setter for: Lcom/sonymobile/superstamina/BaseActivator;->mBatteryThreshold:I
    invoke-static {v0, v1}, Lcom/sonymobile/superstamina/BaseActivator;->access$002(Lcom/sonymobile/superstamina/BaseActivator;I)I

    .line 97
    iget-object v0, p0, Lcom/sonymobile/superstamina/BaseActivator$1;->this$0:Lcom/sonymobile/superstamina/BaseActivator;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/BaseActivator;->checkActivation()V

    .line 98
    return-void
.end method
