.class public Lcom/sonymobile/china/collage/grid/model/PaneData;
.super Ljava/lang/Object;
.source "PaneData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
    }
.end annotation


# static fields
.field private static sUniqueIdCounter:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDataType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

.field private mLeft:F

.field private mNeedAdjustLeftAndTopByDefault:Z

.field private mScaleFactor:F

.field private mTop:F

.field private final mUniqueId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "dataType"    # Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mScaleFactor:F

    .line 33
    iput v1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mLeft:F

    .line 39
    iput v1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mTop:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mNeedAdjustLeftAndTopByDefault:Z

    .line 54
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    iput-object p2, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mDataType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    .line 56
    sget v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mUniqueId:J

    .line 57
    sget v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;)V
    .locals 2
    .param p1, "dataType"    # Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mScaleFactor:F

    .line 33
    iput v1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mLeft:F

    .line 39
    iput v1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mTop:F

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mNeedAdjustLeftAndTopByDefault:Z

    .line 48
    sget v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mUniqueId:J

    .line 49
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mDataType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    .line 50
    sget v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    .line 51
    return-void
.end method

.method public static recycleId()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/china/collage/grid/model/PaneData;->sUniqueIdCounter:I

    .line 66
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDataType()Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mDataType:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mUniqueId:J

    return-wide v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mLeft:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mScaleFactor:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mTop:F

    return v0
.end method

.method public needUpdateDefaultLeftAndTop()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mNeedAdjustLeftAndTopByDefault:Z

    return v0
.end method

.method public setLeftAndTop(FFZ)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "updateByDefault"    # Z

    .prologue
    .line 97
    iput p1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mLeft:F

    .line 98
    iput p2, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mTop:F

    .line 99
    iput-boolean p3, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mNeedAdjustLeftAndTopByDefault:Z

    .line 100
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 81
    iput p1, p0, Lcom/sonymobile/china/collage/grid/model/PaneData;->mScaleFactor:F

    .line 82
    return-void
.end method
