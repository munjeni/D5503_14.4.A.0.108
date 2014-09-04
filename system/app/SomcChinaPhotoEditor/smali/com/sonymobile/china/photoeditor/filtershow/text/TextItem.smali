.class public Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;
.super Ljava/lang/Object;
.source "TextItem.java"


# instance fields
.field public mBackgroundRes:I

.field public mH:I

.field public mRotation:F

.field public mRotationX:F

.field public mRotationY:F

.field public mScaleX:F

.field public mScaleY:F

.field public mText:[C

.field public mTextColor:I

.field public mTextFont:I

.field public mTextLandSize:F

.field public mTextPaddingBottom:I

.field public mTextPaddingLeft:I

.field public mTextPaddingRight:I

.field public mTextPaddingTop:I

.field public mTextPortSize:F

.field public mW:I

.field public mX:I

.field public mY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingLeft:I

    .line 19
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingTop:I

    .line 20
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingRight:I

    .line 21
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mTextPaddingBottom:I

    .line 22
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mScaleX:F

    .line 23
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mScaleY:F

    .line 24
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotation:F

    .line 25
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotationX:F

    .line 26
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextItem;->mRotationY:F

    return-void
.end method
