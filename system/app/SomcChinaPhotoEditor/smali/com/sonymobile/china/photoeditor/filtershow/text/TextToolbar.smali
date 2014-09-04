.class public Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
.super Landroid/widget/LinearLayout;
.source "TextToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT:I = 0x1

.field public static final DLG_NULL:I = 0x0

.field public static final DLG_TEXT_COLOR:I = 0x2

.field public static final DLG_TEXT_FONT:I = 0x1

.field public static final DLG_TEXT_SIZE:I = 0x3

.field public static final FLIP_FONT_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.styledfontsetting"

.field private static final FONT_FINANCE:Ljava/lang/String; = "financeprc"

.field public static final FONT_HWR_FINANCE:I = 0x2

.field public static final FONT_HWR_ROCKY:I = 0x3

.field public static final FONT_HWR_YOUNG:I = 0x1

.field private static final FONT_MROCKY:Ljava/lang/String; = "mrockyprc"

.field private static final FONT_MYOUNG:Ljava/lang/String; = "myoungprc"

.field public static final FONT_NORMAL:I = 0x0

.field private static final TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final TEXT_FONT:Ljava/lang/String; = "text_font"

.field private static final TEXT_LAND_SIZE:Ljava/lang/String; = "text_land_size"

.field private static final TEXT_PORT_SIZE:Ljava/lang/String; = "text_port_size"

.field private static mHWRFont_Finance:Landroid/graphics/Typeface;

.field private static mHWRFont_Rocky:Landroid/graphics/Typeface;

.field private static mHWRFont_Young:Landroid/graphics/Typeface;


# instance fields
.field private mColor:I

.field private mColorBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDefaultColor:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogId:I

.field private mFont:I

.field private mFontBtn:Landroid/widget/Button;

