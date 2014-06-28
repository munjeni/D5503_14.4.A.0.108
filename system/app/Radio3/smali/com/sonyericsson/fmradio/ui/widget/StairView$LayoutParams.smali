.class public Lcom/sonyericsson/fmradio/ui/widget/StairView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "StairView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/widget/StairView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public mDisplayColor:Ljava/lang/Integer;

.field public mDisplayName:Ljava/lang/String;

.field public mLeft:I

.field public mOffset:I

.field public mPosition:I

.field public mPreStretchRect:Landroid/graphics/Rect;

.field public mResolveCollisions:Z

.field public mRight:I

.field public mStairLevel:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 458
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 459
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 466
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 467
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    return-void
.end method
