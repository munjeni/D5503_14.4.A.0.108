.class public Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
.super Landroid/app/Activity;
.source "FilterShowActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;
.implements Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;
.implements Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;
.implements Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;
.implements Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$9;,
        Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;
    }
.end annotation


# static fields
.field protected static final ANIMATE_PANELS:Z = true

.field public static final CROP_ACTION:Ljava/lang/String; = "com.android.camera.action.EDITOR_CROP"

.field private static final DEFAULT_DOODLE_COLOR_INDEX:I = 0x4

.field public static final LAUNCH_FULLSCREEN:Ljava/lang/String; = "launch-fullscreen"

.field private static final SEEK_BAR_MAX:I = 0x258

.field private static final SELECT_PICTURE:I = 0x1

.field public static final TINY_PLANET_ACTION:Ljava/lang/String; = "com.android.camera.action.TINY_PLANET"


# instance fields
.field private isDoodleAdded:Z

.field private isStampAdded:Z

.field private isTextAdded:Z

.field private mBaseFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

.field private mBitmapScale:F

.field private mBorderButton:Landroid/widget/Button;

.field private final mBottomPanelButtons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mCollageBtnClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

.field private mCurrentStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

.field private mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

.field private mDoodleButton:Landroid/widget/Button;

.field private mDoodleColorSeekBar:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

.field private mDoodleToolbar:Landroid/view/View;

.field private mFilterButton:Landroid/widget/Button;

.field private mGeometryButton:Landroid/widget/Button;

.field private mHistoryButton:Landroid/widget/ImageButton;

.field private mImageBorders:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

.field private mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

.field private mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

.field private mImageFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

.field private mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

.field private mImageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

.field private mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

.field private mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

.field private mImageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

.field private mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

.field private final mImageViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

.field private mListBorders:Landroid/view/View;

.field private mListFilter:Landroid/view/View;

.field private mListFilterButtons:Landroid/view/View;

.field private mListGeometry:Landroid/view/View;

.field private mListStamps:Landroid/view/View;

.field private mListStyle:Landroid/view/View;

.field private mListStyles:Landroid/widget/LinearLayout;

.field private final mListViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

.field private mNeedStyle:Z

.field private mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

.field private mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

.field private final mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

.field private mProcessBarCount:I

.field private mProcessDialog:Landroid/app/ProgressDialog;

.field private mRedoButton:Landroid/widget/ImageButton;

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveForCollage:Z

.field private mSavingProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingHistoryPanel:Z

.field private mShowingImageStatePanel:Z

.field private mStampsButton:Landroid/widget/Button;

.field private mStyleButton:Landroid/widget/Button;

.field private mTextButton:Landroid/widget/Button;

.field private mTextEditContainer:Landroid/view/View;

.field private mTextToolbar:Landroid/view/View;

.field private mUndoButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1257
    const-string v0, "jni_filtershow_cilters"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1258
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 141
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    .line 143
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 145
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 147
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageBorders:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

    .line 149
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    .line 151
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    .line 153
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    .line 155
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    .line 157
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

    .line 159
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    .line 161
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    .line 163
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 165
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 167
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStamps:Landroid/view/View;

    .line 169
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 171
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mFilterButton:Landroid/widget/Button;

    .line 173
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/Button;

    .line 175
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    .line 177
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStampsButton:Landroid/widget/Button;

    .line 179
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 185
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 187
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 189
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    .line 191
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    .line 193
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    .line 207
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    .line 209
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    .line 215
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    .line 217
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    .line 219
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    .line 239
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z

    .line 241
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyle:Landroid/view/View;

    .line 243
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    .line 247
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    .line 249
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 251
    iput-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 257
    iput v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    .line 259
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBitmapScale:F

    .line 506
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$2;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCollageBtnClickListener:Landroid/view/View$OnClickListener;

    .line 599
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mHistoryButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mUndoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mRedoButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getScreenImageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .param p1, "x1"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showToastAndFinish(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;)Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->onLoadImageComplete()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showSavingProgress()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    return-object v0
.end method

.method private callCollage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 574
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 576
    const-class v1, Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void
.end method

.method private createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1062
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$4;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$4;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    return-object v0
.end method

