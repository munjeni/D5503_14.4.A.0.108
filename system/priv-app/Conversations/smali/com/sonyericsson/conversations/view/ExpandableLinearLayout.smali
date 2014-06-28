.class public Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ExpandableLinearLayout.java"


# static fields
.field public static final RELATIVE_HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final RELATIVE_HEIGHT_COLLAPSED:F = 0.0f

.field public static final RELATIVE_HEIGHT_EXPANDED:F = 1.0f


# instance fields
.field private mRelativeHeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;

    const-class v1, Ljava/lang/Float;

    const-string v2, "relativeHeight"

    invoke-static {v0, v1, v2}, Landroid/util/Property;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->RELATIVE_HEIGHT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->mRelativeHeight:F

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->mRelativeHeight:F

    .line 33
    return-void
.end method


# virtual methods
.method public getRelativeHeight()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->mRelativeHeight:F

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->mRelativeHeight:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 40
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 41
    return-void
.end method

.method public setRelativeHeight(F)V
    .locals 0
    .param p1, "relativeHeight"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/sonyericsson/conversations/view/ExpandableLinearLayout;->mRelativeHeight:F

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 46
    return-void
.end method
