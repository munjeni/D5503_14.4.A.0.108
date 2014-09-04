.class public Lcom/sonymobile/china/collage/CollageLaunchActivity;
.super Landroid/app/Activity;
.source "CollageLaunchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sonymobile/china/collage/BaseCollageFragment$CollageInfoInterface;
.implements Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;,
        Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;,
        Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;,
        Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    }
.end annotation


# static fields
.field private static final BACKGROUND:I = 0x3

.field public static final BACKGROUND_ID:Ljava/lang/String; = "background_id"

.field private static final DEBUG:Z = true

.field private static final FREE:I = 0x2

.field private static final FREE_COLLAGE_FRAGMENT:Ljava/lang/String; = "FreeCollageFragment"

.field private static final GRID:I = 0x1

.field private static final GRID_COLLAGE_FRAGMENT:Ljava/lang/String; = "GridCollageFragment"

.field private static final IMAGE_SCALE_FACTOR:F = 0.9f

.field public static final INVALID_RES_ID:I = -0x1

.field private static final KEY_RECENT_LIST:Ljava/lang/String; = "key_recent_list"

.field private static final KEY_SHUFFLE_TOAST_POPUP_TIMES:Ljava/lang/String; = "key_shuffle_toast_popup_times"

.field private static final MAX_PIC_NUM:I = 0x6

.field private static final MAX_RECENT_LENGTH:I = 0xa

.field private static final MIN_START_COLLAGE_PIC_NUM:I = 0x2

.field public static final PANE_SIZE:Ljava/lang/String; = "pane_size"

.field private static final RECENT:I = 0x0

.field public static final REQUEST_PICK_BACKGROUND:I = 0x0

.field public static final REQUEST_PICK_IMAGE:I = 0x1

.field public static final REQUEST_PICK_IMAGE_FOR_EMPTY:I = 0x2

.field private static final SHUFFLE_TOAST_POPUP_TIMES:I = 0x5

.field public static final SPLIT_CHAR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

