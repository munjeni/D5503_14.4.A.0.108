.class public Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;
.super Landroid/widget/ImageButton;
.source "FramedTextButton.java"


# static fields
.field private static gPaint:Landroid/graphics/Paint;

.field private static gPath:Landroid/graphics/Path;

.field private static mTextPadding:I

.field private static mTextSize:I

.field private static mTrianglePadding:I

.field private static mTriangleSize:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRect:Landroid/graphics/Rect;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x18

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextSize:I

    .line 37
    const/16 v0, 0x14

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    .line 43
    const/4 v0, 0x2

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    .line 45
    const/16 v0, 0x1e

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTriangleSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    .line 49
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mRect:Landroid/graphics/Rect;

    .line 96
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/china/photoeditor/R$styleable;->ImageButtonTitle:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 56
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    .line 57
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 52
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextSize:I

    .line 53
    return-void
.end method

.method public static setTrianglePadding(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 60
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    .line 61
    return-void
.end method

.method public static setTriangleSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 64
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTriangleSize:I

    .line 65
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x40000000

    const/16 v11, 0xff

    .line 109
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/16 v1, 0x60

    invoke-virtual {v0, v1, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 110
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->getWidth()I

    move-result v8

    .line 113
    .local v8, "w":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->getHeight()I

    move-result v6

    .line 114
    .local v6, "h":I
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v1, v0

    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    int-to-float v2, v0

    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v0, v6, v0

    int-to-float v4, v0

    sget-object v5, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 116
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v1, v8, v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v1, v2

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTriangleSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v2, v6, v2

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 118
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v1, v8, v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v2, v6, v2

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v2, v3

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTriangleSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 120
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v1, v8, v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextPadding:I

    sub-int v2, v6, v2

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTrianglePadding:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 121
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 122
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 123
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPath:Landroid/graphics/Path;

    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 128
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v11, v11, v11, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 129
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 130
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    const-string v1, "sst"

    invoke-static {v1, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 131
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 132
    .local v7, "textWidth":F
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 133
    int-to-float v0, v8

    sub-float/2addr v0, v7

    div-float/2addr v0, v12

    float-to-int v9, v0

    .line 134
    .local v9, "x":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, v6

    div-int/lit8 v10, v0, 0x2

    .line 136
    .local v10, "y":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    int-to-float v1, v9

    int-to-float v2, v10

    sget-object v3, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->gPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 138
    .end local v7    # "textWidth":F
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mText:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->invalidate()V

    .line 70
    return-void
.end method

.method public setTextFrom(I)V
    .locals 2
    .param p1, "itemId"    # I

    .prologue
    .line 73
    packed-switch p1, :pswitch_data_0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->invalidate()V

    .line 92
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f07003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f07003b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->mContext:Landroid/content/Context;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00a5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
