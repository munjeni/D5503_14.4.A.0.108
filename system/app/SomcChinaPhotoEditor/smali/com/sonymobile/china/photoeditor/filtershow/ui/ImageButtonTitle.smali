.class public Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;
.super Landroid/widget/ImageButton;
.source "ImageButtonTitle.java"


# static fields
.field private static gPaint:Landroid/graphics/Paint;

.field private static mTextPadding:I

.field private static mTextSize:I


# instance fields
.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x18

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mTextSize:I

    .line 35
    const/16 v0, 0x14

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mTextPadding:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/china/photoeditor/R$styleable;->ImageButtonTitle:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 55
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 44
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mTextPadding:I

    .line 45
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 40
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mTextSize:I

    .line 41
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0xff

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 67
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 68
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    sget v4, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    const-string v4, "sst"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 71
    .local v0, "textWidth":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    float-to-int v1, v3

    .line 72
    .local v1, "x":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->getHeight()I

    move-result v3

    sget v4, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mTextPadding:I

    sub-int v2, v3, v4

    .line 74
    .local v2, "y":I
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    int-to-float v4, v1

    int-to-float v5, v2

    sget-object v6, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 76
    .end local v0    # "textWidth":F
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->mText:Ljava/lang/String;

    .line 49
    return-void
.end method