.method private detect()Ljava/util/ArrayList;
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
    .line 1503
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBitmapLarge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1504
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBitmapScale:F

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBaseFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-static {p0, v0, v2, v3}, Lcom/sonymobile/china/photoeditor/util/StyleUtil;->detectFaces(Landroid/content/Context;Landroid/graphics/Bitmap;F[Lcom/sonymobile/android/facebeauty/engine/FaceRect;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1506
    .local v1, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1507
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setBaseFaceRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V

    .line 1508
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    .line 1511
    :cond_0
    return-object v1
.end method

.method private fillListBorders(Landroid/widget/LinearLayout;)V
    .locals 14
    .param p1, "listBorders"    # Landroid/widget/LinearLayout;

    .prologue
    .line 828
    const/16 v12, 0xb

    new-array v9, v12, [I

    fill-array-data v9, :array_0

    .line 832
    .local v9, "recastIDs":[I
    const/16 v12, 0xb

    new-array v2, v12, [I

    fill-array-data v2, :array_1

    .line 838
    .local v2, "borderDrawableIds":[I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090044

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 839
    .local v10, "startPadding":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090045

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 840
    .local v3, "endPadding":I
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090046

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 841
    .local v7, "padding":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 843
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v10, v7, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 844
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v12, v9

    if-ge v5, v12, :cond_0

    .line 845
    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;

    invoke-direct {v4, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;-><init>(Landroid/content/Context;)V

    .line 846
    .local v4, "fView":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;
    aget v12, v9, v5

    invoke-virtual {p1, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 847
    .local v11, "v":Landroid/view/View;
    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 848
    .local v8, "pos":I
    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 849
    const/4 v1, 0x0

    .line 850
    .local v1, "border":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;

    .end local v1    # "border":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    aget v12, v2, v5

    invoke-direct {v1, v12}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterBorder;-><init>(I)V

    .line 851
    .restart local v1    # "border":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    aget v13, v2, v5

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 853
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 854
    invoke-virtual {v4, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->setIcon(Landroid/graphics/Bitmap;)V

    .line 855
    const/4 v12, 0x0

    invoke-virtual {v4, v1, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 856
    invoke-virtual {v4, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 857
    iget-object v12, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v4, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 858
    aget v12, v9, v5

    invoke-virtual {v4, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;->setId(I)V

    .line 859
    invoke-virtual {p1, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 844
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 861
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "border":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .end local v4    # "fView":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallBorder;
    .end local v8    # "pos":I
    .end local v11    # "v":Landroid/view/View;
    :cond_0
    return-void

    .line 828
    nop

    :array_0
    .array-data 4
        0x7f0c0051
        0x7f0c0052
        0x7f0c0053
        0x7f0c0054
        0x7f0c0055
        0x7f0c0056
        0x7f0c0057
        0x7f0c0058
        0x7f0c0059
        0x7f0c005a
        0x7f0c005b
    .end array-data

    .line 832
    :array_1
    .array-data 4
        0x7f0200ff
        0x7f0200f5
        0x7f0200f7
        0x7f0200f8
        0x7f0200f9
        0x7f0200fa
        0x7f0200fb
        0x7f0200fc
        0x7f0200fd
        0x7f0200fe
        0x7f0200f6
    .end array-data
.end method

.method private fillListImages(Landroid/widget/LinearLayout;)V
    .locals 16
    .param p1, "listFilters"    # Landroid/widget/LinearLayout;

    .prologue
    .line 756
    new-instance v9, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    const v12, 0x7f07001b

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Ljava/lang/String;)V

    .line 758
    .local v9, "preset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v9, v12}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090044

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 760
    .local v10, "startPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090045

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 761
    .local v2, "endPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090046

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 762
    .local v8, "padding":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v6, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 764
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v10, v8, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 765
    new-instance v12, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v12, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setType(I)V

    .line 769
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 772
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;

    const/4 v14, 0x0

    const v15, 0x7f070039

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 775
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v12, v13}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    const/16 v12, 0x10

    new-array v4, v12, [Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    const/4 v12, 0x0

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterCharlie;

    const v14, 0x7f07004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterCharlie;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPixy;

    const v14, 0x7f07004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPixy;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x2

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterKurt;

    const v14, 0x7f07004e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterKurt;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x3

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJackie;

    const v14, 0x7f07004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJackie;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x4

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLindsay;

    const v14, 0x7f070050

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLindsay;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x5

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJaida;

    const v14, 0x7f070052

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterJaida;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x6

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPam;

    const v14, 0x7f070053

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterPam;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/4 v12, 0x7

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSandy;

    const v14, 0x7f070059

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSandy;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0x8

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterMaya;

    const v14, 0x7f07005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterMaya;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0x9

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterNikki;

    const v14, 0x7f07005b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterNikki;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0xa

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterQuentin;

    const v14, 0x7f07005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterQuentin;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0xb

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterQueen;

    const v14, 0x7f07005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterQueen;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0xc

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLomoish;

    const v14, 0x7f070054

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterLomoish;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0xd

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterDocumentary;

    const v14, 0x7f070055

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterDocumentary;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0xe

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSepia;

    const v14, 0x7f070057

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterSepia;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    const/16 v12, 0xf

    new-instance v13, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGrain;

    const v14, 0x7f070058

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterGrain;-><init>(Ljava/lang/String;)V

    aput-object v13, v4, v12

    .line 800
    .local v4, "filters":[Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v12, v4

    if-ge v5, v12, :cond_0

    .line 801
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 802
    .local v3, "filter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    invoke-virtual {v3, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 803
    aget-object v12, v4, v5

    aget-object v13, v4, v5

    invoke-virtual {v13}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 804
    aget-object v12, v4, v5

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 805
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 808
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setType(I)V

    .line 809
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 811
    .end local v3    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    :cond_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 812
    .local v7, "o":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0200e9

    invoke-static {v12, v13, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 814
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v11, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;

    const v12, 0x7f070046

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v1, v12}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 816
    .local v11, "xProcess":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilterFx;
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 817
    .restart local v3    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    invoke-virtual {v3, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 819
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V

    .line 821
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 822
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setType(I)V

    .line 823
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v12, v9}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 825
    return-void
.end method

.method private getPixelsFromDip(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 1093
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1094
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private getPixelsFromSp(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 1099
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1100
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private getScreenImageSize()I
    .locals 6

    .prologue
    .line 703
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 704
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 705
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 706
    .local v3, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 707
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 708
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 709
    .local v2, "msize":I
    mul-int/lit16 v4, v2, 0x85

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v4, v5

    return v4
.end method

.method private hideSavingProgress()V
    .locals 2

    .prologue
    .line 728
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 730
    .local v0, "progress":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 734
    .end local v0    # "progress":Landroid/app/ProgressDialog;
    :cond_0
    return-void
.end method

.method private initDoodle()V
    .locals 4

    .prologue
    const v2, 0x7f0c002c

    .line 1405
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    .line 1406
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setOnDoodleChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle$OnDoodleChangeListener;)V

    .line 1407
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1408
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 1409
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 1411
    const v0, 0x7f0c0076

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;

    .line 1412
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1413
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleColorSeekBar:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    .line 1414
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleColorSeekBar:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$8;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$8;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setOnColorChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar$OnHighlightColorSeekBarChangeListener;)V

    .line 1423
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleColorSeekBar:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->setColorIndex(I)V

    .line 1424
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleColorSeekBar:Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/HighlightColorSeekBar;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setColor(I)V

    .line 1426
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleButton:Landroid/widget/Button;

    .line 1427
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1429
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 1431
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 1432
    return-void
.end method

.method private initStampsFunction()V
    .locals 12

    .prologue
    const v11, 0x7f0c0071

    const v8, 0x7f0c002a

    const/16 v10, 0x10

    .line 516
    const v6, 0x7f0c0070

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 518
    .local v2, "listStamps":Landroid/widget/LinearLayout;
    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    iput-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    .line 520
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 522
    const v6, 0x7f0c006f

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStamps:Landroid/view/View;

    .line 524
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStamps:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 526
    const v6, 0x7f0c007d

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStampsButton:Landroid/widget/Button;

    .line 528
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStampsButton:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 530
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v6, v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 531
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v6, v7}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 533
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 534
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStampsButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStamps:Landroid/view/View;

    const/4 v9, 0x5

    invoke-virtual {v6, v7, v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 535
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 546
    .local v3, "stampDrawableIds":[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 557
    .local v4, "stampLargeDrawableIds":[I
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 558
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 560
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_0

    .line 561
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, "fView":Landroid/widget/ImageButton;
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 564
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 565
    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setId(I)V

    .line 566
    aget v6, v4, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 567
    iget-object v6, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v7, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStampsButton:Landroid/widget/Button;

    invoke-virtual {v6, v7, v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 568
    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "fView":Landroid/widget/ImageButton;
    :cond_0
    return-void

    .line 535
    :array_0
    .array-data 4
        0x7f02008a
        0x7f02008b
        0x7f02008c
        0x7f02008d
        0x7f02008e
        0x7f02008f
        0x7f020090
        0x7f020091
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
    .end array-data

    .line 546
    :array_1
    .array-data 4
        0x7f02018f
        0x7f020190
        0x7f020191
        0x7f020192
        0x7f020193
        0x7f020194
        0x7f020195
        0x7f020196
        0x7f020197
        0x7f020198
        0x7f020199
        0x7f02019a
        0x7f02019b
        0x7f02019c
        0x7f02019d
        0x7f02019e
    .end array-data
.end method

.method private initStyle()V
    .locals 19

    .prologue
    .line 1435
    new-instance v2, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sonymobile/android/facebeauty/engine/LocalFaceBeautyEngine;-><init>(Landroid/content/Context;)V

    .line 1436
    .local v2, "faceBeautyEngine":Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;
    invoke-interface {v2}, Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;->getStyleList()[I

    move-result-object v12

    .line 1437
    .local v12, "styleIndexList":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v15}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getStyleType()I

    move-result v14

    .line 1438
    .local v14, "styleType":I
    const/4 v9, 0x0

    .line 1439
    .local v9, "selectStyleIndex":I
    array-length v15, v12

    new-array v4, v15, [Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 1440
    .local v4, "filters":[Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v15, v12

    if-ge v5, v15, :cond_1

    .line 1441
    aget v11, v12, v5

    .line 1442
    .local v11, "styleIndex":I
    if-ne v11, v14, :cond_0

    .line 1443
    move v9, v5

    .line 1445
    :cond_0
    invoke-interface {v2, v11}, Lcom/sonymobile/android/facebeauty/engine/FaceBeautyEngine;->getStyleName(I)Ljava/lang/String;

    move-result-object v13

    .line 1446
    .local v13, "styleName":Ljava/lang/String;
    new-instance v15, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11, v13}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleFilter;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    aput-object v15, v4, v5

    .line 1440
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1448
    .end local v11    # "styleIndex":I
    .end local v13    # "styleName":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090044

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 1449
    .local v10, "startPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090045

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1450
    .local v1, "endPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090046

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1451
    .local v8, "padding":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    move/from16 v0, v16

    invoke-direct {v6, v15, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1453
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v10, v8, v1, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1455
    const v15, 0x7f0c004b

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyle:Landroid/view/View;

    .line 1456
    const v15, 0x7f0c0078

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    .line 1457
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1458
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyle:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1459
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyle:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 1460
    new-instance v7, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;

    const v15, 0x7f07007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Lcom/sonymobile/china/photoeditor/filtershow/style/ImageStyleNull;-><init>(Ljava/lang/String;)V

    .line 1461
    .local v7, "nullFilter":Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    const v15, 0x7f0c004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyles:Landroid/widget/LinearLayout;

    .line 1463
    new-instance v15, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1464
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setType(I)V

    .line 1465
    if-nez v14, :cond_2

    .line 1466
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1467
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1468
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 1470
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v15, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setFaceRectsVisibility(Z)V

    .line 1472
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v7, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 1473
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 1474
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->detect()V

    .line 1476
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getBaseFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v15

    array-length v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 1477
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 1479
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyles:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1481
    const/4 v5, 0x0

    :goto_1
    array-length v15, v4

    if-ge v5, v15, :cond_5

    .line 1482
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;-><init>(Landroid/content/Context;)V

    .line 1483
    .local v3, "filter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    invoke-virtual {v3, v6}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1484
    aget-object v15, v4, v5

    aget-object v16, v4, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->getPreviewParameter()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;->setParameter(I)V

    .line 1485
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setType(I)V

    .line 1486
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setFaceRectsVisibility(Z)V

    .line 1487
    aget-object v15, v4, v5

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v15, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .line 1488
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setController(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setNulfilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V

    .line 1490
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 1491
    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->detect()V

    .line 1492
    if-eqz v14, :cond_4

    if-ne v5, v9, :cond_4

    .line 1493
    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1494
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1495
    aget-object v15, v4, v5

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .line 1498
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyles:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1481
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1500
    .end local v3    # "filter":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    :cond_5
    return-void
.end method

.method private initText()V
    .locals 4

    .prologue
    const v3, 0x7f0c002d

    .line 1369
    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    .line 1370
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1371
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 1372
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 1373
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setOnImageBoundsChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$OnImageBoundsChangedListener;)V

    .line 1375
    const v0, 0x7f0c002b

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    .line 1376
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    .line 1377
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1378
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 1381
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setDisplayBounds(Landroid/graphics/RectF;)V

    .line 1384
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->init(Landroid/content/Context;)V

    .line 1385
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1386
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setFilterDataChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextFilterDataChangedListener;)V

    .line 1390
    :cond_0
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    .line 1391
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 1395
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 1396
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    const v2, 0x7f0c0073

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 1398
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    const v2, 0x7f0c0074

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 1400
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextButton:Landroid/widget/Button;

    const v2, 0x7f0c0075

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 1402
    return-void
.end method

.method private onLoadImageComplete()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 1539
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->detect()Ljava/util/ArrayList;

    move-result-object v0

    .line 1540
    .local v0, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/android/facebeauty/engine/FaceRect;>;"
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    if-nez v2, :cond_3

    .line 1541
    const v2, 0x7f0c004b

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyle:Landroid/view/View;

    .line 1542
    const v2, 0x7f0c0078

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    .line 1543
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListStyle:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1545
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1546
    const v2, 0x7f0c004d

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    .line 1548
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    :goto_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    :goto_1
    invoke-virtual {v3, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setCurrentPanel(Landroid/view/View;)V

    .line 1560
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    if-eqz v2, :cond_2

    .line 1561
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getStyleType()I

    move-result v1

    .line 1562
    .local v1, "styleType":I
    if-lez v1, :cond_1

    .line 1563
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleFilter:Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    invoke-virtual {p0, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->useImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 1566
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 1568
    .end local v1    # "styleType":I
    :cond_2
    return-void

    .line 1550
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-nez v2, :cond_4

    .line 1551
    const v2, 0x7f0c0023

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 1553
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->enableStyle(Z)V

    .line 1554
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setAllFaceRectItem(Ljava/util/ArrayList;)V

    .line 1555
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->detect()V

    .line 1556
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->initStyle()V

    goto :goto_0

    .line 1558
    :cond_5
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mFilterButton:Landroid/widget/Button;

    goto :goto_1
.end method

.method private showSavingProgress()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 714
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    .line 716
    .local v0, "progress":Landroid/app/ProgressDialog;
    if-eqz v0, :cond_0

    .line 717
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 725
    :goto_0
    return-void

    .line 721
    .end local v0    # "progress":Landroid/app/ProgressDialog;
    :cond_0
    const v2, 0x7f07003e

    new-array v3, v6, [Ljava/lang/Object;

    const v4, 0x7f070092

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, "progressText":Ljava/lang/String;
    const-string v2, ""

    invoke-static {p0, v2, v1, v6, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 724
    .restart local v0    # "progress":Landroid/app/ProgressDialog;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSavingProgressDialog:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method private showToastAndFinish(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1083
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1085
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 1086
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1087
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->finish()V

    .line 1088
    return-void
.end method

.method private startLoadBitmap(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x0

    .line 581
    const v3, 0x7f0c0064

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 582
    .local v2, "tinyPlanetView":Landroid/view/View;
    new-instance v3, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-direct {v3, p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Landroid/view/View;)V

    iput-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    .line 583
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/net/Uri;

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 584
    const v3, 0x7f0c002f

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 587
    .local v1, "loading":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 588
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 590
    :cond_0
    const v3, 0x7f0c0030

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 591
    .local v0, "filters":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 592
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    :cond_1
    if-eqz v2, :cond_2

    .line 595
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :cond_2
    return-void
.end method

.method private translateMainPanel(Landroid/view/View;)I
    .locals 6
    .param p1, "viewPanel"    # Landroid/view/View;

    .prologue
    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 683
    .local v0, "accessoryPanelWidth":I
    const v5, 0x7f0c001f

    invoke-virtual {p0, v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 684
    .local v4, "mainViewWidth":I
    iget-object v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 685
    .local v3, "mainPanelWidth":I
    if-nez v3, :cond_0

    .line 686
    move v3, v4

    .line 688
    :cond_0
    const v5, 0x7f0c0030

    invoke-virtual {p0, v5}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 689
    .local v1, "filtersPanelWidth":I
    if-ge v3, v1, :cond_1

    .line 690
    move v3, v1

    .line 692
    :cond_1
    sub-int v5, v4, v3

    sub-int v2, v5, v0

    .line 693
    .local v2, "leftOver":I
    if-gez v2, :cond_3

    .line 694
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/china/photoeditor/util/BidiHelper;->isRtlAlphabet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 695
    neg-int v0, v0

    .line 699
    .end local v0    # "accessoryPanelWidth":I
    :cond_2
    :goto_0
    return v0

    .restart local v0    # "accessoryPanelWidth":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public beginText()V
    .locals 4

    .prologue
    .line 1275
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    instance-of v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    if-eqz v1, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    .line 1279
    .local v0, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setOnTextPropertyChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;)V

    .line 1280
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$7;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setOnTextChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;)V

    .line 1295
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    instance-of v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->getOriginalBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->setPhotoBounds(Landroid/graphics/RectF;)V

    .line 1298
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->begin()V

    .line 1299
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->setOnToolbarChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;)V

    .line 1300
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->getTextProperty()Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setTextProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 1304
    .end local v0    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    :cond_0
    return-void
.end method

.method public buildTextFilter(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;)Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .locals 3
    .param p1, "filter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;

    .prologue
    .line 1322
    instance-of v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    if-eqz v1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    .local v0, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    move-object v1, p1

    .line 1325
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getAllTextItem()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->addTextItem(Ljava/util/Vector;)V

    move-object v1, p1

    .line 1326
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->getDisplayBounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageFilterText;->setDisplayBounds(Landroid/graphics/RectF;)V

    .line 1328
    .end local v0    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    :cond_0
    return-object p1
.end method

.method public cancelProgressBar()V
    .locals 1

    .prologue
    .line 1600
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    .line 1601
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1603
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    .line 1605
    :cond_0
    return-void
.end method

.method public clearSelectButton()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 883
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 884
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2060003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 887
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 888
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 890
    .end local v1    # "color":I
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 891
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 894
    .end local v0    # "button":Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method public disableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 915
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 916
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 917
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 918
    const v2, 0x3ecccccd

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 920
    .end local v0    # "b":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public enableFilterButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 923
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 924
    .local v0, "b":Landroid/widget/Button;
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 925
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 926
    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 928
    .end local v0    # "b":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public endText()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1307
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    instance-of v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    if-eqz v1, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    .line 1310
    .local v0, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setOnTextChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$OnTextChangeListener;)V

    .line 1311
    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setOnTextPropertyChangeListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextPropertyChangedListener;)V

    .line 1312
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->clean()V

    .line 1314
    .end local v0    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    instance-of v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    if-eqz v1, :cond_1

    .line 1315
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->setOnToolbarChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar$OnToolbarChangedListener;)V

    .line 1316
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->end()V

    .line 1318
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    .line 1319
    return-void
.end method

.method public getAllFaceRec()Ljava/util/ArrayList;
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
    .line 1578
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getAllFaceRects()Ljava/util/ArrayList;

    move-result-object v0

    .line 1581
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseFaceRects()[Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBaseFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    return-object v0
.end method

.method public getCurrentStyleImageSmallFilter()Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    .locals 1

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    return-object v0
.end method

.method public getFaceRects()Ljava/util/ArrayList;
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
    .line 1571
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    .line 1572
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getFaceRect()Ljava/util/ArrayList;

    move-result-object v0

    .line 1574
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideImageViews()V
    .locals 4

    .prologue
    .line 896
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setShowControls(Z)Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 897
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 898
    .local v1, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 900
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public hideListViews()V
    .locals 3

    .prologue
    .line 877
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 878
    .local v1, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 880
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 870
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 871
    .local v1, "views":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->invalidate()V

    .line 872
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->updateImage()V

    goto :goto_0

    .line 874
    .end local v1    # "views":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public invisibleHistoryPanel()V
    .locals 5

    .prologue
    .line 1018
    const v2, 0x7f0c0022

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1019
    .local v0, "view":Landroid/view/View;
    const v2, 0x7f0c0080

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1020
    .local v1, "viewList":Landroid/view/View;
    iget-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v2, :cond_0

    .line 1021
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 1022
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1023
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1025
    :cond_0
    return-void
.end method

.method public isProcessDialogShowing()Z
    .locals 2

    .prologue
    .line 1608
    const/4 v0, 0x0

    .line 1609
    .local v0, "showing":Z
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    if-lez v1, :cond_0

    .line 1610
    const/4 v0, 0x1

    .line 1612
    :cond_0
    return v0
.end method

.method public isShowingHistoryPanel()Z
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1192
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 1193
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1194
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1195
    .local v0, "selectedImageUri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 1198
    .end local v0    # "selectedImageUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1075
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v0, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->saveImage(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 973
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 974
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->toggleHistoryPanel()V

    .line 977
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 264
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 268
    .local v17, "uri":Landroid/net/Uri;
    new-instance v18, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    .line 269
    if-eqz v17, :cond_4

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->startLoadBitmap(Landroid/net/Uri;)V

    .line 274
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060027

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setDefaultBackgroundColor(I)V

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f060028

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setDefaultBackgroundColor(I)V

    .line 278
    const/high16 v18, 0x43800000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->setZoomedSize(F)V

    .line 279
    const/high16 v18, 0x41600000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromSp(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 280
    const/high16 v18, 0x40800000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    .line 281
    const/high16 v18, 0x41200000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    .line 282
    const/high16 v18, 0x41400000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromSp(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setTextSize(I)V

    .line 283
    const/high16 v18, 0x41200000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setTextPadding(I)V

    .line 284
    const/high16 v18, 0x40800000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setOriginalTextMargin(I)V

    .line 285
    const/high16 v18, 0x41900000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromSp(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setOriginalTextSize(I)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setOriginalText(Ljava/lang/String;)V

    .line 288
    const/high16 v18, 0x41400000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromSp(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->setTextSize(I)V

    .line 289
    const/high16 v18, 0x41200000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/ui/ImageButtonTitle;->setTextPadding(I)V

    .line 290
    const/high16 v18, 0x40400000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setMargin(I)V

    .line 291
    const/high16 v18, 0x40800000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setTextMargin(I)V

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0200b1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 294
    .local v8, "curveHandle":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090063

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v9, v0

    .line 296
    .local v9, "curveHandleSize":I
    invoke-static {v8, v9}, Lcom/sonymobile/china/photoeditor/filtershow/ui/Spline;->setCurveHandle(Landroid/graphics/drawable/Drawable;I)V

    .line 297
    const/high16 v18, 0x40400000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/ui/Spline;->setCurveWidth(I)V

    .line 299
    const v18, 0x7f030004

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setContentView(I)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 301
    .local v6, "actionBar":Landroid/app/ActionBar;
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 302
    const v18, 0x7f030003

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 304
    new-instance v10, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$1;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 356
    .local v10, "customClickListener":Landroid/view/View$OnClickListener;
    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0c0015

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mHistoryButton:Landroid/widget/ImageButton;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mHistoryButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0c0016

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mUndoButton:Landroid/widget/ImageButton;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mUndoButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mUndoButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 363
    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0c0017

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mRedoButton:Landroid/widget/ImageButton;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mRedoButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mRedoButton:Landroid/widget/ImageButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 367
    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0c0019

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveButton:Landroid/widget/Button;

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v18, 0x7f0c004e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 372
    .local v14, "listFilters":Landroid/widget/LinearLayout;
    const v18, 0x7f0c0050

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 374
    .local v13, "listBorders":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 375
    const v18, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 377
    :cond_0
    const v18, 0x7f0c0028

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageBorders:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

    .line 378
    const v18, 0x7f0c0024

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    .line 379
    const v18, 0x7f0c0029

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    .line 380
    const v18, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    .line 381
    const v18, 0x7f0c0026

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    .line 382
    const v18, 0x7f0c0027

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    move-object/from16 v18, v0

    const/high16 v19, 0x41900000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromSp(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setAspectTextSize(I)V

    .line 385
    const/high16 v18, 0x41c80000

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getPixelsFromDip(F)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setTouchTolerance(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageBorders:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 394
    const v18, 0x7f0c004d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    .line 395
    const v18, 0x7f0c004f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    .line 396
    const v18, 0x7f0c005c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    .line 397
    const v18, 0x7f0c0032

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListViews:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilterButtons:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 404
    const v18, 0x7f0c0079

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mFilterButton:Landroid/widget/Button;

    .line 405
    const v18, 0x7f0c007a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/Button;

    .line 406
    const v18, 0x7f0c007b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mFilterButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageBorders:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageBorders:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStraighten:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStraighten;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageCrop:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageCrop;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageRotate:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageRotate;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->setImageLoader(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageFlip:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageFlip;->setMaster(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setActivity(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0023

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0028

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0024

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0025

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0026

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0027

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0029

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addImageView(Landroid/view/View;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mFilterButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListFilter:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v18 .. v21}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBorderButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListBorders:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v18 .. v21}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mListGeometry:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    invoke-virtual/range {v18 .. v21}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addPanel(Landroid/view/View;Landroid/view/View;I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0c0060

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0c005e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mGeometryButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    const v20, 0x7f0c005f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addComponent(Landroid/view/View;Landroid/view/View;)V

    .line 449
    new-instance v18, Landroid/app/ProgressDialog;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    new-instance v19, Landroid/widget/ProgressBar;

    const/16 v20, 0x0

    const v21, 0x101007a

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setView(Landroid/view/View;)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    const v19, 0x7f07007d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v18

    new-instance v19, Landroid/graphics/drawable/ColorDrawable;

    const/16 v20, 0x0

    invoke-direct/range {v19 .. v20}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 456
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->initText()V

    .line 457
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->initDoodle()V

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->initStampsFunction()V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0034

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0033

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->addView(Landroid/view/View;)V

    .line 462
    const v18, 0x7f0c0082

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->createOnClickResetOperationsButton()Landroid/view/View$OnClickListener;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    const v18, 0x7f0c0081

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    .line 466
    .local v15, "operationsList":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 467
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 468
    const v18, 0x7f0c0021

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 469
    .local v11, "imageStateList":Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImageStateAdapter()Lcom/sonymobile/china/photoeditor/filtershow/ImageStateAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageLoader:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->setAdapter(Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;)V

    .line 472
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->fillListImages(Landroid/widget/LinearLayout;)V

    .line 473
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->fillListBorders(Landroid/widget/LinearLayout;)V

    .line 475
    const v18, 0x7f0c002e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/SeekBar;

    .line 476
    .local v16, "seekBar":Landroid/widget/SeekBar;
    const/16 v18, 0x258

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageZoom:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageZoom;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0031

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setRowPanel(Landroid/view/View;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0032

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    const v20, 0x7f0c0034

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const v21, 0x7f0c0033

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setUtilityPanel(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setMasterImage(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mStyleButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->setCurrentPanel(Landroid/view/View;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 488
    .local v12, "intent":Landroid/content/Intent;
    const-string v18, "launch-fullscreen"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 489
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/16 v19, 0x400

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    .line 492
    :cond_1
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "action":Ljava/lang/String;
    const-string v18, "com.android.camera.action.EDITOR_CROP"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c005e

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 498
    :cond_2
    :goto_2
    const v18, 0x7f0c007c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 499
    .local v7, "collageBtn":Landroid/widget/Button;
    if-eqz v7, :cond_3

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCollageBtnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    :cond_3
    return-void

    .line 272
    .end local v5    # "action":Ljava/lang/String;
    .end local v6    # "actionBar":Landroid/app/ActionBar;
    .end local v7    # "collageBtn":Landroid/widget/Button;
    .end local v8    # "curveHandle":Landroid/graphics/drawable/Drawable;
    .end local v9    # "curveHandleSize":I
    .end local v10    # "customClickListener":Landroid/view/View$OnClickListener;
    .end local v11    # "imageStateList":Landroid/widget/ListView;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v13    # "listBorders":Landroid/widget/LinearLayout;
    .end local v14    # "listFilters":Landroid/widget/LinearLayout;
    .end local v15    # "operationsList":Landroid/widget/ListView;
    .end local v16    # "seekBar":Landroid/widget/SeekBar;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->pickImage()V

    goto/16 :goto_0

    .line 485
    .restart local v6    # "actionBar":Landroid/app/ActionBar;
    .restart local v8    # "curveHandle":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "curveHandleSize":I
    .restart local v10    # "customClickListener":Landroid/view/View$OnClickListener;
    .restart local v11    # "imageStateList":Landroid/widget/ListView;
    .restart local v13    # "listBorders":Landroid/widget/LinearLayout;
    .restart local v14    # "listFilters":Landroid/widget/LinearLayout;
    .restart local v15    # "operationsList":Landroid/widget/ListView;
    .restart local v16    # "seekBar":Landroid/widget/SeekBar;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mFilterButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    goto :goto_1

    .line 495
    .restart local v5    # "action":Ljava/lang/String;
    .restart local v12    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v18, "com.android.camera.action.TINY_PLANET"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    move-object/from16 v18, v0

    const v19, 0x7f0c0064

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mUndoButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->setMenuItems(Landroid/widget/ImageButton;Landroid/widget/ImageButton;)V

    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 668
    iput v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    .line 670
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    if-eqz v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mLoadBitmapTask:Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$LoadBitmapTask;->cancel(Z)Z

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->clear()V

    .line 678
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 679
    return-void
.end method

.method public onDoodleFinished()V
    .locals 1

    .prologue
    .line 1365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    .line 1366
    return-void
.end method

.method public onDoodleInPhotoBounds()V
    .locals 2

    .prologue
    .line 1357
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    if-nez v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 1360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    .line 1361
    return-void
.end method

.method public onImageBoundsChanged()V
    .locals 3

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->getDisplayedImageBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setDisplayBounds(Landroid/graphics/RectF;)V

    .line 1353
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1160
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    if-eqz v1, :cond_0

    .line 1161
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setFilterVisibility(Z)V

    .line 1162
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    .line 1163
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    .line 1165
    .local v0, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->clean()V

    .line 1167
    .end local v0    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    :cond_0
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    if-eqz v1, :cond_1

    .line 1168
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setFilterVisibility(Z)V

    .line 1169
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    .line 1170
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->clearDoodles()V

    .line 1172
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    if-eqz v1, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyStamp(Z)V

    .line 1174
    iput-boolean v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    .line 1175
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->clearStamp()V

    .line 1177
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, p3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->onItemClick(I)V

    .line 1178
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateViews()V

    .line 1179
    return-void
.end method

.method public onSaveImageComplete(Landroid/net/Uri;)V
    .locals 2
    .param p1, "saveUri"    # Landroid/net/Uri;

    .prologue
    .line 738
    invoke-static {}, Lcom/sonymobile/china/photoeditor/util/Debug$Listeners;->onCompleteSave()V

    .line 739
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->setResult(ILandroid/content/Intent;)V

    .line 740
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->hideSavingProgress()V

    .line 741
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z

    if-eqz v0, :cond_0

    .line 742
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->callCollage(Landroid/net/Uri;)V

    .line 743
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->finish()V

    goto :goto_0
.end method

.method public onTextPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 1
    .param p1, "newValues"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextToolbar:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->onTextPropertyChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 1346
    :cond_0
    return-void
.end method

.method public onToolbarChanged(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 1
    .param p1, "property"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    instance-of v0, v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->setTextProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V

    .line 1338
    :cond_0
    return-void
.end method

.method public pickImage()V
    .locals 3

    .prologue
    .line 1182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const v1, 0x7f07003f

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1188
    return-void
.end method

.method resetHistory()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1028
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNeedStyle:Z

    if-eqz v3, :cond_0

    .line 1029
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullStyle:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 1031
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mNullFxFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->onClick(Landroid/view/View;)V

    .line 1033
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    if-eqz v3, :cond_1

    .line 1034
    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    .line 1035
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;

    .line 1037
    .local v2, "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;->clean()V

    .line 1039
    .end local v2    # "v":Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewFullLayoutContainer;
    :cond_1
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    if-eqz v3, :cond_2

    .line 1040
    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    .line 1041
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->clearDoodles()V

    .line 1043
    :cond_2
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    if-eqz v3, :cond_3

    .line 1044
    iput-boolean v5, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    .line 1045
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->clearStamp()V

    .line 1050
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getHistory()Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;

    move-result-object v0

    .line 1051
    .local v0, "adapter":Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;
    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->reset()V

    .line 1052
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-virtual {v0, v5}, Lcom/sonymobile/china/photoeditor/filtershow/HistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 1053
    .local v1, "original":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v3, v1, v5}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Z)V

    .line 1054
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    if-eqz v3, :cond_4

    .line 1055
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v3}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->resetParameters()V

    .line 1057
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateViews()V

    .line 1058
    return-void
.end method

.method public saveImage(Z)V
    .locals 4
    .param p1, "showDialog"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1201
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->hasModifications()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1203
    :cond_0
    if-eqz p1, :cond_1

    .line 1204
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;

    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$5;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    new-instance v2, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$6;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$6;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;)V

    const v3, 0x7f070049

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 1254
    :goto_0
    return-void

    .line 1230
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->showSavingProgress()V

    .line 1231
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isTextAdded:Z

    if-eqz v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageText:Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/ImageText;->setFilterVisibility(Z)V

    .line 1233
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->endText()V

    .line 1235
    :cond_2
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isDoodleAdded:Z

    if-eqz v0, :cond_3

    .line 1236
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageDoodle:Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/ImageDoodle;->setFilterVisibility(Z)V

    .line 1237
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mDoodleToolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->showComponent(Landroid/view/View;)V

    .line 1239
    :cond_3
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    if-eqz v0, :cond_4

    .line 1240
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mPanelController:Lcom/sonymobile/china/photoeditor/filtershow/PanelController;

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController;->applyStamp(Z)V

    .line 1241
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    .line 1242
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageStamps:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageStamps;->clearStamp()V

    .line 1244
    :cond_4
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->saveImage(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V

    goto :goto_0

    .line 1247
    :cond_5
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z

    if-eqz v0, :cond_6

    .line 1248
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->callCollage(Landroid/net/Uri;)V

    .line 1249
    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mSaveForCollage:Z

    goto :goto_0

    .line 1251
    :cond_6
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->finish()V

    goto :goto_0
.end method

.method public setBaseFaceRects([Lcom/sonymobile/android/facebeauty/engine/FaceRect;)V
    .locals 0
    .param p1, "faceRects"    # [Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBaseFaceRects:[Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .line 1625
    return-void
.end method

.method public setDefaultFaceRectItem()V
    .locals 3

    .prologue
    .line 1585
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    if-eqz v2, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getAllFaceRects()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .line 1587
    .local v0, "faceRectItem":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->setSelected(Z)V

    goto :goto_0

    .line 1590
    .end local v0    # "faceRectItem":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public setStampStatus(Z)V
    .locals 0
    .param p1, "isAdded"    # Z

    .prologue
    .line 1616
    iput-boolean p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->isStampAdded:Z

    .line 1617
    return-void
.end method

.method public setTextEditContainerVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    :cond_0
    if-nez p1, :cond_2

    .line 1265
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->beginText()V

    .line 1266
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mTextEditContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 1272
    :cond_1
    :goto_0
    return-void

    .line 1269
    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 1270
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->endText()V

    goto :goto_0
.end method

.method public showOriginalViews(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 864
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageViews:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    .line 865
    .local v1, "views":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    invoke-virtual {v1, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->showOriginal(Z)V

    goto :goto_0

    .line 867
    .end local v1    # "views":Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;
    :cond_0
    return-void
.end method

.method public showProgressBar()V
    .locals 1

    .prologue
    .line 1593
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessBarCount:I

    .line 1594
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mProcessDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1597
    :cond_0
    return-void
.end method

.method public toggleHistoryPanel()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 988
    const v3, 0x7f0c0022

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 989
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f0c0080

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 991
    .local v2, "viewList":Landroid/view/View;
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    if-eqz v3, :cond_0

    .line 992
    const v3, 0x7f0c0020

    invoke-virtual {p0, v3}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingImageStatePanel:Z

    .line 996
    :cond_0
    invoke-direct {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->translateMainPanel(Landroid/view/View;)I

    move-result v0

    .line 997
    .local v0, "translate":I
    iget-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    if-nez v3, :cond_1

    .line 998
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 999
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity$3;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1014
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateOptionsMenu()V

    .line 1015
    return-void

    .line 1010
    :cond_1
    iput-boolean v4, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mShowingHistoryPanel:Z

    .line 1011
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public unselectBottomPanelButtons()V
    .locals 3

    .prologue
    .line 903
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mBottomPanelButtons:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 904
    .local v0, "button":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 906
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public unselectPanelButtons(Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/Button;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 909
    .local p1, "buttons":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/widget/Button;>;"
    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 910
    .local v0, "button":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    goto :goto_0

    .line 912
    .end local v0    # "button":Landroid/widget/Button;
    :cond_0
    return-void
.end method

.method public useImageFilter(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V
    .locals 5
    .param p1, "imageSmallFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    .param p2, "imageFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;
    .param p3, "setBorder"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1130
    if-nez p2, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1134
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getType()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 1135
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_1

    .line 1136
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1138
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1139
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1148
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    move-result-object v1

    .line 1149
    .local v1, "oldPreset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 1151
    .local v0, "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    invoke-virtual {v0, p2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;->add(Lcom/sonymobile/china/photoeditor/filtershow/filters/ImageFilter;Z)V

    .line 1153
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v2, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 1154
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 1140
    .end local v0    # "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    .end local v1    # "oldPreset":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getType()I

    move-result v2

    if-nez v2, :cond_2

    .line 1141
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v2, :cond_4

    .line 1142
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1144
    :cond_4
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1145
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v2, v4}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    goto :goto_1
.end method

.method public useImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V
    .locals 4
    .param p1, "imageSmallFilter"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;
    .param p2, "preset"    # Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1106
    if-nez p2, :cond_0

    .line 1126
    :goto_0
    return-void

    .line 1109
    :cond_0
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1110
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1113
    :cond_1
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1114
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentFXImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1123
    :cond_2
    :goto_1
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;

    invoke-direct {v0, p2}, Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;-><init>(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 1124
    .local v0, "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mImageShow:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;

    invoke-virtual {v1, v0}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow;->setImagePreset(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;)V

    .line 1125
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->invalidateViews()V

    goto :goto_0

    .line 1115
    .end local v0    # "copy":Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->getType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    if-eqz v1, :cond_4

    .line 1117
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v1, v3}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    .line 1119
    :cond_4
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    .line 1120
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/FilterShowActivity;->mCurrentStyleImageSmallFilter:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->setSelected(Z)V

    goto :goto_1
.end method
