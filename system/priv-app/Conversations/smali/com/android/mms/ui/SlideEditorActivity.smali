.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_ADD_IMAGE_OR_VIDEO:I = 0x2

.field private static final LOCAL_LOGV:Z = false

.field private static final MENU_ADD_SLIDE:I = 0x7

.field private static final MENU_DEL_SLIDE:I = 0xe

.field private static final MENU_DURATION:I = 0xa

.field private static final MENU_LAYOUT:I = 0x9

.field private static final MENU_PREVIEW_SLIDESHOW:I = 0xb

.field private static final MESSAGE_URI:Ljava/lang/String; = "message_uri"

.field private static final NUM_DIRECT_DURATIONS:I = 0xa

.field private static final REQUEST_CODE_ADD_OR_RECORD_SOUND:I = 0x7

.field private static final REQUEST_CODE_CHANGE_DURATION:I = 0x6

.field private static final REQUEST_CODE_CHANGE_MUSIC:I = 0x3

.field private static final REQUEST_CODE_CHANGE_PICTURE:I = 0x1

.field private static final REQUEST_CODE_CHANGE_VIDEO:I = 0x5

.field private static final REQUEST_CODE_EDIT_TEXT:I = 0x0

.field private static final REQUEST_CODE_RECORD_SOUND:I = 0x4

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0x2

.field public static final SLIDE_INDEX:Ljava/lang/String; = "slide_index"

.field private static final TAG:Ljava/lang/String; = "SlideEditorActivity"


# instance fields
.field private mAddAudioButton:Landroid/view/View;

.field private mAddAudioButtonImage:Landroid/widget/ImageView;

.field private mAddAudioText:Landroid/view/View;

.field private mAddImageButton:Landroid/view/View;

.field private mAddImageButtonImage:Landroid/widget/ImageView;

.field private mAddSlide:Landroid/widget/ImageButton;

.field private mAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirty:Z

.field private mDiscard:Landroid/widget/Button;

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mImageContainer:Landroid/view/View;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mRemoveAudioButton:Landroid/view/View;

