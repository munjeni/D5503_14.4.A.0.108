.class public Lcom/sonymobile/china/photoeditor/filtershow/CenteredLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CenteredLinearLayout.java"


# instance fields
.field private final mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/CenteredLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/china/photoeditor/R$styleable;->CenteredLinearLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/CenteredLinearLayout;->mMaxWidth:I

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 39
    .local v1, "parentWidth":I
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/CenteredLinearLayout;->mMaxWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/CenteredLinearLayout;->mMaxWidth:I

    if-le v1, v2, :cond_0

    .line 40
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 41
    .local v0, "measureMode":I
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/CenteredLinearLayout;->mMaxWidth:I

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 43
    .end local v0    # "measureMode":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 44
    return-void
.end method