.field private mGroupEasyClick:[Landroid/view/View;

.field private mIsUseFont:Z

.field private mLandSize:F

.field private mLandSizeArray:[F

.field mListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;

.field private mPhotoBounds:Landroid/graphics/RectF;

.field private mPortSize:F

.field private mPortSizeArray:[F

.field mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

.field private mRecreateDialog:Ljava/lang/Runnable;

.field private mSizeBtn:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Young:Landroid/graphics/Typeface;

    .line 90
    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Finance:Landroid/graphics/Typeface;

    .line 92
    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Rocky:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v7, 0x7f090022

    const/4 v3, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    .line 75
    new-array v2, v3, [Landroid/view/View;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    .line 77
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    .line 78
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    .line 119
    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mIsUseFont:Z

    .line 805
    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$15;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mRecreateDialog:Ljava/lang/Runnable;

    .line 156
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->checkFilpFont()V

    .line 158
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    const v3, 0x7f090021

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v5

    .line 161
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    .line 163
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    const/4 v3, 0x2

    const v4, 0x7f090023

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    .line 166
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, "pref":Landroid/content/SharedPreferences;
    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDefaultColor:I

    .line 169
    const-string v2, "text_color"

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDefaultColor:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    .line 170
    const-string v2, "text_port_size"

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    .line 172
    const-string v2, "text_font"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    .line 173
    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createFontDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createColorDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    return v0
.end method

.method static synthetic access$1002(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    return p1
.end method

.method static synthetic access$1100(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)[F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    return v0
.end method

.method static synthetic access$1202(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;F)F
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    return p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)[F
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createSizeDialog()V

    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    return v0
.end method

.method static synthetic access$702(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    return p1
.end method

.method static synthetic access$802(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    return p1
.end method

.method static synthetic access$900(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public static calDialogPos(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Landroid/graphics/Point;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "content"    # Landroid/view/View;
    .param p2, "ref"    # Landroid/view/View;
    .param p3, "vForVerticalPos"    # Landroid/view/View;
    .param p4, "offset"    # I
    .param p5, "alignScreenCenter"    # Z

    .prologue
    .line 623
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 624
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 628
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v10, -0x80000000

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v11, -0x80000000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {p1, v9, v10}, Landroid/view/View;->measure(II)V

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 633
    .local v5, "w":I
    const/4 v9, 0x2

    new-array v1, v9, [I

    .line 634
    .local v1, "mWindowOffset":[I
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 636
    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v4, v9, v10

    .line 637
    .local v4, "viewCenter":I
    iget v9, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v9, 0x2

    .line 638
    .local v3, "screenCenter":I
    const/4 v7, 0x0

    .line 639
    .local v7, "xOffset":I
    if-eqz p5, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v10, v3, v4

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    if-le v9, v10, :cond_0

    .line 641
    sub-int v7, v3, v4

    .line 644
    :cond_0
    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    sub-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int v6, v9, v7

    .line 646
    .local v6, "x":I
    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 647
    .local v0, "containerWindowOffset":[I
    invoke-virtual {p3, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 648
    const/4 v9, 0x1

    aget v9, v0, v9

    sub-int v8, v9, p4

    .line 650
    .local v8, "y":I
    const/4 v9, 0x0

    aget v9, v1, v9

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {p0, v9, v10, v11, v7}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createBubbleDrawable(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 655
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9, v6, v8}, Landroid/graphics/Point;-><init>(II)V

    return-object v9
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "w"    # I
    .param p1, "h"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 791
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createBubbleDrawable(Landroid/content/Context;IIII)Landroid/graphics/drawable/Drawable;
    .locals 41
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "center"    # I
    .param p2, "contentWidth"    # I
    .param p3, "contentHeight"    # I
    .param p4, "xOffset"    # I

    .prologue
    .line 665
    const v35, 0x7f0200a8

    .line 666
    .local v35, "topRId":I
    const v10, 0x7f0200a9

    .line 667
    .local v10, "bottomRId":I
    const v9, 0x7f0200a6

    .line 668
    .local v9, "bottomLeftRId":I
    const v11, 0x7f0200a7

    .line 669
    .local v11, "bottomRightRId":I
    const/16 v31, 0x0

    .line 671
    .local v31, "pointerX":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 672
    .local v28, "pointer":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v30

    .line 673
    .local v30, "pointerW":I
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    .line 674
    .local v29, "pointerH":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 675
    .local v20, "frame":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 676
    .local v5, "bl":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    .line 677
    .local v7, "blW":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 678
    .local v6, "blH":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 679
    .local v12, "br":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 680
    .local v14, "brW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 682
    .local v13, "brH":I
    move/from16 v22, p2

    .line 683
    .local v22, "frameW":I
    sub-int v21, p3, v29

    .line 687
    .local v21, "frameH":I
    const/16 v23, 0x0

    .line 699
    .local v23, "leftMargin":I
    div-int/lit8 v37, p2, 0x2

    move/from16 v0, p1

    move/from16 v1, v37

    if-le v0, v1, :cond_2

    .line 702
    sub-int v37, p2, v30

    div-int/lit8 v31, v37, 0x2

    .line 709
    :goto_0
    sub-int v31, v31, p4

    .line 714
    const/16 v25, 0x0

    .line 715
    .local v25, "lx":I
    sub-int v24, v31, v25

    .line 716
    .local v24, "lw":I
    add-int v33, v31, v30

    .line 717
    .local v33, "rx":I
    sub-int v37, p2, v24

    sub-int v32, v37, v30

    .line 720
    .local v32, "rw":I
    new-instance v15, Landroid/graphics/Canvas;

    invoke-direct {v15}, Landroid/graphics/Canvas;-><init>()V

    .line 721
    .local v15, "c":Landroid/graphics/Canvas;
    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v22

    move/from16 v1, v21

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 722
    .local v19, "fbmp":Landroid/graphics/Bitmap;
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 723
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 725
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 727
    move/from16 v0, v24

    if-ge v0, v7, :cond_0

    .line 728
    move/from16 v24, v7

    .line 730
    :cond_0
    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v24

    move-object/from16 v1, v37

    invoke-static {v0, v6, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 731
    .local v34, "tlbmp":Landroid/graphics/Bitmap;
    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v24

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 732
    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 733
    invoke-virtual {v5, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 735
    move/from16 v0, v32

    if-ge v0, v14, :cond_1

    .line 736
    sub-int v18, v14, v32

    .line 737
    .local v18, "diff":I
    move/from16 v32, v14

    .line 738
    sub-int v33, v33, v18

    .line 740
    .end local v18    # "diff":I
    :cond_1
    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v32

    move-object/from16 v1, v37

    invoke-static {v0, v13, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v36

    .line 741
    .local v36, "trbmp":Landroid/graphics/Bitmap;
    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v32

    invoke-virtual {v12, v0, v1, v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 742
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 743
    invoke-virtual {v12, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 745
    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v30

    move/from16 v1, v29

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 746
    .local v27, "pbmp":Landroid/graphics/Bitmap;
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 747
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 748
    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 751
    sget-object v37, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v37

    invoke-static {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 753
    .local v8, "bmp":Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Canvas;-><init>()V

    .line 754
    .local v16, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 756
    new-instance v26, Landroid/graphics/Paint;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Paint;-><init>()V

    .line 757
    .local v26, "paint":Landroid/graphics/Paint;
    new-instance v37, Landroid/graphics/PorterDuffXfermode;

    sget-object v38, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v37 .. v38}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 759
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->save()I

    .line 760
    const/16 v37, 0x0

    new-instance v38, Landroid/graphics/Rect;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v39, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 762
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Canvas;->restore()V

    .line 764
    const/16 v37, 0x0

    new-instance v38, Landroid/graphics/Rect;

    add-int v39, v25, v24

    add-int v40, v21, v6

    move-object/from16 v0, v38

    move/from16 v1, v25

    move/from16 v2, v21

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 767
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v37, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v38, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v37

    move/from16 v3, v38

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 768
    const/16 v37, 0x0

    new-instance v38, Landroid/graphics/Rect;

    add-int v39, v33, v32

    add-int v40, v21, v13

    move-object/from16 v0, v38

    move/from16 v1, v33

    move/from16 v2, v21

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 771
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 772
    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Bitmap;->recycle()V

    .line 773
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Bitmap;->recycle()V

    .line 774
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 775
    new-instance v17, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 776
    .local v17, "d":Landroid/graphics/drawable/Drawable;
    return-object v17

    .line 704
    .end local v8    # "bmp":Landroid/graphics/Bitmap;
    .end local v15    # "c":Landroid/graphics/Canvas;
    .end local v16    # "canvas":Landroid/graphics/Canvas;
    .end local v17    # "d":Landroid/graphics/drawable/Drawable;
    .end local v19    # "fbmp":Landroid/graphics/Bitmap;
    .end local v24    # "lw":I
    .end local v25    # "lx":I
    .end local v26    # "paint":Landroid/graphics/Paint;
    .end local v27    # "pbmp":Landroid/graphics/Bitmap;
    .end local v32    # "rw":I
    .end local v33    # "rx":I
    .end local v34    # "tlbmp":Landroid/graphics/Bitmap;
    .end local v36    # "trbmp":Landroid/graphics/Bitmap;
    :cond_2
    const/16 v23, 0x6

    .line 706
    sub-int v31, p1, v23

    .line 707
    div-int/lit8 v37, v30, 0x2

    sub-int v31, v31, v37

    goto/16 :goto_0
.end method

.method private createColorDialog()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    .line 453
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    .line 457
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    const v2, 0x7f03000a

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 459
    .local v1, "contentView":Landroid/view/ViewGroup;
    const v0, 0x7f0c008e

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    .line 462
    .local v9, "sb":Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$9;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v9, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setOnColorChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;)V

    .line 474
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    invoke-virtual {v9, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getIndex(I)I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setColorIndex(I)V

    .line 476
    new-instance v8, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    invoke-direct {v8, v0, p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;-><init>(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;Landroid/view/View;)V

    .line 478
    .local v8, "pw":Landroid/app/Dialog;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$10;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$10;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 486
    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    .line 487
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 488
    invoke-virtual {v8, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 490
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 492
    .local v4, "offset":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mIsUseFont:Z

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->calDialogPos(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Landroid/graphics/Point;

    move-result-object v7

    .line 494
    .local v7, "pt":Landroid/graphics/Point;
    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 495
    .local v6, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v7, Landroid/graphics/Point;->x:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 496
    iget v0, v7, Landroid/graphics/Point;->y:I

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 497
    const/4 v0, 0x0

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 498
    const/16 v0, 0x33

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 499
    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 500
    invoke-virtual {v8}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private createFontDialog()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const v14, 0x7f020075

    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 317
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    if-eq v0, v13, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iput v13, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    .line 322
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    const v2, 0x7f03000b

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 324
    .local v1, "contentView":Landroid/view/ViewGroup;
    const v0, 0x7f0c008f

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 326
    .local v10, "normal":Landroid/widget/TextView;
    const v0, 0x7f0c0090

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 327
    .local v8, "hwYoung":Landroid/widget/TextView;
    const v0, 0x7f0c0091

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 328
    .local v6, "hwFinance":Landroid/widget/TextView;
    const v0, 0x7f0c0092

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 329
    .local v7, "hwRocky":Landroid/widget/TextView;
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 330
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 332
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    packed-switch v0, :pswitch_data_0

    .line 347
    :goto_1
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$4;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 366
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$5;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 385
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$6;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 404
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$7;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 423
    new-instance v12, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    invoke-direct {v12, v0, p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;-><init>(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;Landroid/view/View;)V

    .line 425
    .local v12, "pw":Landroid/app/Dialog;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$8;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v12, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 433
    iput-object v12, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    .line 434
    invoke-virtual {v12, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 435
    invoke-virtual {v12, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 437
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 439
    .local v4, "offset":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->calDialogPos(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Landroid/graphics/Point;

    move-result-object v11

    .line 441
    .local v11, "pt":Landroid/graphics/Point;
    invoke-virtual {v12}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 442
    .local v9, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v11, Landroid/graphics/Point;->x:I

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 443
    iget v0, v11, Landroid/graphics/Point;->y:I

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 444
    const/4 v0, 0x0

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 445
    const/16 v0, 0x33

    iput v0, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 446
    invoke-virtual {v12}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 447
    invoke-virtual {v12}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 448
    invoke-virtual {v12}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 335
    .end local v4    # "offset":I
    .end local v9    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "pt":Landroid/graphics/Point;
    .end local v12    # "pw":Landroid/app/Dialog;
    :pswitch_0
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 338
    :pswitch_1
    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 341
    :pswitch_2
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 344
    :pswitch_3
    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createSizeDialog()V
    .locals 15

    .prologue
    .line 505
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialogId:I

    .line 509
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    const v2, 0x7f03000c

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 511
    .local v1, "contentView":Landroid/view/ViewGroup;
    const v0, 0x7f0c0093

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 513
    .local v12, "small":Landroid/widget/TextView;
    const v0, 0x7f0c0094

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 515
    .local v9, "normal":Landroid/widget/TextView;
    const v0, 0x7f0c0095

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 517
    .local v7, "large":Landroid/widget/TextView;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 518
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 519
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 520
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v2, v13

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v2, v13

    if-gez v0, :cond_4

    .line 522
    :cond_2
    const v0, 0x7f020075

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 534
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 536
    .local v6, "d":Landroid/util/DisplayMetrics;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$11;

    invoke-direct {v0, p0, v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$11;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 554
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;

    invoke-direct {v0, p0, v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$12;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$13;

    invoke-direct {v0, p0, v6}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$13;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;Landroid/util/DisplayMetrics;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    new-instance v11, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    invoke-direct {v11, v0, p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;-><init>(Landroid/content/Context;Landroid/view/View;[Landroid/view/View;Landroid/view/View;)V

    .line 592
    .local v11, "pw":Landroid/app/Dialog;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$14;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$14;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 600
    iput-object v11, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    .line 601
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 602
    invoke-virtual {v11, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 604
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 606
    .local v4, "offset":I
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->calDialogPos(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;IZ)Landroid/graphics/Point;

    move-result-object v10

    .line 608
    .local v10, "pt":Landroid/graphics/Point;
    invoke-virtual {v11}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    .line 609
    .local v8, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v0, v10, Landroid/graphics/Point;->x:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 610
    iget v0, v10, Landroid/graphics/Point;->y:I

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 611
    const/4 v0, 0x0

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 612
    const/16 v0, 0x33

    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 613
    invoke-virtual {v11}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 614
    invoke-virtual {v11}, Lcom/sonymobile/china/photoeditor/filtershow/text/EasyClickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 524
    .end local v4    # "offset":I
    .end local v6    # "d":Landroid/util/DisplayMetrics;
    .end local v8    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v10    # "pt":Landroid/graphics/Point;
    .end local v11    # "pw":Landroid/app/Dialog;
    :cond_4
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v2, v13

    if-ltz v0, :cond_5

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v2, v13

    if-gez v0, :cond_6

    .line 526
    :cond_5
    const v0, 0x7f020075

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 528
    :cond_6
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v2, v13

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide v13, 0x3f50624dd2f1a9fcL

    cmpg-double v0, v2, v13

    if-gez v0, :cond_3

    .line 530
    :cond_7
    const v0, 0x7f020075

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_1
.end method

.method private getFontSizeScaleFromPortToLand()F
    .locals 13

    .prologue
    const/high16 v8, 0x3f800000

    const/4 v12, 0x0

    .line 847
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 848
    .local v4, "pDisplayBounds":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 849
    .local v0, "lDisplayBounds":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 874
    :goto_0
    return v8

    .line 853
    :cond_0
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 854
    .local v7, "res":Landroid/content/res/Resources;
    const v9, 0x7f090008

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v6, v9

    .line 855
    .local v6, "pW":F
    const v9, 0x7f090009

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v5, v9

    .line 856
    .local v5, "pH":F
    const v9, 0x7f09000a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v2, v9

    .line 857
    .local v2, "lW":F
    const v9, 0x7f09000b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v1, v9

    .line 859
    .local v1, "lH":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 860
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 864
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 865
    .local v3, "matrix":Landroid/graphics/Matrix;
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPhotoBounds:Landroid/graphics/RectF;

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v12, v12, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 867
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 869
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 870
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPhotoBounds:Landroid/graphics/RectF;

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v12, v12, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v9, v10, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 872
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPhotoBounds:Landroid/graphics/RectF;

    invoke-virtual {v3, v0, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 874
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    goto :goto_0
.end method

.method public static newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "font"    # I

    .prologue
    const/4 v2, 0x0

    .line 122
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 123
    .local v0, "tf":Landroid/graphics/Typeface;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 124
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Young:Landroid/graphics/Typeface;

    if-nez v1, :cond_1

    .line 125
    const-string v1, "myoungprc"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 126
    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Young:Landroid/graphics/Typeface;

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 128
    :cond_1
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Young:Landroid/graphics/Typeface;

    goto :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 131
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Finance:Landroid/graphics/Typeface;

    if-nez v1, :cond_3

    .line 132
    const-string v1, "financeprc"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 133
    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Finance:Landroid/graphics/Typeface;

    goto :goto_0

    .line 135
    :cond_3
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Finance:Landroid/graphics/Typeface;

    goto :goto_0

    .line 137
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 138
    sget-object v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Rocky:Landroid/graphics/Typeface;

    if-nez v1, :cond_5

    .line 139
    const-string v1, "mrockyprc"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 140
    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Rocky:Landroid/graphics/Typeface;

    goto :goto_0

    .line 142
    :cond_5
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mHWRFont_Rocky:Landroid/graphics/Typeface;

    goto :goto_0

    .line 144
    :cond_6
    if-nez p1, :cond_0

    .line 145
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0
.end method

.method private recreateDialog()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mRecreateDialog:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 822
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mRecreateDialog:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->post(Ljava/lang/Runnable;)Z

    .line 823
    return-void
.end method

.method public static shouldMirror(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "local":Ljava/lang/String;
    const-string v1, "fa_IR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "iw_IL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ar_EG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ar_IL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 784
    :cond_0
    const/4 v1, 0x1

    .line 786
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const-wide v7, 0x3f50624dd2f1a9fcL

    const/4 v6, 0x1

    .line 188
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->getFontSizeScaleFromPortToLand()F

    move-result v2

    .line 189
    .local v2, "scale":F
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v4, v4, v9

    mul-float/2addr v4, v2

    aput v4, v3, v9

    .line 190
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v4, v4, v6

    mul-float/2addr v4, v2

    aput v4, v3, v6

    .line 191
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v4, v4, v10

    mul-float/2addr v4, v2

    aput v4, v3, v10

    .line 192
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 194
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v3, "text_land_size"

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v4, v4, v6

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    .line 196
    const v3, 0x7f0c0073

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    .line 197
    const v3, 0x7f0c0074

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    .line 198
    const v3, 0x7f0c0075

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    .line 199
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    aput-object v4, v3, v9

    .line 200
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    aput-object v4, v3, v6

    .line 201
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mGroupEasyClick:[Landroid/view/View;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    aput-object v4, v3, v10

    .line 203
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mIsUseFont:Z

    if-eqz v3, :cond_3

    .line 204
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$1;

    invoke-direct {v4, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    invoke-static {v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 216
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    if-nez v3, :cond_4

    .line 217
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v4, 0x7f070060

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 226
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$2;

    invoke-direct {v4, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 235
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$3;

    invoke-direct {v4, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$3;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v4, v4, v9

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-gez v3, :cond_7

    .line 244
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const v4, 0x7f0200b0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 254
    .local v0, "d":Landroid/util/DisplayMetrics;
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget v6, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    iget v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v6, v7

    iget v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;-><init>(IFFI)V

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .line 256
    return-void

    .line 206
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 218
    :cond_4
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    if-ne v3, v6, :cond_5

    .line 219
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v4, 0x7f07000c

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 220
    :cond_5
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    if-ne v3, v10, :cond_6

    .line 221
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v4, 0x7f07000d

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 222
    :cond_6
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 223
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v4, 0x7f07000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 245
    :cond_7
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-ltz v3, :cond_8

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v4, v4, v6

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-gez v3, :cond_9

    .line 247
    :cond_8
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const v4, 0x7f0200af

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 248
    :cond_9
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v4, v4, v10

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-ltz v3, :cond_a

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v4, v4, v10

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v7

    if-gez v3, :cond_2

    .line 250
    :cond_a
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const v4, 0x7f0200ad

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2
.end method

.method public checkFilpFont()V
    .locals 5

    .prologue
    .line 177
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sonymobile.styledfontsetting"

    const-string v4, "com.sonymobile.styledfontsetting.FontListActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 181
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 182
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mIsUseFont:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mIsUseFont:Z

    goto :goto_0
.end method

.method public end()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 301
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "text_color"

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "text_port_size"

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "text_land_size"

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "text_font"

    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 310
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 312
    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    .line 314
    :cond_0
    return-void
.end method

.method public getTextProperty()Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    return-object v0
.end method

.method public notifyToolbarChanged()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-interface {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;->onToolbarChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 833
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x0

    .line 796
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 797
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 799
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 800
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    .line 801
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->recreateDialog()V

    .line 803
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v1, 0x0

    .line 837
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 838
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 840
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 841
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mDialog:Landroid/app/Dialog;

    .line 842
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->recreateDialog()V

    .line 844
    :cond_0
    return-void
.end method

.method public onTextPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 9
    .param p1, "newValues"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-wide v4, 0x3f50624dd2f1a9fcL

    .line 263
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 264
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFont:I

    .line 265
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSize:F

    .line 266
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSize:F

    .line 267
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColor:I

    .line 268
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->set(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 270
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mContext:Landroid/content/Context;

    iget v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    invoke-static {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 273
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    if-nez v1, :cond_4

    .line 274
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 283
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mColorBtn:Landroid/widget/Button;

    iget v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 286
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 287
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v2, v2, v8

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_2

    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v2, v2, v8

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-gez v1, :cond_7

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 298
    :cond_3
    :goto_1
    return-void

    .line 275
    :cond_4
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    if-ne v1, v6, :cond_5

    .line 276
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 277
    :cond_5
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    if-ne v1, v7, :cond_6

    .line 278
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 279
    :cond_6
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mFontBtn:Landroid/widget/Button;

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 290
    :cond_7
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v2, v2, v6

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_8

    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v2, v2, v6

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-gez v1, :cond_9

    .line 292
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 293
    :cond_9
    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPortSizeArray:[F

    aget v2, v2, v7

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-ltz v1, :cond_a

    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mLandSizeArray:[F

    aget v2, v2, v7

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v4

    if-gez v1, :cond_3

    .line 295
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mSizeBtn:Landroid/widget/ImageView;

    const v2, 0x7f0200ad

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method public setOnToolbarChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mListener:Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;

    .line 827
    return-void
.end method

.method public setPhotoBounds(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/RectF;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->mPhotoBounds:Landroid/graphics/RectF;

    .line 880
    return-void
.end method
