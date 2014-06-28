.class Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;
.super Landroid/database/ContentObserver;
.source "ScreenTimeoutFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 33
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->getTimeout()I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;)I

    move-result v0

    .line 34
    .local v0, "value":I
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getParam()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/ScreenTimeoutFeature;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 37
    :cond_0
    return-void
.end method
