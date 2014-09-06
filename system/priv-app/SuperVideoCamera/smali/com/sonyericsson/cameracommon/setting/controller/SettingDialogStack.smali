.class public Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
.super Ljava/lang/Object;
.source "SettingDialogStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;
    }
.end annotation


# static fields
.field private static final DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

.field private final mDialogBackground:Landroid/view/ViewGroup;

.field private final mDialogTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMenuDialogOpened:Z

.field private mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

.field private mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

.field private mOrientation:I

.field private mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

.field private mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

.field private final mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

.field private mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

.field private mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

.field private mShortcutDialotTitleId:I

.field private final mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

.field private mTargetAreaList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->TAG:Ljava/lang/String;

    .line 822
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$1;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogListener"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;
    .param p3, "shortcutContainer"    # Landroid/view/ViewGroup;
    .param p4, "dialogContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ListView;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingDialogListener"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;
    .param p3, "shortcutContainer"    # Landroid/view/ViewGroup;
    .param p4, "dialogContainer"    # Landroid/view/ViewGroup;
    .param p5, "settingShortcutItems"    # Landroid/widget/ListView;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    .line 99
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 103
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    .line 104
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack$Background;-><init>(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-direct {v0, p1, p3, p5}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    .line 112
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 113
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 114
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 115
    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 123
    new-instance v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    invoke-direct {v0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Landroid/view/View$OnKeyListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    return-object v0
.end method

.method private closeControlDialog(Z)Z
    .locals 3
    .param p1, "isAnimation"    # Z

    .prologue
    .line 556
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    if-eqz p1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 567
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 569
    const/4 v0, 0x1

    .line 571
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeMenuDialog(Z)Z
    .locals 4
    .param p1, "isAnimation"    # Z

    .prologue
    const/4 v0, 0x0

    .line 517
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    if-eqz p1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    .line 526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 527
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 529
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 531
    const/4 v0, 0x1

    .line 533
    :cond_1
    return v0
.end method

.method private closeSecondLayerDialog(Z)Z
    .locals 3
    .param p1, "isAnimation"    # Z

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    if-eqz p1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 586
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 589
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeShortcutDialog(Z)Z
    .locals 3
    .param p1, "isAnimation"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    if-eqz p1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setCloseDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->close()V

    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 548
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->removeLastRectList()V

    .line 550
    const/4 v0, 0x1

    .line 552
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 651
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 652
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-object v2

    .line 656
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 657
    .local v1, "shortcutIcon":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 661
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 663
    :cond_2
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v2, v3

    goto :goto_0
.end method

.method private generateSecondLayerDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 627
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 628
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-object v2

    .line 632
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 633
    .local v1, "menuItem":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v3, :cond_3

    .line 634
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getSelectedItemRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 647
    :cond_2
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 638
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v3, :cond_0

    .line 639
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->getSelectedItemRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0
.end method

.method private generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 610
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getContainerRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 611
    .local v0, "container":Landroid/graphics/Rect;
    if-nez v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-object v2

    .line 615
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 616
    .local v1, "shortcutIcon":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v3, :cond_0

    .line 619
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 620
    new-instance v2, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v2, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 622
    :cond_2
    new-instance v3, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-direct {v3, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v2, v3

    goto :goto_0
.end method

.method private getContainerRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 668
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 669
    .local v0, "container":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 670
    const/4 v0, 0x0

    .line 682
    .end local v0    # "container":Landroid/graphics/Rect;
    :goto_0
    return-object v0

    .line 673
    .restart local v0    # "container":Landroid/graphics/Rect;
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 674
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->left_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 675
    .local v1, "marginLeft":I
    sget v4, Lcom/sonyericsson/cameracommon/R$dimen;->right_container_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 676
    .local v2, "marginRight":I
    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v1

    sub-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method private getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .locals 4

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 489
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v1, :cond_0

    .line 493
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :goto_1
    return-object v1

    .line 488
    .restart local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    .locals 3

    .prologue
    .line 601
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    aput-object v2, v0, v1

    return-object v0
.end method

.method private removeLastRectList()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 804
    :cond_0
    return-void
.end method

.method private resetEnabledOfDialogs()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 499
    const/4 v6, 0x4

    new-array v3, v6, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v6, v3, v8

    iget-object v6, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    aput-object v6, v3, v7

    const/4 v6, 0x2

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    aput-object v9, v3, v6

    const/4 v6, 0x3

    iget-object v9, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    aput-object v9, v3, v6

    .line 506
    .local v3, "dialogs":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getCurrentDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v1

    .line 508
    .local v1, "current":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    move-object v0, v3

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 509
    .local v2, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v2, :cond_0

    .line 510
    if-ne v2, v1, :cond_1

    move v6, v7

    :goto_1
    invoke-interface {v2, v6}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->setEnabled(Z)V

    .line 508
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v6, v8

    .line 510
    goto :goto_1

    .line 513
    .end local v2    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearShortcutSelected()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->clearSelected()V

    .line 149
    return-void
.end method

.method public closeCurrentDialog()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 411
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v0

    .line 413
    :cond_0
    if-nez v0, :cond_1

    .line 414
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v0

    .line 416
    :cond_1
    if-nez v0, :cond_2

    .line 417
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    move-result v0

    .line 419
    :cond_2
    if-nez v0, :cond_3

    .line 420
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v0

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 424
    if-eqz v0, :cond_4

    .line 425
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_5

    .line 427
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 428
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->clearSelected()V

    .line 429
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 430
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    .line 443
    :cond_4
    :goto_0
    return v0

    .line 435
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    goto :goto_0
.end method

.method public closeDialogs()V
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs(Z)V

    .line 448
    return-void
.end method

.method public closeDialogs(Z)V
    .locals 3
    .param p1, "withAnimation"    # Z

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 455
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 456
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 457
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 458
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 461
    if-eqz v0, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 465
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearFocus()V

    .line 466
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onCloseSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;Z)V

    .line 471
    :cond_0
    return-void
.end method

.method public getBlurTargetAreaList()Ljava/util/Stack;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 779
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 780
    .local v3, "shortcutIconRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->getSelectedItemIconVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 781
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v1

    .line 787
    .local v1, "dialogs":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v4, v1

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 788
    aget-object v0, v1, v2

    .line 789
    .local v0, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v0, :cond_1

    .line 790
    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-interface {v4, v5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->coordinatePosition(I)V

    .line 791
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->getLayoutCoordinator()Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonyericsson/cameracommon/setting/layoutcoordinator/LayoutCoordinator;->getDialogRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 794
    .end local v0    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mTargetAreaList:Ljava/util/Stack;

    return-object v4
.end method

.method public getMenuDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    return-object v0
.end method

.method public getSecondLayerDialog()Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    return-object v0
.end method

.method public hideShortcutTray()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->hide()V

    .line 145
    return-void
.end method

.method public isControlDialogOpened()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDialogOpened()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMenuDialogOpened()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 172
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "i":Ljava/lang/Object;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    const/4 v2, 0x1

    .line 177
    .end local v0    # "i":Ljava/lang/Object;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    if-eqz v4, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v2

    .line 279
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 286
    .local v0, "alreadyOpened":Z
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 287
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 288
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 289
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    .line 292
    .local v1, "coordinateData":Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;
    if-eqz v1, :cond_0

    .line 295
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createControl(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    .line 296
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 299
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 301
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->open(Landroid/view/ViewGroup;)V

    .line 302
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;->setSensorOrientation(I)V

    .line 303
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mControlDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingControlDialog;

    invoke-virtual {v2, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 307
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 309
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v2, p0, v0, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v2, v3

    .line 313
    goto :goto_0
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Z)Z
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "requestUpdate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 193
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tabs"    # [Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    .param p3, "onSelectedTabListener"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;
    .param p4, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    if-eqz v4, :cond_0

    .line 258
    :goto_0
    return v2

    .line 212
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->clearShortcutSelected()V

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 218
    .local v0, "alreadyOpened":Z
    const/4 v1, 0x0

    .line 220
    .local v1, "isAnimation":Z
    iget-boolean v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    if-nez v4, :cond_2

    .line 221
    const/4 v1, 0x1

    .line 225
    :cond_2
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 226
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 227
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 228
    invoke-direct {p0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 230
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateMenuDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 231
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v2, :cond_4

    .line 232
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-static {v2, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createMenu(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    .line 235
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setTabs([Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;)V

    .line 236
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, p3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setOnSelectedTabListener(Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$OnTabSelectedListener;)V

    .line 240
    iget-boolean v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 241
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->open(Landroid/view/ViewGroup;)V

    .line 245
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v2, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->setSensorOrientation(I)V

    .line 246
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v2, v4, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iput-boolean v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mIsMenuDialogOpened:Z

    .line 252
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 253
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 255
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v2, p0, v0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v2, v3

    .line 258
    goto :goto_0
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)Z
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openSecondLayerDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 378
    .local v0, "alreadyOpened":Z
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 380
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateSecondLayerDialogLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 381
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_0

    .line 382
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createSecondLayerDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 385
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 388
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 390
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->open(Landroid/view/ViewGroup;)V

    .line 391
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSensorOrientation(I)V

    .line 392
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSecondLayerDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 397
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 399
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v0, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    .line 402
    return v4
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;I)Z
    .locals 1
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "shortcutDialogTitleId"    # I

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)Z
    .locals 5
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    .param p2, "shortcutDialogTitleId"    # I
    .param p3, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialotTitleId:I

    if-ne v3, p2, :cond_0

    .line 365
    :goto_0
    return v1

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    .line 335
    .local v0, "alreadyOpened":Z
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeMenuDialog(Z)Z

    .line 336
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeShortcutDialog(Z)Z

    .line 337
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeControlDialog(Z)Z

    .line 338
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeSecondLayerDialog(Z)Z

    .line 340
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->generateShortcutLayoutCoordinateData()Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    if-eqz v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialogCoordinateData:Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;

    invoke-static {v1, v3, p2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogFactory;->createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/cameracommon/setting/controller/SettingLayoutCoordinatorFactory$LayoutCoordinateData;I)Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 349
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingAnimation:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogAnimation;->setOpenDialogAnimation(Landroid/view/View;I)Landroid/view/animation/Animation;

    .line 351
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialog;->open(Landroid/view/ViewGroup;)V

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    iget v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;->setSensorOrientation(I)V

    .line 353
    iput p2, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialotTitleId:I

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogTags:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogBasic;

    invoke-virtual {v1, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->resetEnabledOfDialogs()V

    .line 359
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mDialogBackground:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 361
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mSettingDialogListener:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;

    invoke-interface {v1, p0, v0, v2}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogListener;->onOpenSettingDialog(Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;ZZ)V

    move v1, v2

    .line 365
    goto :goto_0
.end method

.method public setOnInterceptKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    sget-object v0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->DUMMY_ON_INTERCEPT_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOnInterceptKeyListener:Landroid/view/View$OnKeyListener;

    goto :goto_0
.end method

.method public setUiOrientation(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    .line 474
    iput p1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    .line 475
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    if-eqz v4, :cond_0

    .line 476
    iget-object v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v5, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->getDialogList()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 479
    .local v1, "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    if-eqz v1, :cond_1

    .line 480
    iget v4, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-interface {v1, v4}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;->setSensorOrientation(I)V

    .line 478
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "dialog":Lcom/sonyericsson/cameracommon/setting/dialog/SettingDialogInterface;
    :cond_2
    return-void
.end method

.method public setupShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 132
    return-void
.end method

.method public showShortcutTray()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->show()V

    .line 141
    return-void
.end method

.method public updateMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 4
    .param p1, "commonKeyAdapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 807
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mMenuDialog:Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabDialogBasic;->getAdapter()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v0

    .line 808
    .local v0, "adapter":Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 810
    const/4 v2, 0x0

    .line 813
    .local v2, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 814
    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    check-cast v2, Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;

    .line 815
    .restart local v2    # "item":Lcom/sonyericsson/cameracommon/setting/settingitem/SettingItem;
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 819
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 820
    return-void
.end method

.method public updateShortcutSelected(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "itemData":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSelected(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public updateShortcutTray(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->updateAdapter(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;)V

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mShortcutTray:Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;

    iget v1, p0, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/setting/shortcut/SettingShortcut;->setSensorOrientation(I)V

    .line 137
    return-void
.end method
