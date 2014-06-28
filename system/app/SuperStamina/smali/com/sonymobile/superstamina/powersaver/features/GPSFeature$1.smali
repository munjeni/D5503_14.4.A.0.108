.class Lcom/sonymobile/superstamina/powersaver/features/GPSFeature$1;
.super Landroid/database/ContentObserver;
.source "GPSFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->isGpsOn()Z
    invoke-static {v0}, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GPSFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/GPSFeature;

    invoke-virtual {v0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->onChangedByUser()V

    .line 32
    :cond_0
    return-void
.end method