.field private mRemoveImageButton:Landroid/view/View;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mResultIntent:Landroid/content/Intent;

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mTitleText:Landroid/widget/TextView;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddresses:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 362
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 370
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

    .line 398
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 407
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 416
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$12;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 778
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$15;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->addSlide()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->discardSlideshow()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mImageContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioText:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveAudioButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideEditorActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->hideInputMethod(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->addImage()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->takePicture()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->addVideo()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->recordVideo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->removeImage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->removeVideo()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->addOrRecordAudio()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->removeAudio()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mms/ui/SlideEditorActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method private addImage()V
    .locals 3

    .prologue
    .line 575
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 576
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 578
    return-void
.end method

.method private addOrRecordAudio()V
    .locals 8

    .prologue
    .line 549
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    .local v2, "musicPickerIntent":Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.dir/track"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 553
    .local v0, "chooserIntent":Landroid/content/Intent;
    const/high16 v4, 0x20000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    sub-int v3, v4, v5

    .line 558
    .local v3, "sizeLimit":I
    const/4 v4, 0x1

    new-array v1, v4, [Landroid/content/Intent;

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "audio/amr"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.soundrecorder"

    const-string v7, "com.android.soundrecorder.SoundRecorder"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    aput-object v5, v1, v4

    .line 566
    .local v1, "initialIntentsExtra":[Landroid/content/Intent;
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 567
    const/4 v4, 0x7

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 568
    return-void
.end method

.method private addSlide()V
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 600
    :goto_0
    return-void

    .line 596
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 597
    const v0, 0x7f070101

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private addVideo()V
    .locals 2

    .prologue
    .line 522
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 524
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 525
    return-void
.end method

.method private discardSlideshow()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 621
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 622
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 623
    return-void
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 821
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hideInputMethod(Z)V
    .locals 4
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 931
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 934
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 935
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 936
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 937
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 941
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 283
    if-eqz p1, :cond_0

    .line 284
    const-string v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 285
    const-string v0, "slide_index"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 293
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 288
    const-string v0, "slide_index"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    const-string v0, "conversation_addresses"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddresses:Ljava/util/ArrayList;

    .line 291
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 828
    return-void
.end method

.method private previewSlideshow()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 435
    :goto_0
    return-void

    .line 432
    :cond_0
    const-string v0, "SlideEditorActivity"

    const-string v1, "mUri is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordVideo()V
    .locals 4

    .prologue
    .line 532
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 535
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    sub-int v1, v2, v3

    .line 538
    .local v1, "sizeLimit":I
    const-string v2, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 540
    return-void
.end method

.method private removeAudio()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    .line 572
    return-void
.end method

.method private removeImage()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 587
    return-void
.end method

.method private removeSlide()V
    .locals 3

    .prologue
    .line 604
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 605
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    .line 606
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 607
    .local v0, "size":I
    if-lez v0, :cond_2

    .line 608
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-lt v1, v0, :cond_0

    .line 609
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 611
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 617
    .end local v0    # "size":I
    :cond_1
    :goto_0
    return-void

    .line 613
    .restart local v0    # "size":I
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private removeVideo()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    .line 529
    return-void
.end method

.method private restorePresenter()V
    .locals 3

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-le v0, v1, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowPresenter;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 918
    :cond_0
    return-void
.end method

.method private showCurrentSlide()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 832
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->present()V

    .line 833
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 834
    return-void
.end method

.method private showDurationDialog()V
    .locals 4

    .prologue
    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f02009c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 628
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 631
    const v2, 0x7f0b0001

    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$13;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$13;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 651
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 652
    return-void
.end method

.method private showLayoutSelectorDialog()V
    .locals 5

    .prologue
    .line 655
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 656
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f02008d

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 658
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 663
    new-instance v0, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 664
    .local v0, "adapter":Lcom/android/mms/ui/LayoutSelectorAdapter;
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$14;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$14;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 678
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 679
    return-void
.end method

.method private takePicture()V
    .locals 2

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 583
    return-void
.end method

.method private updateTitle()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 439
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTitleText:Landroid/widget/TextView;

    const v6, 0x7f0700f5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    iget-object v8, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-lez v2, :cond_4

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 445
    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_5

    move v0, v3

    .line 446
    .local v0, "isLastSlide":Z
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    const/16 v6, 0xa

    if-ne v2, v6, :cond_6

    move v1, v3

    .line 448
    .local v1, "isSlideshowFull":Z
    :goto_2
    iget-object v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddSlide:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    if-nez v1, :cond_7

    move v2, v4

    :goto_3
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 453
    return-void

    .end local v0    # "isLastSlide":Z
    .end local v1    # "isSlideshowFull":Z
    :cond_4
    move v2, v4

    .line 443
    goto :goto_0

    :cond_5
    move v0, v4

    .line 445
    goto :goto_1

    .restart local v0    # "isLastSlide":Z
    :cond_6
    move v1, v4

    .line 446
    goto :goto_2

    .restart local v1    # "isSlideshowFull":Z
    :cond_7
    move v2, v5

    .line 448
    goto :goto_3
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f0700fd

    const v8, 0x7f0700fc

    const v7, 0x7f0700fb

    const v6, 0x7f0700fe

    const/4 v5, 0x0

    .line 683
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 685
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 693
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_1
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add image failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    const-string v2, "add picture failed"

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 703
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 706
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .line 707
    .local v0, "e":Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    .end local v0    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v0

    .line 711
    .local v0, "e":Lcom/android/mms/ResolutionException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto :goto_0

    .line 713
    .end local v0    # "e":Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v0

    .line 714
    .local v0, "e":Lcom/android/mms/ExceedMessageSizeException;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    invoke-static {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    goto :goto_0

    .line 723
    .end local v0    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 724
    const-string v2, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 725
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 733
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_0

    .line 734
    :catch_4
    move-exception v0

    .line 735
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add audio failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    const-string v2, "add music failed"

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 729
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 740
    :catch_5
    move-exception v0

    .line 741
    .local v0, "e":Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 744
    .end local v0    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :catch_6
    move-exception v0

    .line 745
    .local v0, "e":Lcom/android/mms/ExceedMessageSizeException;
    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 753
    .end local v0    # "e":Lcom/android/mms/ExceedMessageSizeException;
    .end local v1    # "uri":Landroid/net/Uri;
    :pswitch_3
    :try_start_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_9

    goto/16 :goto_0

    .line 754
    :catch_7
    move-exception v0

    .line 755
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "SlideEditorActivity"

    const-string v3, "add video failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 756
    const-string v2, "add video failed"

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 757
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 760
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :catch_8
    move-exception v0

    .line 761
    .local v0, "e":Lcom/android/mms/UnsupportContentTypeException;
    invoke-direct {p0, v7}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 764
    .end local v0    # "e":Lcom/android/mms/UnsupportContentTypeException;
    :catch_9
    move-exception v0

    .line 765
    .local v0, "e":Lcom/android/mms/ExceedMessageSizeException;
    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 772
    .end local v0    # "e":Lcom/android/mms/ExceedMessageSizeException;
    :pswitch_4
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 909
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 910
    const v0, 0x7f0a005c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 912
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 152
    const v3, 0x7f0a0047

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 153
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 154
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnSlideViewChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnSlideViewChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnSlideViewChangedListener;)V

    .line 156
    const v3, 0x7f0a0049

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 157
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v3, 0x7f0a004b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 160
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v3, 0x7f0a004c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddSlide:Landroid/widget/ImageButton;

    .line 163
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddSlide:Landroid/widget/ImageButton;

    new-instance v4, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    const v3, 0x7f0a005d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 170
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v3, 0x7f0a005f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDiscard:Landroid/widget/Button;

    .line 173
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDiscard:Landroid/widget/Button;

    new-instance v4, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v3, 0x7f0a004a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mTitleText:Landroid/widget/TextView;

    .line 194
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const v4, 0x7f0a004e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mImageContainer:Landroid/view/View;

    .line 195
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const v4, 0x7f0a0051

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButton:Landroid/view/View;

    .line 196
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButton:Landroid/view/View;

    const v4, 0x7f0a0052

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButtonImage:Landroid/widget/ImageView;

    .line 198
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sonyericsson.album"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 199
    .local v0, "albumIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 200
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "albumIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddImageButton:Landroid/view/View;

    new-instance v4, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const v4, 0x7f0a0050

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveImageButton:Landroid/view/View;

    .line 211
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveImageButton:Landroid/view/View;

    new-instance v4, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const v4, 0x7f0a0057

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioText:Landroid/view/View;

    .line 226
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const v4, 0x7f0a0055

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButton:Landroid/view/View;

    .line 227
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButton:Landroid/view/View;

    const v4, 0x7f0a0056

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButtonImage:Landroid/widget/ImageView;

    .line 229
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sonyericsson.music"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 230
    .local v2, "musicIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 236
    .end local v2    # "musicIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddAudioButton:Landroid/view/View;

    new-instance v4, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    const v4, 0x7f0a005b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveAudioButton:Landroid/view/View;

    .line 242
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveAudioButton:Landroid/view/View;

    new-instance v4, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 249
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 250
    const-string v3, "SlideEditorActivity"

    const-string v4, "mUri is null, do nothing"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 280
    :goto_2
    return-void

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 233
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 234
    .restart local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 256
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 259
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v3, v4}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 260
    new-instance v3, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, p0, v4}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 261
    const-string v3, "SlideshowPresenter"

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3, p0, v4, v5}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 265
    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 266
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 271
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 273
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    .line 274
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResultIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 275
    :catch_2
    move-exception v1

    .line 276
    .local v1, "e":Lcom/google/android/mms/MmsException;
    const-string v3, "SlideEditorActivity"

    const-string v4, "Create SlideshowModel failed!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    .line 267
    .end local v1    # "e":Lcom/google/android/mms/MmsException;
    :cond_4
    :try_start_3
    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v3, :cond_3

    .line 268
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 838
    packed-switch p1, :pswitch_data_0

    .line 873
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 840
    :pswitch_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;-><init>(Landroid/content/Context;)V

    .line 848
    .local v0, "adapter":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$16;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideEditorActivity$16;-><init>(Lcom/android/mms/ui/SlideEditorActivity;Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 838
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 350
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 496
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 518
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 498
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    goto :goto_0

    .line 502
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->addSlide()V

    goto :goto_0

    .line 506
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->removeSlide()V

    goto :goto_0

    .line 510
    :pswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto :goto_0

    .line 514
    :pswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto :goto_0

    .line 496
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 11

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    iget-boolean v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_2

    .line 310
    :try_start_1
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 311
    .local v4, "pb":Lcom/google/android/mms/pdu/PduBody;
    new-instance v6, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 312
    .local v6, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 313
    invoke-virtual {v6, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 314
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddresses:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddresses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 315
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddresses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 316
    .local v3, "nrDests":I
    if-lez v3, :cond_1

    .line 317
    new-array v1, v3, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 318
    .local v1, "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 319
    new-instance v8, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mAddresses:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v8, v1, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 325
    .end local v1    # "encodedAddresses":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2    # "i":I
    .end local v3    # "nrDests":I
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    if-eqz v7, :cond_3

    .line 326
    invoke-static {p0}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->getSomcPduPersister(Landroid/content/Context;)Lcom/sonyericsson/conversations/data/SomcPduPersister;

    move-result-object v5

    .line 327
    .local v5, "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v7, v6}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 328
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v7, v4}, Lcom/sonyericsson/conversations/data/SomcPduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 333
    .end local v5    # "persister":Lcom/sonyericsson/conversations/data/SomcPduPersister;
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v4}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 334
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->restorePresenter()V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v4    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .end local v6    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :cond_2
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    return-void

    .line 330
    .restart local v4    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .restart local v6    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :cond_3
    :try_start_3
    const-string v7, "SlideEditorActivity"

    const-string v8, "mUri is null!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 335
    .end local v4    # "pb":Lcom/google/android/mms/pdu/PduBody;
    .end local v6    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Lcom/google/android/mms/MmsException;
    :try_start_4
    const-string v7, "SlideEditorActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update the message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 339
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 879
    packed-switch p1, :pswitch_data_0

    .line 899
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 902
    .end local p2    # "dialog":Landroid/app/Dialog;
    :goto_0
    return-void

    .line 881
    .restart local p2    # "dialog":Landroid/app/Dialog;
    :pswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    .line 883
    .local v0, "adapter":Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 885
    .local v1, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->removeAllMenuItems()V

    .line 887
    if-eqz v1, :cond_0

    .line 888
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addImageMenuItems()V

    .line 890
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    .line 892
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addVideoMenuItems()V

    .line 895
    :cond_0
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 879
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v3

    .line 460
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 462
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 464
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_0

    .line 469
    const/16 v5, 0xb

    const v6, 0x7f070102

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 472
    const/4 v5, 0x7

    const v6, 0x7f0700f3

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 475
    const/16 v5, 0xe

    const v6, 0x7f0700f4

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 479
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070104

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "duration":Ljava/lang/String;
    const/16 v5, 0xa

    const-string v6, "%s"

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v5, v3, v6}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 485
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 486
    const v1, 0x7f070107

    .line 490
    .local v1, "resId":I
    :goto_1
    const/16 v5, 0x9

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move v3, v4

    .line 491
    goto :goto_0

    .line 488
    .end local v1    # "resId":I
    :cond_2
    const v1, 0x7f070108

    .restart local v1    # "resId":I
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 297
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 301
    return-void
.end method
