.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
.super Landroid/view/View;
.source "ImageShow.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;,
        Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    }
.end annotation


# static fields
.field private static final TOUCH_SHOW_ORIGINAL_DELAY_MAX:J = 0x12cL

.field private static final TOUCH_SHOW_ORIGINAL_DELAY_MIN:J = 0xc8L

.field private static UNVEIL_HORIZONTAL:I

.field private static UNVEIL_VERTICAL:I

.field private static final USE_BACKGROUND_IMAGE:Z

.field private static final USE_SLIDER_GESTURE:Z

.field private static mBackgroundColor:I

.field private static mOriginalText:Ljava/lang/String;

.field private static mOriginalTextMargin:I

.field private static mOriginalTextSize:I

.field static mTextPadding:I

.field static mTextSize:I


# instance fields
.field protected mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

.field private mBackgroundImage:Landroid/graphics/Bitmap;

.field private mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

.field private mCurrentFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

.field private mDirtyGeometry:Z

.field protected mFaceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mFilteredImage:Landroid/graphics/Bitmap;

.field private mFiltersOnlyImage:Landroid/graphics/Bitmap;

.field private mGeometryOnlyImage:Landroid/graphics/Bitmap;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

.field protected mImageBounds:Landroid/graphics/Rect;

.field protected mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

.field protected mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

.field protected mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

.field protected mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

.field private mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

.field private mImportantToast:Z

.field protected mIsStamp:Z

.field private mOnImageBoundsChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

.field protected mPaint:Landroid/graphics/Paint;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mShowControls:Z

.field protected mShowFaceRects:Z

.field private mShowOriginal:Z

.field private mShowOriginalDirection:I

.field private mShowToast:Z

.field protected mSliderController:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;

.field protected mSmallFaceRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;"
        }
    .end annotation
.end field

.field protected mStyleEnabled:Z

.field private final mTextRect:Landroid/graphics/Rect;

.field private mToast:Ljava/lang/String;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field protected mTouchShowOriginal:Z

.field private mTouchShowOriginalDate:J

.field protected mTouchX:F

