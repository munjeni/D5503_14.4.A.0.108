.class public Lcom/sonyericsson/fmradio/ui/widget/FadedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "FadedFrameLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/fmradio/ui/widget/FadedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/fmradio/ui/widget/FadedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 38
    const/high16 v0, 0x3f800000

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 43
    const/high16 v0, 0x3f800000

    return v0
.end method
