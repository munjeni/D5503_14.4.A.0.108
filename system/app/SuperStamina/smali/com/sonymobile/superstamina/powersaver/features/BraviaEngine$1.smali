.class Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;
.super Landroid/database/ContentObserver;
.source "BraviaEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 54
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->getCurrentMode()I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->access$000(Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;)I

    move-result v0

    .line 55
    .local v0, "value":I
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    # getter for: Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->mLastValue:I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;->access$100(Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 56
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BraviaEngine;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 58
    :cond_0
    return-void
.end method
