.class Lcom/sonymobile/superstamina/powersaver/features/BaseFeature$1;
.super Landroid/database/ContentObserver;
.source "BaseFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;


# direct methods
.method constructor <init>(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature$1;->this$0:Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/powersaver/features/Feature;->getId()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->updateFeatureFromCP(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->access$000(Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;Ljava/lang/String;)V

    .line 121
    return-void
.end method
