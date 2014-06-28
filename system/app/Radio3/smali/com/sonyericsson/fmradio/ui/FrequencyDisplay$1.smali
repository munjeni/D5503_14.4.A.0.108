.class Lcom/sonyericsson/fmradio/ui/FrequencyDisplay$1;
.super Ljava/lang/Object;
.source "FrequencyDisplay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay$1;->this$0:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 63
    .local v0, "x":F
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay$1;->this$0:Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/fmradio/ui/FrequencyDisplay;->setAlpha(F)V

    .line 64
    return-void
.end method
