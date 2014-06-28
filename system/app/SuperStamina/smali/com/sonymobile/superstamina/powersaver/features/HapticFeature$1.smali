.class Lcom/sonymobile/superstamina/powersaver/features/HapticFeature$1;
.super Landroid/database/ContentObserver;
.source "HapticFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->getHapticOn()I
    invoke-static {v0}, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/HapticFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/HapticFeature;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 36
    :cond_0
    return-void
.end method
