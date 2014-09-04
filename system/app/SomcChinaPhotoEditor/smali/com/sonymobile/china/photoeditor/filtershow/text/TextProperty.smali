.class public Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
.super Ljava/lang/Object;
.source "TextProperty.java"


# instance fields
.field public mColor:I

.field public mFont:I

.field public mLandSize:F

.field public mPortSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    .line 16
    const/high16 v0, 0x42100000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    .line 17
    const/high16 v0, 0x41980000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    .line 19
    return-void
.end method

.method public constructor <init>(IFFI)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "portSize"    # F
    .param p3, "landSize"    # F
    .param p4, "font"    # I

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    .line 23
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    .line 24
    iput p3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    .line 25
    iput p4, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    .line 26
    return-void
.end method


# virtual methods
.method public set(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 1
    .param p1, "newValues"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 29
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    .line 30
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    .line 31
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    .line 32
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    .line 33
    return-void
.end method
