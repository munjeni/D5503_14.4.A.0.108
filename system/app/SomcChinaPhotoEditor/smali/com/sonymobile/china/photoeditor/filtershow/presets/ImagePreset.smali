.class public Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
.super Ljava/lang/Object;
.source "ImagePreset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset$FullRotate;
    }
.end annotation


# instance fields
.field private mBitmapBeforeApply:Landroid/graphics/Bitmap;

.field private mDecorationFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mDoApplyBorder:Z

.field private mDoApplyDecorationFilters:Z

.field private mDoApplyFilters:Z

.field private mDoApplyGeometry:Z

.field private mDoApplyStyles:Z

.field private mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

.field private mFaceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;"
        }
    .end annotation
.end field

.field private mFilters:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

.field private mHistoryName:Ljava/lang/String;

.field private mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

.field private mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

.field protected mIsFxPreset:Z

.field private mIsHighQuality:Z

.field private mIsStyleSmallFilter:Z

.field protected mName:Ljava/lang/String;

.field private mScaleFactor:F

.field private mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 53
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 55
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 57
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 59
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    .line 65
    const-string v0, "Original"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 67
    const-string v0, "Original"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 69
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 71
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 73
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 75
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    .line 77
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyBorder:Z

    .line 78
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 80
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 82
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 88
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setup()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 6
    .param p1, "source"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 53
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 55
    const/high16 v2, 0x3f800000

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 57
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 59
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 61
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 63
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    .line 65
    const-string v2, "Original"

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 67
    const-string v2, "Original"

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 69
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 71
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 73
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 75
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    .line 77
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyBorder:Z

    .line 78
    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 80
    iput-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 82
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 88
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    .line 115
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->set(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 117
    :try_start_0
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 120
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 121
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 122
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 123
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->add(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 126
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->clone()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 127
    .restart local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 128
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->add(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 130
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v1    # "i":I
    :catch_0
    move-exception v2

    .line 135
    :cond_2
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->isFx()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 138
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->getImageLoader()Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 139
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 140
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 141
    iget-object v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    .line 143
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "historyName"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 109
    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "historyName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 53
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 55
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 57
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 59
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    .line 65
    const-string v0, "Original"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 67
    const-string v0, "Original"

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 69
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 71
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 73
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 75
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    .line 77
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyBorder:Z

    .line 78
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 80
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 82
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 88
    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    .line 103
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setup()V

    .line 105
    return-void
.end method

.method private mapFaceRects(Landroid/graphics/Bitmap;F)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "scale"    # F

    .prologue
    .line 480
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getAllFaceRects()Ljava/util/ArrayList;

    move-result-object v0

    .line 481
    .local v0, "allFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 488
    .local v1, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 491
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v8, "selectedIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 493
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 494
    .local v6, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    invoke-virtual {v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->isSelected()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 495
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    .end local v6    # "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_1
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getActivity()Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getBaseFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v10

    invoke-static {v9, p1, p2, v10}, Lcom/sonymobile/china/photoeditor/util/StyleUtil;->detectFaces(Landroid/content/Context;Landroid/graphics/Bitmap;F[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Ljava/util/ArrayList;

    move-result-object v2

    .line 502
    .local v2, "facesInNewBmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    new-instance v7, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset$2;

    invoke-direct {v7, p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 509
    .local v7, "newComp":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 510
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 511
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 512
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 513
    .local v5, "index":Ljava/lang/Integer;
    iget-object v9, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 516
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "index":Ljava/lang/Integer;
    :cond_2
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 518
    :cond_3
    return-void
.end method

.method private setBorder(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 218
    return-void
.end method


# virtual methods
.method public add(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V
    .locals 6
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .param p2, "needGeoData"    # Z

    .prologue
    const/4 v5, 0x2

    .line 345
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 346
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setBorder(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V

    .line 388
    :cond_0
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 389
    return-void

    .line 348
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    if-ne v3, v5, :cond_5

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 351
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v2

    .line 352
    .local v2, "type":B
    if-eqz v0, :cond_3

    .line 353
    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 350
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 358
    :cond_3
    if-ne v2, v5, :cond_2

    .line 359
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 360
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 361
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    goto :goto_2

    .line 365
    .end local v2    # "type":B
    :cond_4
    if-nez v0, :cond_0

    .line 366
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto :goto_0

    .line 369
    .end local v0    # "found":Z
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_6

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_6

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_8

    .line 372
    :cond_6
    if-eqz p2, :cond_7

    .line 373
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setLocalGeoData(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 375
    :cond_7
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    goto :goto_0

    .line 378
    :cond_8
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    .line 379
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 380
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 382
    :cond_9
    if-eqz p2, :cond_a

    .line 383
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setLocalGeoData(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 385
    :cond_a
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setHistoryName(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected addFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V
    .locals 1
    .param p1, "imageFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public apply(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "original"    # Landroid/graphics/Bitmap;

    .prologue
    .line 412
    move-object v0, p1

    .line 414
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    instance-of v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v4, :cond_7

    .line 416
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapSmall()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    .line 420
    :goto_0
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    if-eqz v4, :cond_0

    .line 421
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getSmallFaceRects()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 424
    :cond_0
    const/high16 v3, 0x3f800000

    .line 425
    .local v3, "scale":F
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 430
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_2

    .line 433
    invoke-direct {p0, v0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mapFaceRects(Landroid/graphics/Bitmap;F)V

    .line 435
    :cond_2
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 436
    :cond_3
    invoke-static {}, Lcom/sonymobile/china/photoeditor/PhotoEditorApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getActivity()Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getBaseFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v5

    invoke-static {v4, v0, v3, v5}, Lcom/sonymobile/china/photoeditor/util/StyleUtil;->detectFaces(Landroid/content/Context;Landroid/graphics/Bitmap;F[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    .line 441
    :cond_4
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v4, :cond_6

    .line 442
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    instance-of v4, v4, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;

    if-eqz v4, :cond_5

    .line 443
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    check-cast v4, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual {v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;->setFaceRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    .line 446
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v4, v0, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 450
    :cond_6
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    if-eqz v4, :cond_8

    .line 451
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 452
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 453
    .local v1, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v1, v0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 418
    .end local v1    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v2    # "i":I
    .end local v3    # "scale":F
    :cond_7
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 457
    .restart local v3    # "scale":F
    :cond_8
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v4, :cond_9

    .line 458
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v4, v0, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 461
    :cond_9
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v4, :cond_a

    .line 462
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 463
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 464
    .restart local v1    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    iget v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v1, v0, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 468
    .end local v1    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v2    # "i":I
    :cond_a
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyBorder:Z

    if-eqz v4, :cond_b

    .line 469
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iget v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    iget-boolean v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    invoke-virtual {v4, v0, v5, v6}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->apply(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 472
    :cond_b
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v4, :cond_c

    .line 473
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v4, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateFilteredImage(Landroid/graphics/Bitmap;)V

    .line 476
    :cond_c
    return-object v0
.end method

.method public fillImageStateAdapter(Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;)V
    .locals 1
    .param p1, "imageStateAdapter"    # Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;->clear()V

    .line 525
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;->addAll(Ljava/util/Collection;)V

    .line 526
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getBitmapBeforeApply()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mBitmapBeforeApply:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 392
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 393
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 394
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :goto_1
    return-object v0

    .line 392
    .restart local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getImageLoader()Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 530
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    return v0
.end method

.method public hasModifications()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 168
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v2

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 175
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 176
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 181
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 183
    .restart local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 188
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-nez v3, :cond_0

    .line 191
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasStyle()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public historyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    return-object v0
.end method

.method public isFx()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    return v0
.end method

.method public isHighQuality()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    return v0
.end method

.method public isPanoramaSafe()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 195
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v2

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->hasModifications()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 202
    .local v0, "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getFilterType()B

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->isNil()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 209
    .end local v0    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isSmallStyle()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public same(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z
    .locals 7
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 246
    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v6

    .line 249
    :cond_1
    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 252
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    iget-boolean v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-ne v3, v4, :cond_0

    .line 260
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    :cond_2
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-ne v3, v4, :cond_0

    .line 268
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-nez v3, :cond_0

    .line 272
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageBorder:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    :cond_5
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    iget-boolean v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 277
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-nez v3, :cond_0

    .line 282
    :cond_6
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    if-eqz v3, :cond_8

    .line 283
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_7

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_7
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v3, :cond_a

    move v3, v5

    :goto_1
    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    if-eqz v4, :cond_b

    move v4, v5

    :goto_2
    xor-int/2addr v3, v4

    if-nez v3, :cond_0

    .line 290
    :cond_8
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    iget-boolean v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 291
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 296
    :cond_9
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    if-eqz v3, :cond_c

    .line 297
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 298
    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 299
    .local v0, "a":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 300
    .local v1, "b":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v0    # "a":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v1    # "b":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v2    # "i":I
    :cond_a
    move v3, v6

    .line 283
    goto :goto_1

    :cond_b
    move v4, v6

    goto :goto_2

    .line 306
    :cond_c
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    iget-boolean v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    xor-int/2addr v3, v4

    if-eqz v3, :cond_d

    .line 307
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 312
    :cond_d
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    if-eqz v3, :cond_e

    iget-boolean v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    if-eqz v3, :cond_e

    .line 313
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 314
    iget-object v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 315
    .restart local v0    # "a":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDecorationFilters:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 316
    .restart local v1    # "b":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->same(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 322
    .end local v0    # "a":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v1    # "b":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v2    # "i":I
    :cond_e
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 325
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 326
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    iget-object v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual {v3, v4}, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->same(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    move v6, v5

    .line 332
    goto/16 :goto_0
.end method

.method public setDoApplyBorder(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyBorder:Z

    .line 161
    return-void
.end method

.method public setDoApplyDecorationFilters(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyDecorationFilters:Z

    .line 156
    return-void
.end method

.method public setDoApplyFilters(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyFilters:Z

    .line 151
    return-void
.end method

.method public setDoApplyGeometry(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyGeometry:Z

    .line 147
    return-void
.end method

.method public setDoApplyStyles(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mDoApplyStyles:Z

    .line 165
    return-void
.end method

.method public setEndpoint(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 0
    .param p1, "image"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mEndPoint:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 408
    return-void
.end method

.method public setFaceRects(Ljava/util/ArrayList;Z)V
    .locals 1
    .param p2, "forceClear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    if-eqz p2, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 557
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 559
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 561
    :cond_1
    return-void
.end method

.method public setGeometry(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V
    .locals 1
    .param p1, "m"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->set(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 214
    return-void
.end method

.method public setHistoryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V
    .locals 0
    .param p1, "mImageLoader"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 243
    return-void
.end method

.method public setIsFx(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsFxPreset:Z

    .line 226
    return-void
.end method

.method public setIsHighQuality(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsHighQuality:Z

    .line 539
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mName:Ljava/lang/String;

    .line 230
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mHistoryName:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 542
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mScaleFactor:F

    .line 543
    return-void
.end method

.method public setStyleSmallFilterFlag(Z)V
    .locals 0
    .param p1, "isStyleSmallFilter"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mIsStyleSmallFilter:Z

    .line 547
    return-void
.end method

.method public setup()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method