.field private mBgBitmaps:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<[",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mBgBtnClickListener:Landroid/view/View$OnClickListener;

.field private mChangeBg:Z

.field private final mCollageViewSize:[I

.field private mCurFragment:I

.field private mCurPicNum:I

.field private mCurSelectedTab:I

.field private mFreeBtnClickListener:Landroid/view/View$OnClickListener;

.field private mGridBtnClickListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private final mPicBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPicUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecentBtnClickListener:Landroid/view/View$OnClickListener;

.field private mRestoreFlag:Z

.field private mSavedInstancesUris:[Landroid/net/Uri;

.field private mSelectColor:I

.field private mSelectedBg:Ljava/lang/String;

.field private mSelectedTemplate:I

.field private mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

.field private mSoundFeedback:Lcom/sonymobile/china/collage/utils/SoundFeedback;

.field private mThumbPaddingH:I

.field private mUnselectColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/sonymobile/china/collage/CollageLaunchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 149
    iput v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    .line 155
    iput v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    .line 158
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mHandler:Landroid/os/Handler;

    .line 175
    iput v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    .line 181
    iput-boolean v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z

    .line 185
    iput v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mUnselectColor:I

    .line 187
    new-instance v0, Landroid/util/Pair;

    new-array v1, v2, [Landroid/graphics/Bitmap;

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    .line 189
    iput-boolean v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    .line 955
    new-instance v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$5;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRecentBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1003
    new-instance v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$6;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$6;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mGridBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1014
    new-instance v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$7;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$7;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mFreeBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1025
    new-instance v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;

    invoke-direct {v0, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$8;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBtnClickListener:Landroid/view/View$OnClickListener;

    .line 1488
    return-void

    .line 158
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/china/collage/CollageLaunchActivity;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTemplateBySelect(ZI)V

    return-void
.end method

.method static synthetic access$1202(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Landroid/util/Pair;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->showCollagePicturesNumPopupMenu(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;
    .param p2, "x2"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->setTextForPicBtn(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->showProgressBar()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getCollageSize()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonymobile/china/collage/CollageLaunchActivity;)[Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/sonymobile/china/collage/CollageLaunchActivity;[Landroid/net/Uri;)[Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # [Landroid/net/Uri;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->cancelProgressDialog()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateBackgroundList()V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/china/collage/CollageLaunchActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateListTabStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTextForPicBtn()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->initDefaultCollage()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateShuffleToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    return v0
.end method

.method static synthetic access$602(Lcom/sonymobile/china/collage/CollageLaunchActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    return p1
.end method

.method static synthetic access$700(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonymobile/china/collage/CollageLaunchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sonymobile/china/collage/CollageLaunchActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    iget v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    return v0
.end method

.method static synthetic access$900(Lcom/sonymobile/china/collage/CollageLaunchActivity;)Ljava/util/SortedSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/china/collage/CollageLaunchActivity;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getRecentList()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method private addBgSelectListener()V
    .locals 2

    .prologue
    .line 1136
    const v1, 0x7f0c0004

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    .local v0, "selBtn":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1140
    :cond_0
    new-instance v1, Lcom/sonymobile/china/collage/CollageLaunchActivity$10;

    invoke-direct {v1, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$10;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private addClickFeedbackForMainBar()V
    .locals 5

    .prologue
    .line 1253
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1254
    .local v3, "recent":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1255
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1256
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1259
    :cond_0
    const v4, 0x7f0c000e

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1260
    .local v2, "grid":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1261
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1262
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    :cond_1
    const v4, 0x7f0c000f

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1266
    .local v1, "free":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1267
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1268
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1271
    :cond_2
    const v4, 0x7f0c0010

    invoke-virtual {p0, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1272
    .local v0, "background":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1273
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1274
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    :cond_3
    return-void
.end method

.method private cancelProgressDialog()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1649
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1651
    :cond_1
    return-void
.end method

.method private clear()V
    .locals 3

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "focusView":Landroid/view/View;
    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    packed-switch v1, :pswitch_data_0

    .line 345
    :goto_0
    if-eqz v0, :cond_0

    .line 346
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "focusView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 350
    :cond_0
    return-void

    .line 333
    .restart local v0    # "focusView":Landroid/view/View;
    :pswitch_0
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 334
    goto :goto_0

    .line 336
    :pswitch_1
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 337
    goto :goto_0

    .line 339
    :pswitch_2
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 340
    goto :goto_0

    .line 342
    :pswitch_3
    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getCollageSize()[I
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 465
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 466
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 469
    new-instance v7, Landroid/util/TypedValue;

    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    .line 470
    .local v7, "tv":Landroid/util/TypedValue;
    const/4 v0, -0x1

    .line 471
    .local v0, "actionBarHeight":I
    const/4 v5, -0x1

    .line 472
    .local v5, "statusBarHeight":I
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x10102eb

    invoke-virtual {v8, v9, v7, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 473
    iget v8, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 479
    sget-object v8, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " actionBarHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mStatusBarHeight: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 484
    .local v6, "toolBarHeight":I
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09004b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 486
    .local v2, "margin":I
    sget-object v8, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toolBarHeight"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget v8, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v9, v2, 0x2

    sub-int v4, v8, v9

    .line 490
    .local v4, "paneViewWidth":I
    iget v8, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v8, v5

    sub-int/2addr v8, v0

    sub-int/2addr v8, v6

    mul-int/lit8 v9, v2, 0x2

    sub-int v3, v8, v9

    .line 493
    .local v3, "paneViewHeight":I
    sget-object v8, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "paneViewWidth"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", paneViewHeight:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v4, v8, v9

    aput v3, v8, v11

    return-object v8
.end method

.method private getFragmentById(I)Landroid/app/Fragment;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 741
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    .line 742
    .local v1, "fragment":Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 745
    .end local v1    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v1

    .restart local v1    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPicNum()I
    .locals 6

    .prologue
    .line 1235
    const/4 v2, 0x2

    .line 1236
    .local v2, "picNum":I
    const v5, 0x7f0c0003

    invoke-virtual {p0, v5}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1237
    .local v0, "btn":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v5, v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    if-nez v5, :cond_1

    :cond_0
    move v3, v2

    .line 1246
    .end local v2    # "picNum":I
    .local v3, "picNum":I
    :goto_0
    return v3

    .end local v3    # "picNum":I
    .restart local v2    # "picNum":I
    :cond_1
    move-object v1, v0

    .line 1240
    check-cast v1, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    .line 1241
    .local v1, "imgBtn":Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 1243
    .local v4, "tag":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1244
    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_2
    move v3, v2

    .line 1246
    .end local v2    # "picNum":I
    .restart local v3    # "picNum":I
    goto :goto_0
.end method

.method private getPixelsFromDip(F)F
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 1156
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1157
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
    .line 1167
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1168
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    return v1
.end method

.method private getRecentList()Ljava/util/SortedSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 793
    .local v4, "sp":Landroid/content/SharedPreferences;
    const-string v6, "key_recent_list"

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 794
    .local v1, "olds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 795
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 796
    .local v3, "sortedElements":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 797
    new-instance v2, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v2, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;-><init>(Ljava/lang/String;)V

    .line 798
    .local v2, "per":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 801
    .end local v2    # "per":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    :cond_0
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 802
    .local v5, "testit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 803
    sget-object v7, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    invoke-virtual {v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 807
    :cond_1
    return-object v3
.end method

.method private initDefaultCollage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1283
    invoke-static {}, Lcom/sonymobile/china/collage/CollageConfigurer;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v0

    .line 1284
    .local v0, "bgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    .line 1285
    iput v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    .line 1286
    invoke-direct {p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateListTabStatus(Z)V

    .line 1287
    return-void
.end method

.method private randomCollage()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1293
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 1294
    .local v4, "random":Ljava/util/Random;
    invoke-virtual {v4}, Ljava/util/Random;->nextBoolean()Z

    move-result v3

    .line 1296
    .local v3, "isFree":Z
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPicNum()I

    move-result v2

    .line 1297
    .local v2, "curSelectedPicNum":I
    iget-object v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v13, 0x6

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1300
    .local v0, "actualPicNum":I
    invoke-static {v12, v3, v0}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v8

    .line 1302
    .local v8, "templates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 1303
    :cond_0
    sget-object v10, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to retrieve templats, isFree:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", actualPicNum:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    .line 1308
    .local v7, "selectedIndex":I
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    .line 1311
    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object v13, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v13}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1312
    invoke-static {}, Lcom/sonymobile/china/collage/CollageConfigurer;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1314
    .local v1, "backgrounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 1315
    .local v5, "selectBgIndex":I
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1316
    .local v6, "selectedBg":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1317
    iput-boolean v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    .line 1318
    iput-object v6, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    .line 1322
    .end local v1    # "backgrounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "selectBgIndex":I
    .end local v6    # "selectedBg":Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_3

    .line 1323
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V

    .line 1328
    :goto_1
    invoke-static {v11, v3, v0}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v9

    .line 1330
    .local v9, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v3, :cond_4

    :goto_2
    iget v12, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v11, v12, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateRecentCache(ZII)V

    .line 1333
    iget v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 1341
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateRecentList()V

    goto :goto_0

    .line 1325
    .end local v9    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-direct {p0, v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V

    goto :goto_1

    .restart local v9    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    move v11, v12

    .line 1330
    goto :goto_2

    .line 1335
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateFreeList()V

    goto :goto_0

    .line 1338
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateGridList()V

    goto :goto_0

    .line 1344
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateBackgroundList()V

    goto :goto_0

    .line 1333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private restoreInstances(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    if-eqz p1, :cond_1

    .line 259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z

    .line 260
    const-string v2, "mSavedInstancesUris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 262
    .local v1, "uris":[Landroid/os/Parcelable;
    instance-of v2, v1, [Landroid/net/Uri;

    if-eqz v2, :cond_2

    .line 263
    check-cast v1, [Landroid/net/Uri;

    .end local v1    # "uris":[Landroid/os/Parcelable;
    check-cast v1, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    .line 270
    :goto_0
    const-string v2, "mCurSelectedTab"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    .line 272
    const-string v2, "mSelectedTemplate"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    .line 273
    const-string v2, "mSelectedBg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    .line 274
    const-string v2, "mCurPicNum"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    .line 275
    const-string v2, "mCurFragment"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I

    .line 276
    const-string v2, "mBgUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "bgStr":Ljava/lang/String;
    const-string v2, "mChangeBg"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    .line 282
    :cond_0
    sget-object v2, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelectedTemplate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSelectedBg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurPicNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurFragment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    .end local v0    # "bgStr":Ljava/lang/String;
    :cond_1
    return-void

    .line 266
    .restart local v1    # "uris":[Landroid/os/Parcelable;
    :cond_2
    sget-object v2, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    const-string v3, "restoreInstances mSavedInstancesUris not instanceof Uri[]"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setTextForPicBtn(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;I)V
    .locals 4
    .param p1, "button"    # Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;
    .param p2, "itemId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1198
    move v0, p2

    .line 1199
    .local v0, "picNum":I
    iput v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    .line 1200
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTextForPicBtn()V

    .line 1201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTag(Ljava/lang/Object;)V

    .line 1202
    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    if-ne v1, v3, :cond_0

    .line 1203
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateGridList()V

    .line 1204
    invoke-direct {p0, v2, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTemplateBySelect(ZI)V

    .line 1209
    :goto_0
    return-void

    .line 1206
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateFreeList()V

    .line 1207
    invoke-direct {p0, v3, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTemplateBySelect(ZI)V

    goto :goto_0
.end method

.method private setUpFragment(I)V
    .locals 11
    .param p1, "flag"    # I

    .prologue
    const v10, 0x7f0c0011

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 403
    sget-object v5, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setUpFragment flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iput p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I

    .line 406
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 408
    .local v1, "fm":Landroid/app/FragmentManager;
    if-ne p1, v8, :cond_0

    .line 409
    const-string v5, "GridCollageFragment"

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 410
    .local v2, "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 411
    check-cast v2, Lcom/sonymobile/china/collage/GridCollageFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    iget v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    iget-object v6, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/sonymobile/china/collage/GridCollageFragment;->updateTemplate(ILjava/lang/String;)V

    .line 457
    :goto_0
    return-void

    .line 415
    :cond_0
    const-string v5, "FreeCollageFragment"

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 416
    .restart local v2    # "fragment":Landroid/app/Fragment;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    check-cast v2, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    iget v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    iget-object v6, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;->updateTemplate(ILjava/lang/String;)V

    goto :goto_0

    .line 422
    .restart local v2    # "fragment":Landroid/app/Fragment;
    :cond_1
    if-ne p1, v8, :cond_4

    .line 423
    new-instance v2, Lcom/sonymobile/china/collage/GridCollageFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/sonymobile/china/collage/GridCollageFragment;-><init>()V

    .line 428
    .local v2, "fragment":Lcom/sonymobile/china/collage/BaseCollageFragment;
    :goto_1
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 429
    .local v4, "transaction":Landroid/app/FragmentTransaction;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 430
    .local v0, "args":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    aget v5, v5, v9

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    aget v5, v5, v8

    if-nez v5, :cond_3

    .line 431
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getCollageSize()[I

    move-result-object v3

    .line 433
    .local v3, "size":[I
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    aget v6, v3, v9

    aput v6, v5, v9

    .line 434
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    aget v6, v3, v8

    aput v6, v5, v8

    .line 436
    .end local v3    # "size":[I
    :cond_3
    const-string v5, "pane_size"

    iget-object v6, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCollageViewSize:[I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 437
    const-string v5, "background_id"

    iget-object v6, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2, v0}, Lcom/sonymobile/china/collage/BaseCollageFragment;->setArguments(Landroid/os/Bundle;)V

    .line 439
    if-ne p1, v8, :cond_5

    .line 440
    const-string v5, "GridCollageFragment"

    invoke-virtual {v4, v10, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 445
    :goto_2
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 446
    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 448
    iget-object v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity$4;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/BaseCollageFragment;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 425
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "transaction":Landroid/app/FragmentTransaction;
    .local v2, "fragment":Landroid/app/Fragment;
    :cond_4
    new-instance v2, Lcom/sonymobile/china/collage/free/FreeCollageFragment;

    .end local v2    # "fragment":Landroid/app/Fragment;
    invoke-direct {v2}, Lcom/sonymobile/china/collage/free/FreeCollageFragment;-><init>()V

    .local v2, "fragment":Lcom/sonymobile/china/collage/BaseCollageFragment;
    goto :goto_1

    .line 442
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v4    # "transaction":Landroid/app/FragmentTransaction;
    :cond_5
    const-string v5, "FreeCollageFragment"

    invoke-virtual {v4, v10, v2, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_2
.end method

.method private showCollagePicturesNumPopupMenu(Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V
    .locals 7
    .param p1, "anchor"    # Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    .prologue
    const/4 v6, 0x0

    .line 1177
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1178
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x6

    if-gt v0, v2, :cond_0

    .line 1179
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f070071

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v6, v0, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1181
    :cond_0
    new-instance v2, Lcom/sonymobile/china/collage/CollageLaunchActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$11;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1188
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1189
    return-void
.end method

.method private showProgressBar()Landroid/app/ProgressDialog;
    .locals 5

    .prologue
    .line 1635
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07007d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 1637
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1638
    return-object v0
.end method

.method private unselectPrevious()V
    .locals 4

    .prologue
    .line 1355
    const/4 v1, 0x0

    .line 1356
    .local v1, "viewId":I
    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    packed-switch v2, :pswitch_data_0

    .line 1371
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1372
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1373
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1374
    instance-of v2, v0, Landroid/widget/Button;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 1375
    check-cast v2, Landroid/widget/Button;

    iget v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mUnselectColor:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 1376
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1379
    :cond_0
    return-void

    .line 1358
    :pswitch_0
    const v1, 0x7f0c000d

    .line 1359
    goto :goto_0

    .line 1361
    :pswitch_1
    const v1, 0x7f0c000e

    .line 1362
    goto :goto_0

    .line 1364
    :pswitch_2
    const v1, 0x7f0c000f

    .line 1365
    goto :goto_0

    .line 1368
    :pswitch_3
    const v1, 0x7f0c0010

    goto :goto_0

    .line 1356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateBackgroundList()V
    .locals 13

    .prologue
    const/4 v12, -0x2

    const/4 v11, 0x0

    .line 700
    const v8, 0x7f0c0003

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 701
    .local v6, "picNum":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 702
    const/16 v8, 0x8

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_0
    const v8, 0x7f0c000c

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 705
    .local v0, "bgView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 731
    :cond_1
    return-void

    :cond_2
    move-object v4, v0

    .line 708
    check-cast v4, Landroid/widget/LinearLayout;

    .line 709
    .local v4, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 710
    invoke-static {}, Lcom/sonymobile/china/collage/CollageConfigurer;->getBackgroundThumbnailIds()Ljava/util/ArrayList;

    move-result-object v7

    .line 711
    .local v7, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/sonymobile/china/collage/CollageConfigurer;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v1

    .line 712
    .local v1, "bgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 713
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 714
    .local v2, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 715
    const v8, 0x7f0200ba

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 716
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 717
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 718
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget v9, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 723
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setId(I)V

    .line 724
    iget-object v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 727
    .local v5, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    iget v9, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    invoke-virtual {v5, v8, v11, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 728
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 712
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 720
    .end local v5    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 721
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private updateFreeList()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 661
    const v10, 0x7f0c0003

    invoke-virtual {p0, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 662
    .local v5, "picNum":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 663
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :cond_0
    const v10, 0x7f0c000a

    invoke-virtual {p0, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 666
    .local v1, "freeView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 693
    :cond_1
    return-void

    :cond_2
    move-object v3, v1

    .line 669
    check-cast v3, Landroid/widget/LinearLayout;

    .line 670
    .local v3, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 671
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPicNum()I

    move-result v6

    .line 672
    .local v6, "picNumber":I
    invoke-static {v11, v11, v6}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v9

    .line 674
    .local v9, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v13, v11, v6}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v8

    .line 676
    .local v8, "templates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 677
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 678
    .local v0, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 679
    const v10, 0x7f0200ba

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 680
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    if-ne v10, v11, :cond_3

    .line 681
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 685
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 686
    iget-object v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mFreeBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 689
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    invoke-virtual {v4, v10, v13, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 690
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private updateGridList()V
    .locals 15

    .prologue
    const/4 v14, -0x2

    const/4 v13, 0x0

    .line 622
    const v10, 0x7f0c0003

    invoke-virtual {p0, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 623
    .local v5, "picNum":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 624
    invoke-virtual {v5, v13}, Landroid/view/View;->setVisibility(I)V

    .line 626
    :cond_0
    const v10, 0x7f0c0008

    invoke-virtual {p0, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 627
    .local v1, "gridView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 654
    :cond_1
    return-void

    :cond_2
    move-object v3, v1

    .line 630
    check-cast v3, Landroid/widget/LinearLayout;

    .line 631
    .local v3, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 632
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPicNum()I

    move-result v6

    .line 633
    .local v6, "picNumber":I
    const/4 v10, 0x1

    invoke-static {v10, v13, v6}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v9

    .line 635
    .local v9, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v13, v13, v6}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v8

    .line 637
    .local v8, "templates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, "size":I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 638
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 639
    .local v0, "btn":Landroid/widget/ImageButton;
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 640
    const v10, 0x7f0200ba

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 641
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    if-ne v10, v11, :cond_3

    .line 642
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 646
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 647
    iget-object v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mGridBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 650
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    invoke-virtual {v4, v10, v13, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 651
    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    .end local v4    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private updateImageNumber()V
    .locals 3

    .prologue
    .line 1112
    const/high16 v2, 0x41800000

    invoke-direct {p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTextSize(I)V

    .line 1113
    const/high16 v2, 0x40800000

    invoke-direct {p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTrianglePadding(I)V

    .line 1114
    const/high16 v2, 0x41200000

    invoke-direct {p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPixelsFromDip(F)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTriangleSize(I)V

    .line 1115
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setTextPadding(I)V

    .line 1116
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1117
    .local v1, "picNum":Landroid/view/View;
    if-nez v1, :cond_0

    .line 1130
    :goto_0
    return-void

    :cond_0
    move-object v0, v1

    .line 1120
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    .line 1121
    .local v0, "imgBtn":Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;
    new-instance v2, Lcom/sonymobile/china/collage/CollageLaunchActivity$9;

    invoke-direct {v2, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$9;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateListTabStatus(ILandroid/view/View;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 908
    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    if-eq v1, p1, :cond_2

    .line 909
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->unselectPrevious()V

    .line 910
    iput p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    .line 911
    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    if-nez v1, :cond_0

    .line 912
    invoke-static {}, Lcom/sonymobile/china/collage/CollageConfigurer;->getBackgrounds()Ljava/util/ArrayList;

    move-result-object v0

    .line 913
    .local v0, "bgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    .line 914
    iput-boolean v4, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    .line 916
    .end local v0    # "bgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 917
    instance-of v1, p2, Landroid/widget/Button;

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 918
    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 919
    check-cast p2, Landroid/widget/Button;

    .end local p2    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v4

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 921
    :cond_1
    invoke-direct {p0, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateSecondToolBar(Z)V

    .line 923
    :cond_2
    return-void
.end method

.method private updateListTabStatus(Z)V
    .locals 4
    .param p1, "needUpdateTemplate"    # Z

    .prologue
    const/4 v3, 0x1

    .line 926
    const/4 v0, 0x0

    .line 927
    .local v0, "focusView":Landroid/view/View;
    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    packed-switch v1, :pswitch_data_0

    .line 941
    :goto_0
    if-eqz v0, :cond_1

    .line 942
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->unselectPrevious()V

    .line 943
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 944
    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 945
    check-cast v1, Landroid/widget/Button;

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 946
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "focusView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v3

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 948
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateSecondToolBar(Z)V

    .line 950
    :cond_1
    return-void

    .line 929
    .restart local v0    # "focusView":Landroid/view/View;
    :pswitch_0
    const v1, 0x7f0c000d

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 930
    goto :goto_0

    .line 932
    :pswitch_1
    const v1, 0x7f0c000e

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 933
    goto :goto_0

    .line 935
    :pswitch_2
    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 936
    goto :goto_0

    .line 938
    :pswitch_3
    const v1, 0x7f0c0010

    invoke-virtual {p0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 927
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateRecentCache(ZII)V
    .locals 12
    .param p1, "isGrid"    # Z
    .param p2, "templateId"    # I
    .param p3, "thumbnailId"    # I

    .prologue
    .line 756
    new-instance v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    invoke-direct {v0, p2, p3, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;-><init>(IIZ)V

    .line 758
    .local v0, "cur":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 761
    .local v9, "sp":Landroid/content/SharedPreferences;
    const-string v10, "key_recent_list"

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 762
    .local v3, "olds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 763
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/TreeSet;

    invoke-direct {v8}, Ljava/util/TreeSet;-><init>()V

    .line 764
    .local v8, "sortedElements":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 765
    new-instance v4, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v4, v10}, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;-><init>(Ljava/lang/String;)V

    .line 766
    .local v4, "per":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    invoke-virtual {v4, v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 767
    invoke-interface {v8, v4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 770
    .end local v4    # "per":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    :cond_1
    invoke-interface {v8, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 772
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 773
    .local v7, "sortIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 774
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    .line 775
    .local v6, "size":I
    const/16 v10, 0xa

    if-ne v6, v10, :cond_3

    .line 782
    .end local v6    # "size":I
    :cond_2
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "key_recent_list"

    invoke-interface {v10, v11, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 783
    return-void

    .line 778
    .restart local v6    # "size":I
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    .line 779
    .local v1, "each":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    add-int/lit8 v10, v6, 0x1

    iput v10, v1, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->orderId:I

    .line 780
    invoke-virtual {v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateRecentList()V
    .locals 15

    .prologue
    .line 583
    const v11, 0x7f0c0003

    invoke-virtual {p0, v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 584
    .local v7, "picNum":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 585
    const/16 v11, 0x8

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :cond_0
    const v11, 0x7f0c0006

    invoke-virtual {p0, v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 588
    .local v8, "recentView":Landroid/view/View;
    if-nez v8, :cond_2

    .line 615
    :cond_1
    return-void

    :cond_2
    move-object v5, v8

    .line 591
    check-cast v5, Landroid/widget/LinearLayout;

    .line 592
    .local v5, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 593
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getRecentList()Ljava/util/SortedSet;

    move-result-object v9

    .line 594
    .local v9, "recents":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    const/4 v10, 0x0

    .line 595
    .local v10, "selectedOne":I
    const/4 v2, 0x0

    .line 596
    .local v2, "i":I
    invoke-interface {v9}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 597
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 598
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    .line 599
    .local v1, "each":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 600
    .local v0, "btn":Landroid/widget/ImageButton;
    iget v11, v1, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 601
    const v11, 0x7f0200ba

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 602
    if-nez v2, :cond_3

    .line 603
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget v12, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 607
    :goto_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v6, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 609
    .local v6, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    const/4 v12, 0x0

    iget v13, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    const/4 v14, 0x0

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 610
    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setId(I)V

    .line 612
    iget-object v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRecentBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 613
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v3

    .line 614
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 605
    .end local v6    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_1
.end method

.method private updateSecondToolBar(Z)V
    .locals 2
    .param p1, "needUpdateTemplate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateSecondToolbarVisible()V

    .line 505
    iget v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    packed-switch v0, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 507
    :pswitch_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateRecentList()V

    goto :goto_0

    .line 510
    :pswitch_1
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateGridList()V

    .line 511
    if-eqz p1, :cond_0

    .line 512
    invoke-direct {p0, v1, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTemplateBySelect(ZI)V

    goto :goto_0

    .line 517
    :pswitch_2
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateFreeList()V

    .line 518
    if-eqz p1, :cond_0

    .line 519
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTemplateBySelect(ZI)V

    goto :goto_0

    .line 523
    :pswitch_3
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateBackgroundList()V

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSecondToolbarVisible()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 532
    const v6, 0x7f0c0003

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 533
    .local v4, "picNum":Landroid/view/View;
    const v6, 0x7f0c0004

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 534
    .local v1, "bgSelect":Landroid/view/View;
    const v6, 0x7f0c0005

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 535
    .local v5, "recent":Landroid/view/View;
    const v6, 0x7f0c0007

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 536
    .local v3, "grid":Landroid/view/View;
    const v6, 0x7f0c0009

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 537
    .local v2, "free":Landroid/view/View;
    const v6, 0x7f0c000b

    invoke-virtual {p0, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 538
    .local v0, "background":Landroid/view/View;
    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget v6, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 544
    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 545
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 546
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 547
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 548
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 549
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 552
    :pswitch_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 553
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 554
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 555
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 556
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 557
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 560
    :pswitch_2
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 561
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 562
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 563
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 564
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 565
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 568
    :pswitch_3
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 569
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 570
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 571
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 572
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 573
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateShuffleToast()V
    .locals 5

    .prologue
    .line 1700
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1703
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v3, "key_shuffle_toast_popup_times"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1704
    .local v1, "times":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "times":I
    .local v2, "times":I
    const/4 v3, 0x5

    if-ge v1, v3, :cond_0

    .line 1705
    const v3, 0x7f07007b

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1707
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "key_shuffle_toast_popup_times"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1709
    :cond_0
    return-void
.end method

.method private updateTemplateBySelect(ZI)V
    .locals 13
    .param p1, "isFree"    # Z
    .param p2, "selectedViewId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    const v8, 0x7f0c000a

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1080
    .local v3, "list":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1081
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 1082
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1083
    .local v0, "btn":Landroid/widget/ImageButton;
    if-ne p2, v2, :cond_1

    .line 1084
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget v11, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v11, v12}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1081
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1078
    .end local v0    # "btn":Landroid/widget/ImageButton;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "list":Landroid/widget/LinearLayout;
    :cond_0
    const v8, 0x7f0c0008

    invoke-virtual {p0, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "list":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 1086
    .restart local v0    # "btn":Landroid/widget/ImageButton;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_2

    .line 1091
    .end local v0    # "btn":Landroid/widget/ImageButton;
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPicNum()I

    move-result v4

    .line 1092
    .local v4, "picNumber":I
    invoke-static {v10, p1, v4}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v6

    .line 1094
    .local v6, "templates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1095
    .local v5, "templateId":I
    iget v8, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    if-ne v5, v8, :cond_3

    .line 1105
    :goto_3
    return-void

    .line 1098
    :cond_3
    iput v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    .line 1099
    if-eqz p1, :cond_4

    const/4 v8, 0x2

    :goto_4
    invoke-direct {p0, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->setUpFragment(I)V

    .line 1102
    invoke-static {v9, p1, v4}, Lcom/sonymobile/china/collage/CollageConfigurer;->getResourceIds(ZZI)Ljava/util/ArrayList;

    move-result-object v7

    .line 1104
    .local v7, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_5

    :goto_5
    iget v10, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v9, v10, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateRecentCache(ZII)V

    goto :goto_3

    .end local v7    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    move v8, v9

    .line 1099
    goto :goto_4

    .restart local v7    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    move v9, v10

    .line 1104
    goto :goto_5
.end method

.method private updateTextForPicBtn()V
    .locals 6

    .prologue
    .line 1218
    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    if-lez v2, :cond_0

    .line 1219
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    .local v0, "btn":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    if-eqz v2, :cond_0

    .line 1221
    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1222
    const v2, 0x7f070071

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurPicNum:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1223
    .local v1, "s":Ljava/lang/String;
    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;

    .end local v0    # "btn":Landroid/view/View;
    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/filtershow/ui/FramedTextButton;->setText(Ljava/lang/String;)V

    .line 1227
    .end local v1    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addPicture([Landroid/net/Uri;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V
    .locals 8
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "pcb"    # Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1549
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    invoke-virtual {v3}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v3, v4, :cond_0

    .line 1550
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    invoke-virtual {v3, v6}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->cancel(Z)Z

    .line 1551
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    .line 1554
    :cond_0
    iget-boolean v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z

    if-eqz v3, :cond_4

    .line 1555
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1556
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1557
    new-instance v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;

    invoke-direct {v0, p0, p2}, Lcom/sonymobile/china/collage/CollageLaunchActivity$12;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    .line 1579
    .local v0, "callback":Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;
    const/4 v2, 0x0

    .line 1580
    .local v2, "temp":[Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1581
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    array-length v4, v4

    array-length v5, p1

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "temp":[Landroid/net/Uri;
    check-cast v2, [Landroid/net/Uri;

    .line 1583
    .restart local v2    # "temp":[Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    array-length v1, v3

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 1584
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSavedInstancesUris:[Landroid/net/Uri;

    array-length v3, v3

    sub-int v3, v1, v3

    aget-object v3, p1, v3

    aput-object v3, v2, v1

    .line 1583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1586
    .end local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-lez v3, :cond_2

    .line 1587
    move-object v2, p1

    .line 1590
    :cond_2
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 1591
    new-instance v3, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    iput-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    .line 1592
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    new-array v4, v6, [[Landroid/net/Uri;

    aput-object v2, v4, v7

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1613
    .end local v0    # "callback":Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;
    .end local v2    # "temp":[Landroid/net/Uri;
    :goto_1
    return-void

    .line 1594
    .restart local v0    # "callback":Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;
    .restart local v2    # "temp":[Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;

    invoke-direct {v4, p0, v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$13;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1610
    .end local v0    # "callback":Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;
    .end local v2    # "temp":[Landroid/net/Uri;
    :cond_4
    new-instance v3, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    invoke-direct {v3, p0, p2}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    iput-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    .line 1611
    iget-object v3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    new-array v4, v6, [[Landroid/net/Uri;

    aput-object p1, v4, v7

    invoke-virtual {v3, v4}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public getBgPicBitmaps()[Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPicBitmaps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1671
    if-nez p2, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1674
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1688
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1677
    :pswitch_0
    sget-object v1, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    const-string v2, "onActivityResult REQUEST_PICK_BACKGROUND"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    if-eqz p3, :cond_1

    .line 1680
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1682
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1683
    new-instance v1, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 1674
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c0011

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 374
    .local v0, "curFrag":Landroid/app/Fragment;
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;

    new-instance v2, Lcom/sonymobile/china/collage/CollageLaunchActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$2;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/app/Fragment;)V

    new-instance v3, Lcom/sonymobile/china/collage/CollageLaunchActivity$3;

    invoke-direct {v3, p0, v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$3;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Landroid/app/Fragment;)V

    const v4, 0x7f070073

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    invoke-virtual {v1}, Lcom/sonymobile/china/photoeditor/filtershow/YesNoCancelDialogBuilder;->show()Landroid/app/AlertDialog;

    .line 394
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1663
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1664
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1665
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateListTabStatus(ILandroid/view/View;)V

    .line 1667
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 194
    const v7, 0x7f030001

    invoke-virtual {p0, v7}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->setContentView(I)V

    .line 195
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 196
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 197
    const v7, 0x7f070072

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setTitle(I)V

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectColor:I

    .line 200
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 203
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v3, "picUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.sonymobile.photoeditor.action.CREATE_COLLAGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 208
    const-string v7, "com.sonymobile.photoeditor.extra.IMAGE_URI_LIST"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 210
    .local v6, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 219
    .end local v6    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateImageNumber()V

    .line 220
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->addClickFeedbackForMainBar()V

    .line 221
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->addBgSelectListener()V

    .line 222
    iget-object v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 223
    iget-object v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 224
    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/Bitmap;

    sget-object v9, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    .line 227
    invoke-direct {p0, p1}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->restoreInstances(Landroid/os/Bundle;)V

    .line 228
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->updateTextForPicBtn()V

    .line 229
    iget-boolean v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mRestoreFlag:Z

    if-eqz v7, :cond_2

    .line 230
    new-array v7, v10, [Landroid/net/Uri;

    invoke-virtual {p0, v7, v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->addPicture([Landroid/net/Uri;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    .line 231
    iget-object v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 232
    .local v1, "bgUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 233
    new-instance v7, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;

    invoke-direct {v7, p0, v11}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;Lcom/sonymobile/china/collage/CollageLaunchActivity$1;)V

    const/4 v8, 0x1

    new-array v8, v8, [Landroid/net/Uri;

    aput-object v1, v8, v10

    invoke-virtual {v7, v8}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddBgPictureTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    .end local v1    # "bgUri":Landroid/net/Uri;
    :cond_0
    :goto_1
    new-instance v7, Lcom/sonymobile/china/collage/utils/ShakeDetector;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonymobile/china/collage/utils/ShakeDetector;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    .line 252
    new-instance v7, Lcom/sonymobile/china/collage/utils/SoundFeedback;

    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sonymobile/china/collage/utils/SoundFeedback;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSoundFeedback:Lcom/sonymobile/china/collage/utils/SoundFeedback;

    .line 253
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mThumbPaddingH:I

    .line 255
    return-void

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 213
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v7, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 236
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Landroid/net/Uri;

    .line 237
    .local v5, "uris":[Landroid/net/Uri;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 238
    new-instance v7, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;

    invoke-direct {v7, p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$1;-><init>(Lcom/sonymobile/china/collage/CollageLaunchActivity;)V

    invoke-virtual {p0, v5, v7}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->addPicture([Landroid/net/Uri;Lcom/sonymobile/china/collage/CollageLaunchActivity$PictureAddCallback;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mAddPicTask:Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/collage/CollageLaunchActivity$AddPictureTask;->cancel(Z)Z

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->clear()V

    .line 322
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->cancelProgressDialog()V

    .line 323
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSoundFeedback:Lcom/sonymobile/china/collage/utils/SoundFeedback;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSoundFeedback:Lcom/sonymobile/china/collage/utils/SoundFeedback;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/utils/SoundFeedback;->dispose()V

    .line 326
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 327
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 292
    sget-object v0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 295
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/collage/utils/ShakeDetector;->registerOnShakeListener(Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;)V

    .line 297
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/utils/ShakeDetector;->start()V

    .line 299
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 355
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/net/Uri;

    .line 356
    .local v0, "uris":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 358
    sget-object v1, Lcom/sonymobile/china/collage/CollageLaunchActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveInstanceState uris:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string v1, "mSavedInstancesUris"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 361
    const-string v1, "mCurFragment"

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurFragment:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 362
    const-string v1, "mCurSelectedTab"

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mCurSelectedTab:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 363
    const-string v1, "mSelectedTemplate"

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedTemplate:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 364
    const-string v1, "mSelectedBg"

    iget-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSelectedBg:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v1, "mCurPicNum"

    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->getPicNum()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 366
    const-string v2, "mBgUri"

    iget-object v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mBgBitmaps:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "mChangeBg"

    iget-boolean v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mChangeBg:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 368
    return-void
.end method

.method public onShake()V
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSoundFeedback:Lcom/sonymobile/china/collage/utils/SoundFeedback;

    if-eqz v0, :cond_0

    .line 1656
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mSoundFeedback:Lcom/sonymobile/china/collage/utils/SoundFeedback;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/utils/SoundFeedback;->sound()V

    .line 1658
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/china/collage/CollageLaunchActivity;->randomCollage()V

    .line 1659
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 304
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    invoke-virtual {v0}, Lcom/sonymobile/china/collage/utils/ShakeDetector;->stop()V

    .line 306
    iget-object v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mShakeDetector:Lcom/sonymobile/china/collage/utils/ShakeDetector;

    invoke-virtual {v0, p0}, Lcom/sonymobile/china/collage/utils/ShakeDetector;->unregisterOnShakeListener(Lcom/sonymobile/china/collage/utils/ShakeDetector$OnShakeListener;)V

    .line 308
    :cond_0
    return-void
.end method

.method public removePicture(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1617
    const/4 v0, 0x0

    .line 1618
    .local v0, "index":I
    iget-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1619
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1620
    iget-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1621
    iget-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1625
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity;->mPicUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1626
    const/4 v2, 0x0

    return v2

    .line 1619
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