.field protected mTouchY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x18

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 66
    const/16 v0, 0x14

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 84
    const/high16 v0, -0x10000

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 115
    const/4 v0, 0x1

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    .line 117
    const/4 v0, 0x2

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    .line 127
    const/16 v0, 0x8

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 129
    const/16 v0, 0x1a

    sput v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 131
    const-string v0, "Original"

    sput-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 388
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 68
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 70
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 72
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 74
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 76
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 78
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 80
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 86
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 88
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 90
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 95
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSliderController:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;

    .line 97
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 99
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 101
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 105
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 113
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 119
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 121
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 123
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 125
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 141
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 143
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 145
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 149
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 151
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 153
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .line 155
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 157
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOnImageBoundsChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    .line 162
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    .line 164
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mIsStamp:Z

    .line 176
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mStyleEnabled:Z

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextRect:Landroid/graphics/Rect;

    .line 392
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    const v1, 0x7f030005

    const v2, 0x7f0c0085

    invoke-direct {v0, p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 394
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 395
    check-cast p1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 396
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 376
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    .line 68
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 70
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 72
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 74
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 76
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 78
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 80
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mBackgroundImage:Landroid/graphics/Bitmap;

    .line 86
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 88
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 90
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 95
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSliderController:Lcom/sonymobile/china/photoeditor/filtershow/ui/SliderController;

    .line 97
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 99
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 101
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 105
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 113
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 119
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 121
    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 123
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 125
    iput v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 141
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 143
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 145
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 147
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 149
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 151
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 153
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .line 155
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 157
    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOnImageBoundsChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    .line 162
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    .line 164
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mIsStamp:Z

    .line 176
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mStyleEnabled:Z

    .line 271
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextRect:Landroid/graphics/Rect;

    .line 380
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    const v1, 0x7f030005

    const v2, 0x7f0c0085

    invoke-direct {v0, p1, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 382
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    const v1, 0x7f030006

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    .line 383
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setupGestureDetector(Landroid/content/Context;)V

    .line 384
    check-cast p1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .line 385
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .param p1, "x1"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowToast:Z

    return p1
.end method

.method private imageSizeChanged(Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 765
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v5

    if-nez v5, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 769
    .local v4, "w":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v1, v5

    .line 770
    .local v1, "h":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v0, v5, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .line 771
    .local v0, "geo":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 772
    .local v2, "pb":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v5, v4, v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v5, v1, v5

    if-eqz v5, :cond_0

    .line 775
    :cond_2
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, v4, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 776
    .local v3, "r":Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 777
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v5

    iget-object v5, v5, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v5, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setCropBounds(Landroid/graphics/RectF;)V

    .line 778
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setDirtyGeometryFlag()V

    goto :goto_0
.end method

.method private parameterToUI(IIII)I
    .locals 2
    .param p1, "parameter"    # I
    .param p2, "minp"    # I
    .param p3, "maxp"    # I
    .param p4, "uimax"    # I

    .prologue
    .line 296
    sub-int v0, p1, p2

    mul-int/2addr v0, p4

    sub-int v1, p3, p2

    div-int/2addr v0, v1

    return v0
.end method

.method public static setDefaultBackgroundColor(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 244
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    .line 245
    return-void
.end method

.method private setDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 753
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 754
    return-void
.end method

.method public static setOriginalText(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    sput-object p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public static setOriginalTextMargin(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 260
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    .line 261
    return-void
.end method

.method public static setOriginalTextSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 264
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    .line 265
    return-void
.end method

.method public static setTextPadding(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 256
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextPadding:I

    .line 257
    return-void
.end method

.method public static setTextSize(I)V
    .locals 0
    .param p0, "value"    # I

    .prologue
    .line 252
    sput p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextSize:I

    .line 253
    return-void
.end method

.method private uiToParameter(IIII)I
    .locals 1
    .param p1, "ui"    # I
    .param p2, "minp"    # I
    .param p3, "maxp"    # I
    .param p4, "uimax"    # I

    .prologue
    .line 300
    sub-int v0, p3, p2

    mul-int/2addr v0, p1

    div-int/2addr v0, p4

    add-int/2addr v0, p2

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 1275
    return-void
.end method

.method protected clearDirtyGeometryFlag()V
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    .line 758
    return-void
.end method

.method public defaultDrawImage(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 488
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getGeometryOnlyImage()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 489
    return-void
.end method

.method public detect()V
    .locals 6

    .prologue
    .line 1234
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mStyleEnabled:Z

    if-nez v4, :cond_1

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1237
    :cond_1
    const/4 v0, 0x0

    .line 1238
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v4, :cond_2

    .line 1239
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->getBitmapBeforeApply()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1241
    :cond_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1245
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1246
    .local v1, "bitmapLarge":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1247
    .local v3, "scale":F
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getBaseFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v5

    invoke-static {v4, v0, v3, v5}, Lcom/sonymobile/china/photoeditor/util/StyleUtil;->detectFaces(Landroid/content/Context;Landroid/graphics/Bitmap;F[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1249
    .local v2, "faceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setAllFaceRectItem(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 691
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 693
    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    const/high16 v11, 0x40000000

    .line 608
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 609
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 611
    .local v2, "s":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7, v8, v9, v10}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMath;->scale(FFFF)F

    move-result v3

    .line 614
    .local v3, "scale":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v7, v3

    .line 615
    .local v6, "w":F
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v1, v7, v3

    .line 616
    .local v1, "h":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v11

    .line 617
    .local v5, "ty":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    div-float v4, v7, v11

    .line 619
    .local v4, "tx":F
    new-instance v0, Landroid/graphics/Rect;

    float-to-int v7, v4

    float-to-int v8, v5

    add-float v9, v6, v4

    float-to-int v9, v9

    add-float v10, v1, v5

    float-to-int v10, v10

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 620
    .local v0, "d":Landroid/graphics/Rect;
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    .line 621
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 622
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOnImageBoundsChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

    if-eqz v7, :cond_0

    .line 623
    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOnImageBoundsChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

    invoke-interface {v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;->onImageBoundsChanged()V

    .line 626
    .end local v0    # "d":Landroid/graphics/Rect;
    .end local v1    # "h":F
    .end local v2    # "s":Landroid/graphics/Rect;
    .end local v3    # "scale":F
    .end local v4    # "tx":F
    .end local v5    # "ty":F
    .end local v6    # "w":F
    :cond_0
    return-void
.end method

.method public drawPartialImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v10, -0x1000000

    const/high16 v4, 0x3f800000

    .line 629
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-nez v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 632
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 633
    if-eqz p2, :cond_2

    .line 634
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    if-nez v0, :cond_1

    .line 635
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownY:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 636
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 642
    :cond_1
    :goto_1
    const/4 v8, 0x0

    .line 643
    .local v8, "px":I
    const/4 v9, 0x0

    .line 644
    .local v9, "py":I
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_4

    .line 645
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 646
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v9, v0

    .line 652
    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v8

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v9

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 654
    .local v7, "d":Landroid/graphics/Rect;
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 656
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 657
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->UNVEIL_VERTICAL:I

    if-ne v0, v1, :cond_5

    .line 660
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float v2, v0, v4

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    sub-float v4, v0, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 667
    :goto_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 668
    .local v6, "bounds":Landroid/graphics/Rect;
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextSize:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 669
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v0, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 670
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 671
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 673
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    sget-object v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOriginalTextMargin:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 677
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "d":Landroid/graphics/Rect;
    .end local v8    # "px":I
    .end local v9    # "py":I
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 638
    :cond_3
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->UNVEIL_HORIZONTAL:I

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    goto/16 :goto_1

    .line 648
    .restart local v8    # "px":I
    .restart local v9    # "py":I
    :cond_4
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v8, v0

    .line 649
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto/16 :goto_2

    .line 663
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "d":Landroid/graphics/Rect;
    :cond_5
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float v1, v0, v4

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    sub-float v3, v0, v4

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method public drawToast(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    .line 463
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowToast:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 464
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 465
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v4, 0x43000000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 466
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 467
    .local v1, "textWidth":F
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 468
    .local v2, "toastX":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40400000

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 470
    .local v3, "toastY":I
    invoke-virtual {v0, v7, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 471
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 472
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 473
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, -0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 474
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 475
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 476
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    add-int/lit8 v6, v3, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 477
    iget-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImportantToast:Z

    if-eqz v4, :cond_1

    .line 478
    const/16 v4, 0xc8

    invoke-virtual {v0, v7, v4, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 482
    :goto_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {p1, v4, v5, v6, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 484
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v1    # "textWidth":F
    .end local v2    # "toastX":I
    .end local v3    # "toastY":I
    :cond_0
    return-void

    .line 480
    .restart local v0    # "paint":Landroid/graphics/Paint;
    .restart local v1    # "textWidth":F
    .restart local v2    # "toastX":I
    .restart local v3    # "toastY":I
    :cond_1
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto :goto_0
.end method

.method public enableStyle(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1278
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mStyleEnabled:Z

    .line 1279
    return-void
.end method

.method public getActivity()Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    return-object v0
.end method

.method public getAllFaceRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    return-object v0
.end method

.method public getDefaultBackgroundColor()I
    .locals 1

    .prologue
    .line 248
    sget v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mBackgroundColor:I

    return v0
.end method

.method protected getDirtyGeometryFlag()Z
    .locals 1

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mDirtyGeometry:Z

    return v0
.end method

.method public getDisplayedImageBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFaceRect()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1262
    .local v2, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 1263
    .local v1, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1264
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1267
    .end local v1    # "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_1
    return-object v2
.end method

.method public getFilteredImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFiltersOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getGeometry()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    return-object v0
.end method

.method public getGeometryOnlyImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    return-object v0
.end method

.method public getImageBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 449
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 450
    .local v0, "dst":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    iget-object v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getPhotoBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 451
    return-object v0
.end method

.method public getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    return-object v0
.end method

.method public getImageRotation()F
    .locals 1

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getRotation()F

    move-result v0

    return v0
.end method

.method public getImageRotationZoomFactor()F
    .locals 1

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->getScaleFactor()F

    move-result v0

    return v0
.end method

.method public getImageStateAdapter()Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    return-object v0
.end method

.method public getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    return-object v0
.end method

.method public getSmallFaceRects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSmallFaceRects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasModifications()Z
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 323
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->hasModifications()Z

    move-result v0

    goto :goto_0
.end method

.method public imageLoaded()V
    .locals 0

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImage()V

    .line 798
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 799
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 957
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 963
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x0

    .line 493
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->drawBackground(Landroid/graphics/Canvas;)V

    .line 494
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->requestFilteredImages()V

    .line 495
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->defaultDrawImage(Landroid/graphics/Canvas;)V

    .line 497
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 499
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 501
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v1

    sget v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextSize:I

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextPadding:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 502
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 503
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 504
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->name()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000

    sget v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTextPadding:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->drawToast(Landroid/graphics/Canvas;)V

    .line 518
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "startEvent"    # Landroid/view/MotionEvent;
    .param p2, "endEvent"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    const-wide/16 v4, 0x12c

    .line 980
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/util/BidiHelper;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 981
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 986
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 989
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 1005
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 993
    :cond_4
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 998
    :cond_6
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 1001
    :cond_7
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    goto :goto_0
.end method

.method public onItemClick(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 895
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V

    .line 897
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->setCurrentPreset(I)V

    .line 898
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1010
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1011
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1012
    .local v4, "y":F
    const/4 v1, 0x0

    .line 1013
    .local v1, "isInFace":Z
    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    if-eqz v5, :cond_1

    .line 1014
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 1015
    .local v2, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsShown:Z
    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->access$300(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1017
    const/4 v1, 0x1

    goto :goto_0

    .line 1021
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_1
    if-nez v1, :cond_2

    iget-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mIsStamp:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    .line 1026
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 1028
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 1029
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 1030
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 1031
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 404
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 405
    .local v1, "parentWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 406
    .local v0, "parentHeight":I
    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setMeasuredDimension(II)V

    .line 411
    return-void
.end method

.method public onNewValue(I)V
    .locals 4
    .param p1, "parameter"    # I

    .prologue
    .line 346
    const/16 v0, 0x64

    .line 347
    .local v0, "maxp":I
    const/16 v1, -0x64

    .line 348
    .local v1, "minp":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 351
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->resetImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 355
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;)V

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->onNewValue(I)V

    .line 360
    :cond_2
    invoke-virtual {p0, p1, v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateSeekBar(III)V

    .line 361
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 362
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "arg0"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "arg2"    # Z

    .prologue
    .line 932
    move v2, p2

    .line 933
    .local v2, "parameter":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 934
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 935
    .local v0, "maxp":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 936
    .local v1, "minp":I
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-direct {p0, p2, v1, v0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->uiToParameter(IIII)I

    move-result v2

    .line 939
    .end local v0    # "maxp":I
    .end local v1    # "minp":I
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 940
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;
    .param p2, "arg1"    # Landroid/view/MotionEvent;
    .param p3, "arg2"    # F
    .param p4, "arg3"    # F

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1043
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 969
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 1048
    const/4 v0, 0x0

    return v0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 946
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 952
    return-void
.end method

.method public onTouchDown(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 367
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 368
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 369
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 822
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 826
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 829
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 830
    .local v0, "ex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 831
    .local v1, "ey":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 832
    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 833
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    .line 843
    iput v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginalDirection:I

    .line 845
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 846
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 847
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 848
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mIsStamp:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mActivity:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isShowingHistoryPanel()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginalDate:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 852
    iput-boolean v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 855
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 856
    iput-boolean v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchShowOriginal:Z

    .line 857
    iput v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownX:I

    .line 858
    iput v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchDownY:I

    .line 859
    iput v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchX:F

    .line 860
    iput v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mTouchY:F

    .line 880
    :cond_3
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 881
    return v7
.end method

.method public onTouchUp()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public requestFilteredImages()V
    .locals 4

    .prologue
    .line 564
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    if-eqz v1, :cond_3

    .line 565
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 567
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 568
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 571
    :cond_0
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 574
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 575
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_2

    .line 576
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 578
    if-eqz v0, :cond_2

    .line 579
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 582
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v1, :cond_3

    .line 583
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showHires()Z

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_3

    .line 585
    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    .line 590
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    if-eqz v1, :cond_4

    .line 591
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 593
    :cond_4
    return-void
.end method

.method public resetImageCaches(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V
    .locals 1
    .param p1, "caller"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    goto :goto_0
.end method

.method public resetParameter()V
    .locals 2

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v0

    .line 328
    .local v0, "currentFilter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getDefaultParameter()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onNewValue(I)V

    .line 334
    :cond_0
    return-void
.end method

.method public saveImage(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->saveImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V

    .line 818
    return-void
.end method

.method public select()V
    .locals 4

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getParameter()I

    move-result v2

    .line 286
    .local v2, "parameter":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getMaxParameter()I

    move-result v0

    .line 287
    .local v0, "maxp":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getCurrentFilter()Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getMinParameter()I

    move-result v1

    .line 288
    .local v1, "minp":I
    invoke-virtual {p0, v2, v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateSeekBar(III)V

    .line 290
    .end local v0    # "maxp":I
    .end local v1    # "minp":I
    .end local v2    # "parameter":I
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v3, :cond_1

    .line 291
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 293
    :cond_1
    return-void
.end method

.method public setAdapter(Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .prologue
    .line 426
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    .line 427
    return-void
.end method

.method public setAllFaceRectItem(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1292
    .local p1, "faceRects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 1293
    .local v0, "faceRect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    invoke-direct {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;-><init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1295
    .end local v0    # "faceRect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1296
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    .line 1298
    :cond_1
    return-void
.end method

.method public setCurrentFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)V
    .locals 0
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mCurrentFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 419
    return-void
.end method

.method public setFaceRects(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "rects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1053
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 1054
    .local v0, "faceRect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    invoke-direct {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;-><init>(Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1056
    .end local v0    # "faceRect":Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1057
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    .line 1059
    :cond_1
    return-void
.end method

.method public setFaceRectsVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1253
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    .line 1254
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowFaceRects:Z

    .line 1257
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 1258
    return-void
.end method

.method public setGeometry(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V
    .locals 1
    .param p1, "d"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->set(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;)V

    .line 139
    return-void
.end method

.method public setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 744
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->addListener(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 746
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 750
    :cond_0
    return-void
.end method

.method public setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 1
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    .line 722
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V

    .line 723
    return-void
.end method

.method public setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V
    .locals 2
    .param p1, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .param p2, "addToHistory"    # Z

    .prologue
    .line 727
    if-nez p1, :cond_0

    .line 740
    :goto_0
    return-void

    .line 730
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 731
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 732
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImagePresets(Z)V

    .line 733
    if-eqz p2, :cond_1

    .line 734
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHistoryAdapter:Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->addHistoryItem(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 736
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setEndpoint(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 737
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImage()V

    .line 738
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImagePreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageStateAdapter:Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->fillImageStateAdapter(Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;)V

    .line 739
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_0
.end method

.method public setImageRotation(F)V
    .locals 1
    .param p1, "r"    # F

    .prologue
    .line 914
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setRotation(F)V

    .line 915
    return-void
.end method

.method public setImageRotation(FF)V
    .locals 2
    .param p1, "imageRotation"    # F
    .param p2, "imageRotationZoomFactor"    # F

    .prologue
    .line 922
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImageRotation()F

    move-result v0

    .line 923
    .local v0, "r":F
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 926
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImageRotation(F)V

    .line 927
    invoke-virtual {p0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImageRotationZoomFactor(F)V

    .line 928
    return-void
.end method

.method public setImageRotationZoomFactor(F)V
    .locals 1
    .param p1, "f"    # F

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->mGeoData:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/GeometryMetadata;->setScaleFactor(F)V

    .line 919
    return-void
.end method

.method public setOnImageBoundsChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mOnImageBoundsChangedListener:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;

    .line 281
    return-void
.end method

.method public setPanelController(Lcom/sonymobile/china/photoeditor/filtershow/PanelController;)V
    .locals 0
    .param p1, "controller"    # Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .line 338
    return-void
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    .line 415
    return-void
.end method

.method public setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 696
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowControls:Z

    .line 697
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowControls:Z

    if-eqz v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 706
    :cond_0
    :goto_0
    return-object p0

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStampVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1282
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mIsStamp:Z

    .line 1283
    return-void
.end method

.method public setupGestureDetector(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGestureDetector:Landroid/view/GestureDetector;

    .line 400
    return-void
.end method

.method public showControls()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowControls:Z

    return v0
.end method

.method public showHires()Z
    .locals 1

    .prologue
    .line 714
    const/4 v0, 0x1

    return v0
.end method

.method public showOriginal(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowOriginal:Z

    .line 902
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 903
    return-void
.end method

.method public showTitle()Z
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 430
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showToast(Ljava/lang/String;Z)V

    .line 431
    return-void
.end method

.method public showToast(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "important"    # Z

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mToast:Ljava/lang/String;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mShowToast:Z

    .line 436
    iput-boolean p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImportantToast:Z

    .line 437
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 439
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    return-void
.end method

.method public unselect()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public updateFilteredImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFilteredImage:Landroid/graphics/Bitmap;

    .line 803
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->detect()V

    .line 808
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->isProcessDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->getCurrentImage()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-result-object v0

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageGeometry;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->cancelProcessDialog()V

    .line 814
    :cond_0
    return-void
.end method

.method public updateGeometryFlags()Z
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    return v0
.end method

.method public updateImage()V
    .locals 2

    .prologue
    .line 786
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateGeometryFlags()Z

    move-result v1

    if-nez v1, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 789
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 790
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 791
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->imageSizeChanged(Landroid/graphics/Bitmap;)V

    .line 792
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    goto :goto_0
.end method

.method public updateImagePresets(Z)V
    .locals 9
    .param p1, "force"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 528
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v4

    .line 529
    .local v4, "preset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    if-nez v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFaceRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 534
    .local v1, "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mIsSelected:Z
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->access$100(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 535
    # getter for: Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->mFaceRect:Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    invoke-static {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->access$200(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 538
    .end local v1    # "item":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    :cond_3
    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setFaceRects(Ljava/util/ArrayList;Z)V

    .line 539
    if-eqz p1, :cond_4

    .line 540
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->resetImageForPreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 542
    :cond_4
    if-nez p1, :cond_5

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-nez v5, :cond_7

    .line 543
    :cond_5
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 544
    .local v3, "newPreset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-virtual {v3, v7}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setDoApplyFilters(Z)V

    .line 545
    invoke-virtual {v3, v7}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setDoApplyDecorationFilters(Z)V

    .line 546
    invoke-virtual {v3, v7}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setDoApplyBorder(Z)V

    .line 547
    invoke-virtual {v3, v7}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setDoApplyStyles(Z)V

    .line 548
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v3, v5}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->same(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 549
    :cond_6
    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageGeometryOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 550
    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mGeometryOnlyImage:Landroid/graphics/Bitmap;

    .line 553
    .end local v3    # "newPreset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    :cond_7
    if-nez p1, :cond_8

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-nez v5, :cond_0

    .line 554
    :cond_8
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 555
    .restart local v3    # "newPreset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-virtual {v3, v7}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setDoApplyGeometry(Z)V

    .line 556
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v3, v5}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->same(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 557
    :cond_9
    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mImageFiltersOnlyPreset:Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 558
    iput-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mFiltersOnlyImage:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updateSeekBar(III)V
    .locals 3
    .param p1, "parameter"    # I
    .param p2, "minp"    # I
    .param p3, "maxp"    # I

    .prologue
    .line 304
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    if-nez v2, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    .line 308
    .local v1, "seekMax":I
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->parameterToUI(IIII)I

    move-result v0

    .line 309
    .local v0, "progress":I
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 310
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getPanelController()Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->onNewValue(I)V

    goto :goto_0
.end method
