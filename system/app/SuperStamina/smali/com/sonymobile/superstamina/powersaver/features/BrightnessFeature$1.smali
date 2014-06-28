.class Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;
.super Landroid/database/ContentObserver;
.source "BrightnessFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 50
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->getBrightness()I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;)I

    move-result v0

    .line 51
    .local v0, "value":I
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    # getter for: Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->mLastValue:I
    invoke-static {v1}, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;->access$100(Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BrightnessFeature;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 54
    :cond_0
    return-void
.end method
