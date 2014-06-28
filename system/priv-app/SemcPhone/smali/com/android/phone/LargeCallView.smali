.class public Lcom/android/phone/LargeCallView;
.super Lcom/android/phone/CallView;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LargeCallView$11;,
        Lcom/android/phone/LargeCallView$MenuListener;,
        Lcom/android/phone/LargeCallView$WaitingCallPanel;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static final WAITING_PANEL_VIEW_ANCTIONS:[[I


# instance fields
.field private mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

.field private mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

.field private mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

.field private mAmCircleIcon:Landroid/widget/ImageView;

.field private mAmIndicator:Landroid/widget/TextView;

.field private mAmPlayingCounter:Landroid/widget/TextView;

.field private mAmRecordingCounter:Landroid/widget/TextView;

.field private mBgCallContactNumberIcon:Landroid/widget/ImageView;

.field private mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

.field private mCallEndedInteractionPanel:Landroid/view/ViewGroup;

.field private mCallRecordingPanel:Landroid/widget/LinearLayout;

.field private mCallRecordingTimeTextView:Landroid/widget/TextView;

.field private mCallState:Landroid/widget/TextView;

.field private mCallStateInfoLayout:Landroid/view/ViewGroup;

.field private mCallStateSpinner:Landroid/view/View;

.field private mCallTime:Landroid/widget/TextView;

.field private mCallWidgetMenuButton:Landroid/widget/ImageView;

.field private mCanSeparate:Z

.field private mCityIdTextView:Landroid/widget/TextView;

.field private mConferenceCallButton:Landroid/widget/Button;

.field private mConferenceList:Landroid/widget/ListView;

.field private mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDialerLargeHeaderIcon:Landroid/widget/ImageView;

.field private mDrawerHandleHeight:I

.field private mDrawerItemHeight:I

.field private mDrawerNextState:I

.field private mDrawerTopOffset:I

.field private mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

.field private mEndCallButton:Landroid/view/View;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHDIcon:Landroid/widget/ImageView;

.field private mHeldCallPanel:Landroid/widget/RelativeLayout;

.field private mIncomingCallPanel:Landroid/widget/LinearLayout;

.field private mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

.field private mInformationBox:Landroid/widget/TextView;

.field private mIsDrawerContentLoaded:Z

.field private mIsTablet:Z

.field private final mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mMenuHeight:I

.field private mMergeCallsButton:Landroid/widget/LinearLayout;

.field private mMsgListView:Landroid/widget/ListView;

.field private mNameOrNumberBGCall:Landroid/widget/TextView;

.field private mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

.field private mNavigationBarHeight:I

.field private mOptionMenuButton:Landroid/widget/ImageView;

.field private mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

.field private mOptionsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPhoneNumberTextView:Landroid/widget/TextView;

.field private mPhotoAlphaValueActiveCall:I

.field private mPhotoAlphaValueAnsweringMachine:I

.field private mPhotoAlphaValueHeldCall:I

.field private mPopupView:[Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRedirectingCallMessage:Landroid/widget/TextView;

.field private mRedirectingNameOrNumber:Landroid/widget/TextView;

.field private mRedirectingPanel:Landroid/widget/LinearLayout;

.field private mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

.field private mRedirectingdNumberTextView:Landroid/widget/TextView;

.field private mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

.field private mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

.field private mRejectMsgItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

.field private mSipIcon:Landroid/widget/ImageView;

.field private mSipUriTextView:Landroid/widget/TextView;

.field private mSolidShadowPanel:Landroid/widget/RelativeLayout;

.field private mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

.field private mSpeakerIcon:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field private final mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

.field private mWidgetLayerHeight:I

.field private mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

.field private mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    .line 244
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0700d6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x7f0700d8
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x7f0700d4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x7f0700da
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/phone/CallView;-><init>(Landroid/content/Context;)V

    .line 98
    iput-boolean v1, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    .line 119
    iput-object v4, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    .line 184
    new-instance v0, Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/LargeCallView$WaitingCallPanel;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    .line 238
    iput-boolean v1, p0, Lcom/android/phone/LargeCallView;->mIsDrawerContentLoaded:Z

    .line 252
    new-instance v0, Lcom/android/phone/LargeCallView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView$1;-><init>(Lcom/android/phone/LargeCallView;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 266
    new-instance v0, Lcom/android/phone/LargeCallView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView$2;-><init>(Lcom/android/phone/LargeCallView;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 281
    new-instance v0, Lcom/android/phone/LargeCallView$3;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView$3;-><init>(Lcom/android/phone/LargeCallView;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 297
    iput-object p2, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    .line 298
    iput-object p1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    .line 299
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    .line 300
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initComponents()V

    .line 302
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/LargeCallView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/LargeCallView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/LargeCallView;)Lcom/android/phone/SomcIncomingCallView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/LargeCallView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/LargeCallView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/LargeCallView;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/LargeCallView;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/LargeCallView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/LargeCallView;->mMenuHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/phone/LargeCallView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/LargeCallView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LargeCallView;)Lcom/android/phone/RejectMsgAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/phone/LargeCallView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/LargeCallView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/LargeCallView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->triggerDrawerStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/LargeCallView;)Lcom/android/phone/RejectMsgAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/LargeCallView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->animateHideIncomingCallView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900()[[I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I

    return-object v0
.end method

.method private animateHideIncomingCallView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2123
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2144
    :goto_0
    return-void

    .line 2124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    .line 2127
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/phone/LargeCallView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/LargeCallView$10;-><init>(Lcom/android/phone/LargeCallView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2139
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2141
    :cond_1
    const-string v0, "LargeCallView"

    const-string v1, "animateHideIncomingCallView: mhideIncomingCallPanelAnim is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private calculateRejectMsgDrawerTopOffset()I
    .locals 4

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/phone/LargeCallView;->mDrawerItemHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/phone/LargeCallView;->mDrawerHandleHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 694
    .local v0, "calculatedOffset":I
    iget v1, p0, Lcom/android/phone/LargeCallView;->mNavigationBarHeight:I

    sub-int/2addr v0, v1

    .line 695
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isDrawerContentLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget v1, p0, Lcom/android/phone/LargeCallView;->mDrawerItemHeight:I

    sub-int/2addr v0, v1

    .line 698
    :cond_0
    iget v1, p0, Lcom/android/phone/LargeCallView;->mDrawerTopOffset:I

    if-le v0, v1, :cond_1

    .line 701
    .end local v0    # "calculatedOffset":I
    :goto_0
    return v0

    .restart local v0    # "calculatedOffset":I
    :cond_1
    iget v0, p0, Lcom/android/phone/LargeCallView;->mDrawerTopOffset:I

    goto :goto_0
.end method

.method private cleanUpWidgets()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2633
    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/LargeCallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 2634
    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/LargeCallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 2635
    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/LargeCallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 2636
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v2, :cond_1

    .line 2637
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    .line 2638
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getWidgets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2639
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getWidgets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 2640
    .local v1, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    iget-object v2, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v2, :cond_0

    .line 2641
    iget-object v2, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v3, 0x21

    invoke-interface {v2, v3, v1}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 2647
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_1
    return-void
.end method

.method private configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V
    .locals 1

    .prologue
    .line 2609
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2610
    if-nez v0, :cond_1

    .line 2622
    :cond_0
    :goto_0
    return-void

    .line 2613
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->updateWidgetMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V

    .line 2614
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->updateWidgetAreaHeight(Z)V

    .line 2615
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_0

    .line 2616
    if-eqz p2, :cond_3

    .line 2617
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    goto :goto_0

    .line 2614
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2618
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isInAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2619
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->expand()V

    goto :goto_0
.end method

.method private createWidgetMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0700ae

    .line 2473
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2474
    if-nez v0, :cond_0

    .line 2492
    :goto_0
    return-void

    .line 2477
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "createWidgetMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2478
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "WidgetMenu"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2479
    if-nez v0, :cond_2

    .line 2480
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2481
    new-instance v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-direct {v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;-><init>()V

    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .line 2482
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    new-instance v2, Lcom/android/phone/LargeCallView$MenuListener;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/LargeCallView$MenuListener;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->registerListener(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;)V

    .line 2483
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    const-string v2, "WidgetMenu"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2484
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2485
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 2488
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Fragment already exists. No need to create menu"

    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2489
    :cond_3
    check-cast v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .line 2490
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    new-instance v1, Lcom/android/phone/LargeCallView$MenuListener;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/LargeCallView$MenuListener;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->registerListener(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;)V

    goto :goto_0
.end method

.method private disableMergeCallsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1320
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1321
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1322
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1323
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2113
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    .line 2114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2115
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2118
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    :cond_0
    return-void
.end method

.method private enableMergeCallsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1329
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1330
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1331
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1332
    return-void
.end method

.method private findWidgetContainerByType(I)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 2541
    const/4 v1, 0x0

    .line 2542
    invoke-static {p1}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->valueOf(I)Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    .line 2545
    if-nez v0, :cond_0

    .line 2546
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    .line 2549
    :cond_0
    sget-object v2, Lcom/android/phone/LargeCallView$11;->$SwitchMap$com$android$phone$widget$SomcCallWidgetManager$WidgetType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2560
    :goto_0
    return-object v0

    .line 2551
    :pswitch_0
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2554
    :pswitch_1
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2557
    :pswitch_2
    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2549
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLargeHeaderHeight()I
    .locals 2

    .prologue
    .line 1014
    const v1, 0x7f07008c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1015
    .local v0, "largeHeader":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1018
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideCallEndedInteraction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2815
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2816
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2817
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2818
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2819
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2820
    return-void
.end method

.method private hideCallingProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1285
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 1287
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDialDisabled(Z)V

    .line 1288
    return-void
.end method

.method private hideManageConferencePanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1819
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1820
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1822
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 1825
    :cond_0
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 1826
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1827
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1829
    :cond_1
    return-void
.end method

.method private hideNormalCallLayout()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1434
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1435
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1436
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1439
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1440
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1442
    return-void

    .line 1437
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initCallEndedInteractionPanel()V
    .locals 2

    .prologue
    .line 2766
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    .line 2767
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2770
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2771
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2773
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2775
    return-void
.end method

.method private initComponents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, -0x1

    const/4 v9, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 364
    .local v8, "res":Landroid/content/res/Resources;
    const v0, 0x7f09000e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    .line 365
    const v0, 0x7f09000f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueHeldCall:I

    .line 366
    const v0, 0x7f090010

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueAnsweringMachine:I

    .line 368
    const v0, 0x7f0a0092

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0a0091

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerItemHeight:I

    .line 371
    const v0, 0x7f0a0084

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerHandleHeight:I

    .line 373
    const v0, 0x105000d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mNavigationBarHeight:I

    .line 376
    new-instance v0, Lcom/android/phone/SomcInCallButtonPanel;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/CallView;->isHWQwertyVisible()Z

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/SomcInCallButtonPanel;-><init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    .line 378
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    .line 379
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    .line 380
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    .line 381
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Lcom/android/phone/SomcTabletRightPanel;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/phone/SomcTabletRightPanel;-><init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    .line 383
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcContactPicView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    .line 391
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    const v1, 0x7f0700b1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->init(Landroid/view/View;)V

    .line 394
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    .line 396
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcIncomingCallView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    .line 397
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    .line 399
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initMsgListComponents()V

    .line 401
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcContactTextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    .line 402
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    .line 403
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    .line 404
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    .line 405
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    .line 409
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    .line 411
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    .line 416
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    .line 417
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    .line 418
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    .line 420
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    .line 421
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    .line 422
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 424
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    .line 425
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    .line 426
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    .line 428
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/LargeCallView$5;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$5;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    .line 436
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 440
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionMenuButton:Landroid/widget/ImageView;

    .line 443
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    .line 446
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    new-instance v1, Lcom/android/phone/LargeCallView$6;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$6;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcIncomingCallView;->setOnIncomingCallRspListener(Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;)V

    .line 486
    iput-object v10, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 488
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    iput-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 490
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingPanel:Landroid/widget/LinearLayout;

    .line 491
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    .line 493
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    .line 495
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v6

    .line 496
    .local v6, "am":Lcom/android/phone/am/SomcAmManager;
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/am/SomcAmAnimationView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    .line 497
    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getPlayedDuration()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getPlayedDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/am/SomcAmAnimationView;->resumePlayingAnimation(F)V

    .line 503
    :cond_2
    :goto_1
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    .line 504
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    .line 505
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    .line 506
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    .line 507
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 510
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x7f0a0079

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mMenuHeight:I

    .line 511
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initDtmfDialPad()V

    .line 512
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initPopupDialog()V

    .line 513
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initCallEndedInteractionPanel()V

    .line 514
    return-void

    .line 376
    .end local v6    # "am":Lcom/android/phone/am/SomcAmManager;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 499
    .restart local v6    # "am":Lcom/android/phone/am/SomcAmManager;
    :cond_4
    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getRecordedDuration()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getRecordedDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/am/SomcAmAnimationView;->resumeRecordingAnimation(F)V

    goto :goto_1
.end method

.method private initDtmfDialPad()V
    .locals 3

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1630
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1632
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/CallView;->isHWQwertyVisible()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/phone/SomcDtmfDialPad;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 1633
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    iget-object v1, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 1634
    return-void
.end method

.method private initManageConferencePanel()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1744
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1746
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 1748
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1749
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1753
    new-instance v1, Lcom/android/phone/LargeCallView$9;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$9;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1773
    :cond_1
    return-void
.end method

.method private initMsgListComponents()V
    .locals 2

    .prologue
    .line 638
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->initOptionMsgAdapter(Ljava/util/List;)V

    .line 639
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->initRejectMsgAdapter(Ljava/util/List;)V

    .line 641
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    .line 642
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->getTopOffset()I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerTopOffset:I

    .line 643
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    .line 644
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    new-instance v1, Lcom/android/phone/LargeCallView$7;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$7;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    new-instance v1, Lcom/android/phone/LargeCallView$8;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$8;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;)V

    .line 661
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setOptionsDrawer()V

    .line 662
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateOptionDrawerVisibility()V

    .line 663
    return-void
.end method

.method private initOptionMsgAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->resetAdapter(Lcom/android/phone/RejectMsgAdapter;)Lcom/android/phone/RejectMsgAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    .line 2003
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;

    move-result-object v0

    .line 2005
    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    if-eq v0, v1, :cond_0

    .line 2006
    new-instance v0, Lcom/android/phone/ItemWithIcon;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0140

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200f4

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    .line 2009
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/ItemWithIcon;->setAction(I)V

    .line 2010
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 2013
    return-void
.end method

.method private initPopupDialog()V
    .locals 8

    .prologue
    .line 310
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    const v7, 0x7f0700bb

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f0700d1

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f0700cf

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const v7, 0x7f0700d0

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/phone/LargeCallView;->mPopupView:[Landroid/view/View;

    .line 317
    new-instance v3, Lcom/android/phone/LargeCallView$4;

    invoke-direct {v3, p0}, Lcom/android/phone/LargeCallView$4;-><init>(Lcom/android/phone/LargeCallView;)V

    .line 347
    .local v3, "popupDialogListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPopupView:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 348
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private initRejectMsgAdapter(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2016
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "init reject messages list"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2017
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->resetAdapter(Lcom/android/phone/RejectMsgAdapter;)Lcom/android/phone/RejectMsgAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    .line 2018
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2019
    const/4 v0, 0x0

    new-instance v1, Lcom/android/phone/ItemWithIcon;

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0110

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200f7

    invoke-direct {v1, v2, v3}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2023
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 2024
    return-void
.end method

.method private isDrawerContentLoaded()Z
    .locals 1

    .prologue
    .line 1614
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsDrawerContentLoaded:Z

    return v0
.end method

.method private isLargeHeaderLayoutTall()Z
    .locals 4

    .prologue
    .line 586
    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 587
    .local v0, "largeHeader":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 589
    .local v1, "tallHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v1, :cond_0

    .line 590
    const/4 v2, 0x1

    .line 592
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isManageConferenceOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1812
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1813
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1815
    :cond_0
    return v0
.end method

.method private isSoundRoutingMenuOpen()Z
    .locals 1

    .prologue
    .line 1571
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1509
    const-string v0, "LargeCallView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return-void
.end method

.method private makeTextViewSingleLine(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x1

    .line 1488
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1489
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1490
    return-void
.end method

.method private refreshVisibility(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 1992
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1993
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1997
    :goto_0
    return-void

    .line 1995
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private releaseDrawablesAndViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 813
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 816
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 822
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 824
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 826
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 828
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->setImageNull()V

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingTab;

    .line 841
    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingTab;->setImageNull()V

    .line 844
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    if-eqz v0, :cond_4

    .line 845
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Lcom/android/phone/SomcContactPicView;->recycleBitmap()V

    .line 847
    :cond_4
    return-void
.end method

.method private requestLargeHeaderAnimation(Z)V
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 527
    const v4, 0x7f07008c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 529
    .local v1, "largeHeader":Landroid/view/ViewGroup;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0, v1, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTransition(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 541
    const v4, 0x7f07008b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 543
    .local v0, "callerLayout":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTransition(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 544
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 547
    .local v2, "layoutTransition":Landroid/animation/LayoutTransition;
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v2, v4}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 548
    if-eqz p1, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v2, v4}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 552
    :cond_0
    return-void
.end method

.method private resetAdapter(Lcom/android/phone/RejectMsgAdapter;)Lcom/android/phone/RejectMsgAdapter;
    .locals 3

    .prologue
    .line 2027
    if-nez p1, :cond_0

    .line 2028
    new-instance p1, Lcom/android/phone/RejectMsgAdapter;

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v1, 0x7f030024

    const v2, 0x7f0700ce

    invoke-direct {p1, v0, v1, v2}, Lcom/android/phone/RejectMsgAdapter;-><init>(Landroid/content/Context;II)V

    .line 2031
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2032
    return-object p1
.end method

.method private setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 929
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne p1, v0, :cond_1

    .line 934
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideManageConferencePanel()V

    .line 935
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 936
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 937
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 949
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 950
    return-void

    .line 940
    :cond_1
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne p1, v0, :cond_0

    .line 941
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 942
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initManageConferencePanel()V

    .line 943
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showManageConferenceCallList()V

    .line 944
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    goto :goto_0
.end method

.method private setCallerlayoutTallSizeOff()V
    .locals 3

    .prologue
    .line 2212
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2215
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2216
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2218
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2219
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2220
    return-void
.end method

.method private setCallerlayoutTallSizeOn()V
    .locals 3

    .prologue
    .line 2201
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2204
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2205
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2207
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2208
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2209
    return-void
.end method

.method private setDrawerContentLoaded(Z)V
    .locals 3
    .param p1, "isDrawerContentLoaded"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1603
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsDrawerContentLoaded:Z

    .line 1604
    if-eqz p1, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1611
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1603
    goto :goto_0

    .line 1608
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1609
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setEndCallButtonText(I)V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1506
    return-void
.end method

.method private setImageNull()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 797
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 807
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    :cond_3
    return-void
.end method

.method private setLargeHeaderLayoutTallSize(Z)V
    .locals 8
    .param p1, "isTall"    # Z

    .prologue
    const/4 v7, 0x0

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 607
    .local v5, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 609
    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 610
    .local v2, "nameTextSize":F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v2, v6

    .line 611
    .local v3, "nameTextSizeInDip":F
    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 612
    .local v4, "phoneNumberTextSize":F
    const v6, 0x7f0a002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 625
    .local v0, "headerHeight":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v6, v3}, Lcom/android/phone/SomcContactTextView;->setMaxTextSize(F)V

    .line 626
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v6, v3}, Lcom/android/phone/SomcContactTextView;->setMinTextSize(F)V

    .line 627
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v6, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 628
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 629
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 630
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 631
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 632
    const v6, 0x7f07008c

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 633
    .local v1, "largeHeader":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 634
    return-void

    .line 616
    .end local v0    # "headerHeight":I
    .end local v1    # "largeHeader":Landroid/view/ViewGroup;
    .end local v2    # "nameTextSize":F
    .end local v3    # "nameTextSizeInDip":F
    .end local v4    # "phoneNumberTextSize":F
    :cond_0
    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 618
    .restart local v2    # "nameTextSize":F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v2, v6

    .line 619
    .restart local v3    # "nameTextSizeInDip":F
    const v6, 0x7f0a0039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 621
    .restart local v4    # "phoneNumberTextSize":F
    const v6, 0x7f0a002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .restart local v0    # "headerHeight":I
    goto :goto_0
.end method

.method private setLargeHeaderLayoutTransition(Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 7
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-wide/16 v5, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 564
    .local v1, "layoutTransition":Landroid/animation/LayoutTransition;
    if-nez v1, :cond_0

    .line 565
    new-instance v1, Landroid/animation/LayoutTransition;

    .end local v1    # "layoutTransition":Landroid/animation/LayoutTransition;
    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 567
    .restart local v1    # "layoutTransition":Landroid/animation/LayoutTransition;
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 568
    .local v2, "type":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 571
    invoke-virtual {v1, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 572
    invoke-virtual {v1, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 573
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(J)V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0

    .line 578
    .end local v2    # "type":I
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 579
    return-void
.end method

.method private setOptionsDrawer()V
    .locals 2

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2075
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2076
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->calculateRejectMsgDrawerTopOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setTopOffset(I)V

    .line 2077
    return-void
.end method

.method private setRedirectingViewsVisibile(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 1003
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1005
    .local v0, "ismRedirectingCallMessageEmpty":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1006
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1007
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    return-void

    .line 1005
    .end local v1    # "visibility":I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setRejectMsgDrawer()V
    .locals 2

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2069
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRejectMsgItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2070
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->calculateRejectMsgDrawerTopOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setTopOffset(I)V

    .line 2071
    return-void
.end method

.method private setStateInformationText(I)V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1654
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1655
    const v0, 0x7f0b00b5

    if-eq p1, v0, :cond_0

    const v0, 0x7f0b00b4

    if-ne p1, v0, :cond_1

    .line 1657
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1661
    :goto_0
    return-void

    .line 1659
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStateInformationText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1642
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1643
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    return-void
.end method

.method private showCallingProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1270
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 1272
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDialDisabled(Z)V

    .line 1273
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    const v0, 0x7f0b00b5

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1276
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    return-void
.end method

.method private showManageConferenceCallList()V
    .locals 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 1778
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    if-nez v0, :cond_0

    .line 1779
    new-instance v0, Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter;-><init>(Lcom/android/phone/CallView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-boolean v1, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter;->setCanSeparate(Z)V

    .line 1782
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1783
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1784
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1786
    :cond_1
    return-void
.end method

.method private showNavigationBar(Z)V
    .locals 1
    .param p1, "showNavigationBar"    # Z

    .prologue
    .line 2332
    const/16 v0, 0x200

    .line 2334
    .local v0, "flags":I
    if-nez p1, :cond_0

    .line 2335
    or-int/lit16 v0, v0, 0x1802

    .line 2339
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2340
    return-void
.end method

.method private showNormalConferenceCallView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1714
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1715
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1717
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1718
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1719
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/phone/SomcInCallButtonPanel;->setHeldCallButtonValue(ZZ)V

    .line 1722
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1723
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1724
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1728
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1729
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1731
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1732
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1734
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 1736
    :cond_1
    return-void

    .line 1724
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private toggleWidgetMenu()V
    .locals 1

    .prologue
    .line 2462
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "toggleWidgetMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2463
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_1

    .line 2464
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2465
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    .line 2470
    :cond_1
    :goto_0
    return-void

    .line 2467
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->expand()V

    goto :goto_0
.end method

.method private triggerDrawerStateChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 666
    iget v0, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :goto_0
    :pswitch_0
    const/16 v0, 0x19

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    .line 689
    return-void

    .line 668
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setRejectMsgDrawer()V

    .line 670
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateOpen()V

    .line 671
    iput v1, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    .line 675
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateClose()V

    goto :goto_1

    .line 678
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setOptionsDrawer()V

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallRecordingTimeVisibility()V
    .locals 1

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallRecordingOn(Z)V

    .line 2164
    return-void

    .line 2163
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCityIdVisibility(Z)V
    .locals 2
    .param p1, "isVisibleIfExists"    # Z

    .prologue
    .line 1956
    if-eqz p1, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1961
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1962
    return-void

    .line 1959
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOptionDrawerVisibility()V
    .locals 2

    .prologue
    .line 2060
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2061
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2065
    :goto_0
    return-void

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWidgetAreaHeight(Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 2495
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_3

    .line 2496
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2497
    const v1, 0x7f07008d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2499
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v3, 0x7f0700af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2500
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2501
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->getLargeHeaderHeight()I

    move-result v5

    .line 2502
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2504
    if-eqz v0, :cond_0

    .line 2505
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 2507
    :cond_0
    if-eqz v1, :cond_1

    .line 2508
    int-to-float v6, v5

    invoke-virtual {v1, v6}, Landroid/view/View;->setY(F)V

    .line 2511
    :cond_1
    if-eqz p1, :cond_4

    .line 2512
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v6, 0x7f0700a7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2513
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 2514
    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    .line 2523
    :goto_0
    if-eqz v0, :cond_2

    .line 2524
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2527
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2530
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2533
    :cond_2
    if-eqz v1, :cond_3

    .line 2534
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2538
    :cond_3
    return-void

    .line 2517
    :cond_4
    const v6, 0x7f0a0004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2520
    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    goto :goto_0
.end method

.method private updateWidgetMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V
    .locals 2

    .prologue
    .line 2625
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWidgetMenuMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2626
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-nez v0, :cond_1

    .line 2627
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->createWidgetMenu()V

    .line 2629
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->updateMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V

    .line 2630
    return-void
.end method


# virtual methods
.method public cleanUpWidgetMenu()V
    .locals 2

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "WidgetMenu"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2592
    if-eqz v0, :cond_0

    .line 2593
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2594
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2595
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .line 2598
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1448
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->cleanUpWidgets()V

    .line 1449
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 1450
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1451
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setImageNull()V

    .line 1452
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 1453
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1455
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1456
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1459
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 1460
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1462
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1463
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1465
    iput-object v3, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1469
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1470
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1471
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1472
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1474
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1475
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1476
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1477
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1478
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1479
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcTabletRightPanel;->clear()V

    .line 1481
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    .line 1482
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1483
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1484
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallEndedInteraction()V

    .line 1485
    return-void
.end method

.method public clearDtmfDialPadDigits()V
    .locals 2

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDigits(Ljava/lang/String;)V

    .line 1625
    return-void
.end method

.method public closeDtmfDialPad()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1534
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v3, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 1537
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->close()V

    .line 1538
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->dtmlDialpadOpen(Z)V

    .line 1541
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1542
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1543
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1551
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1552
    iget-object v0, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 1553
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1554
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1555
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1556
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    goto :goto_0

    .line 1546
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Unexpected. mContext is not activity."

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public closeRejectMsgList()V
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateClose()V

    .line 2087
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2105
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2106
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2107
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2108
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2109
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    return-object v0
.end method

.method public getDtmfDialPadDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->getDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleBackKey()Z
    .locals 2

    .prologue
    .line 1789
    const/4 v0, 0x0

    .line 1791
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isSoundRoutingMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1792
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    .line 1793
    const/4 v0, 0x1

    .line 1808
    :cond_0
    :goto_0
    return v0

    .line 1794
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1795
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 1796
    const/4 v0, 0x1

    goto :goto_0

    .line 1797
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1803
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showNormalConferenceCallView()V

    .line 1804
    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1805
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hideAmAnimation()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x8

    .line 2432
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2439
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2440
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2441
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2442
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2443
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2444
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 2445
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2446
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRejectMsgList()V
    .locals 2

    .prologue
    .line 2091
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LargeCallView"

    const-string v1, "hideRejectMsgList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    :cond_0
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcRejectMsgManager;->dismissPopup()V

    .line 2093
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->close()V

    .line 2094
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->resetStatus()V

    .line 2095
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2096
    return-void
.end method

.method public initRejectMsgList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2038
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2039
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2041
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2042
    new-instance v2, Lcom/android/phone/ItemWithIcon;

    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0141

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200fb

    invoke-direct {v2, v3, v4}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    .line 2045
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/ItemWithIcon;->setAction(I)V

    .line 2046
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2051
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->initOptionMsgAdapter(Ljava/util/List;)V

    .line 2052
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->initRejectMsgAdapter(Ljava/util/List;)V

    .line 2054
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setDrawerContentLoaded(Z)V

    .line 2055
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setOptionsDrawer()V

    .line 2056
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateOptionDrawerVisibility()V

    .line 2057
    return-void
.end method

.method public isDtmfDialPadOpen()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isEndCallInteractionOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2824
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2825
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2827
    :cond_0
    return v0
.end method

.method public isRejectMsgListOpened()Z
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1393
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1431
    :goto_0
    return-void

    .line 1397
    :sswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1402
    :sswitch_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1406
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->toggleWidgetMenu()V

    goto :goto_0

    .line 1412
    :sswitch_3
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    goto :goto_0

    .line 1416
    :sswitch_4
    const/16 v0, 0x23

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1420
    :sswitch_5
    const/16 v0, 0x24

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1424
    :sswitch_6
    const/16 v0, 0x25

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1428
    :sswitch_7
    const/16 v0, 0x26

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1393
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070010 -> :sswitch_5
        0x7f070011 -> :sswitch_4
        0x7f070012 -> :sswitch_6
        0x7f070013 -> :sswitch_7
        0x7f07008f -> :sswitch_2
        0x7f070094 -> :sswitch_1
        0x7f070097 -> :sswitch_0
        0x7f0700a6 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1979
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 1983
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->onPause()V

    .line 1971
    return-void
.end method

.method public openDtmfDialPad()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1576
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    :goto_0
    return-void

    .line 1579
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1583
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1584
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1590
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->dtmlDialpadOpen(Z)V

    .line 1591
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->open()V

    .line 1592
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v3, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 1593
    iget-object v0, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 1594
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1595
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 1596
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    goto :goto_0

    .line 1579
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 1587
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Unexpected. mContext is not activity."

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1598
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideManageConferencePanel()V

    goto :goto_0
.end method

.method public reDraw()V
    .locals 4

    .prologue
    const v3, 0x7f0700ae

    const/4 v2, 0x0

    .line 708
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 710
    if-eqz v0, :cond_7

    .line 712
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 713
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 716
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->releaseDrawablesAndViews()V

    .line 717
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 718
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    .line 719
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->clear()V

    .line 720
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 721
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setImageNull()V

    .line 722
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 724
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 726
    :cond_0
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 727
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    .line 728
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    .line 730
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    .line 731
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    .line 732
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    .line 734
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    .line 735
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    .line 736
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    .line 737
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    .line 738
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    .line 739
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    .line 740
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    .line 741
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 742
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    .line 743
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    .line 745
    :cond_1
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    .line 746
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    .line 747
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    .line 748
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    .line 749
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    .line 750
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    .line 752
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    .line 753
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    .line 754
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    .line 755
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    .line 756
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 761
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    .line 764
    :cond_3
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    .line 765
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 766
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 767
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    .line 769
    :cond_4
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    .line 770
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    .line 771
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 772
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    .line 773
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    if-eqz v0, :cond_5

    .line 774
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->clear()V

    .line 775
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    .line 777
    :cond_5
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    .line 778
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    .line 779
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    .line 780
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    .line 781
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    .line 782
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initComponents()V

    .line 784
    if-eqz v1, :cond_6

    .line 785
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 786
    if-eqz v0, :cond_6

    .line 788
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 791
    :cond_6
    return-void

    :cond_7
    move-object v1, v2

    goto/16 :goto_0
.end method

.method public refreshSoundStates()V
    .locals 4

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    iget-boolean v1, p0, Lcom/android/phone/CallView;->mSpeakerIsOn:Z

    iget-boolean v2, p0, Lcom/android/phone/CallView;->mBluetoothAudioIsOn:Z

    iget-boolean v3, p0, Lcom/android/phone/CallView;->mBluetoothHeadsetIsConnected:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setRouteSoundButtonState(ZZZ)V

    .line 1519
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    iget-boolean v1, p0, Lcom/android/phone/CallView;->mMicIsMuted:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicMuted(Z)V

    .line 1521
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/CallView$CallViewActionListener;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 852
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 853
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcDtmfDialPad;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 855
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/am/SomcAmManager;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 856
    return-void
.end method

.method public setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1380
    if-eqz p1, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1382
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1386
    :goto_0
    return-void

    .line 1384
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "additionalCallInfo"    # Ljava/lang/String;
    .param p4, "typeOfNumber"    # Ljava/lang/String;

    .prologue
    .line 1928
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1929
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1933
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1934
    return-void

    .line 1931
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V
    .locals 1
    .param p1, "nameOrNumber"    # Ljava/lang/String;

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    # invokes: Lcom/android/phone/LargeCallView$WaitingCallPanel;->setBackgroundCallNameOrNumber(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->access$800(Lcom/android/phone/LargeCallView$WaitingCallPanel;Ljava/lang/String;)V

    .line 2198
    return-void
.end method

.method public setCallRecordingOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2158
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2159
    .local v0, "shouldShow":Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallRecordingPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2160
    return-void

    .end local v0    # "shouldShow":Z
    :cond_0
    move v0, v1

    .line 2158
    goto :goto_0

    .line 2159
    .restart local v0    # "shouldShow":Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setCallRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 2149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2154
    :goto_0
    return-void

    .line 2152
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCallTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1493
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1496
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1497
    return-void
.end method

.method public setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/phone/CallView$CallViewMode;

    .prologue
    .line 918
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 919
    return-void
.end method

.method public setDtmfDialPadDigits(Ljava/lang/String;)V
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1619
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcDtmfDialPad;->setDigits(Ljava/lang/String;)V

    .line 1620
    return-void
.end method

.method public setForegroundCallCityId(Ljava/lang/String;)V
    .locals 1
    .param p1, "CityId"    # Ljava/lang/String;

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1946
    :goto_0
    return-void

    .line 1944
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1945
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    goto :goto_0
.end method

.method public setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1842
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1843
    invoke-static {p2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1845
    if-nez v3, :cond_0

    .line 1846
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1851
    :goto_0
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1853
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .line 1859
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b039a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1862
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1863
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1864
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1868
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1869
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1870
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    const v3, 0x7f02009e

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1871
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1895
    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1896
    return-void

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1851
    goto :goto_1

    .line 1866
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1876
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1877
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1878
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1879
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1880
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1881
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1884
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1885
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_5

    .line 1886
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1890
    :goto_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1893
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1888
    :cond_5
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const v0, 0x7f020031

    .line 2174
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v1, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setNameOrNumber(Ljava/lang/String;)V

    .line 2178
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 2191
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2192
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v1, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2193
    return-void

    .line 2180
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 2181
    const v0, 0x7f020032

    goto :goto_0

    .line 2182
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 2183
    const v0, 0x7f020034

    goto :goto_0

    .line 2184
    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 2185
    const v0, 0x7f020030

    goto :goto_0

    .line 2187
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2188
    const-string v1, "Unknown type of photo for foreground call."

    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setForegroundCallInfoForWaitingCall(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "nameOrNumber"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setNameOrNumber(Ljava/lang/String;)V

    .line 2169
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2170
    return-void
.end method

.method public setForegroundCallPhoto(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1336
    .line 1337
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2, v0}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1339
    if-ne p1, v0, :cond_0

    .line 1340
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    .line 1355
    :goto_0
    if-eqz v0, :cond_5

    .line 1356
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1360
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1364
    :goto_2
    return-void

    .line 1341
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1343
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForegroundCallPhoto failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1344
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1345
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1346
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    goto :goto_0

    .line 1347
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1348
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    goto :goto_0

    .line 1350
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "Unknown type of photo for foreground call."

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 1351
    goto :goto_0

    .line 1358
    :cond_5
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1370
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcContactPicView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1371
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForegroundCallPhoto failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1908
    invoke-static {p2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1910
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1912
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1913
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1914
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1923
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 1910
    goto :goto_0

    .line 1916
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    const v1, 0x7f0b0123

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1917
    if-nez v3, :cond_3

    .line 1918
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1920
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setMicButtonEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicButtonEnabled(Z)V

    .line 1530
    return-void
.end method

.method public setSoundRoutingOptionsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 353
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    return-void
.end method

.method public showAllCallsEndedLayout(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1144
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v3, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1146
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1148
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1149
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1155
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1156
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1161
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1166
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideAmAnimation()V

    .line 1168
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1170
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 1173
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1176
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 1177
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1178
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1184
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1185
    return-void

    :cond_2
    move v0, v2

    .line 1152
    goto :goto_0

    .line 1159
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1180
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 1181
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_2
.end method

.method protected showAmPlayingAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2344
    const v0, 0x7f0b0142

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 2345
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2346
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2347
    invoke-direct {p0, v7}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 2348
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    invoke-virtual {p0, v5}, Lcom/android/phone/LargeCallView;->showOptionMenuButton(Z)V

    .line 2350
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2353
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2354
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2355
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2356
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2357
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    const-string v1, "%s \"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0143

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmManager;->getSelectedGreetingName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2360
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2363
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueAnsweringMachine:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 2364
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0}, Lcom/android/phone/SomcIncomingCallView;->setSingleCallSliderMarginBottom()V

    .line 2365
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2366
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2367
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2368
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 2369
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2371
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v7}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 2372
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v7}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 2373
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 2374
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 2375
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 2380
    :goto_0
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v7}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 2381
    return-void

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 2378
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOn()V

    goto :goto_0
.end method

.method protected showAmRecordingAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2389
    const v0, 0x7f0b0142

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 2390
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2391
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2392
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 2393
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2394
    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->showOptionMenuButton(Z)V

    .line 2397
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2398
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2399
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2400
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2401
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    const v1, 0x7f0b0144

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2402
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2405
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueAnsweringMachine:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 2406
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0}, Lcom/android/phone/SomcIncomingCallView;->setSingleCallSliderMarginBottom()V

    .line 2407
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2408
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2409
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2410
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2412
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2413
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 2414
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 2415
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 2416
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 2417
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 2424
    :goto_0
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 2425
    return-void

    .line 2419
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->toggleSpeakerIcon(Z)V

    .line 2420
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2421
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 2422
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOn()V

    goto :goto_0
.end method

.method public showCallEndedInteractionLayout(ZLjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2783
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2785
    invoke-virtual {p0, v0, v5}, Lcom/android/phone/LargeCallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    .line 2788
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2790
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2792
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2794
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2797
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2798
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2799
    if-eqz p1, :cond_0

    .line 2800
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2801
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2802
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2803
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2810
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2811
    return-void

    .line 2805
    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2806
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2807
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2808
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showConferenceCallLayout(ZZ)V
    .locals 7

    .prologue
    const v6, 0x7f0b00b1

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1665
    iget-object v2, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1666
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1667
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1670
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1672
    iput-boolean p2, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    .line 1675
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1676
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1679
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1680
    const v2, 0x7f0b00b3

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1682
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1683
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1684
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1685
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1686
    iget-boolean v2, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 1687
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1691
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1692
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1693
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1695
    iget-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne v0, v1, :cond_4

    .line 1697
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1703
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1704
    invoke-direct {p0, v5}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1705
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v5}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1711
    :cond_1
    :goto_3
    return-void

    .line 1689
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1693
    goto :goto_1

    .line 1699
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showNormalConferenceCallView()V

    .line 1700
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1707
    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 1708
    const-string v0, "Error: In Conference view without conference participants data"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public showEndingLastCallLayout(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1115
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1116
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1120
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v3, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1124
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1125
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideAmAnimation()V

    .line 1127
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 1133
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 1134
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1136
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 1122
    goto :goto_0

    .line 1138
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_1
.end method

.method public showIncomingCallLayout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 867
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 869
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 871
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 872
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 876
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 877
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 878
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 879
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 880
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 887
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 888
    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 889
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 890
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 892
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v2, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 896
    const v0, 0x7f0b00b0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 898
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 899
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0}, Lcom/android/phone/SomcIncomingCallView;->setSingleCallSliderMarginBottom()V

    .line 905
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 911
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 912
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 913
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallEndedInteraction()V

    .line 914
    return-void

    .line 883
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 885
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOn()V

    goto :goto_0

    .line 899
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public showOptionMenuButton(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 2323
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionMenuButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2324
    return-void

    .line 2323
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSingleCallLayout(ZZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1028
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1030
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1031
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1033
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1034
    const v0, 0x7f0b00b0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/SomcInCallButtonPanel;->setIsEmergencyCall(Z)V

    .line 1037
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 1039
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v4, 0x7f02004a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    if-eqz p3, :cond_2

    .line 1042
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1050
    :goto_1
    if-eqz p1, :cond_4

    .line 1051
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueHeldCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 1053
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1054
    const v0, 0x7f0b00ae

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_6

    .line 1068
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1071
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1072
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1073
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1078
    :goto_3
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz p3, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v4, p1, v0}, Lcom/android/phone/SomcInCallButtonPanel;->setHeldCallButtonValue(ZZ)V

    .line 1079
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallEndedInteraction()V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1082
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1083
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isLargeHeaderLayoutTall()Z

    move-result v0

    .line 1086
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1090
    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 1091
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V

    .line 1094
    :cond_0
    if-eqz p3, :cond_8

    .line 1095
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showCallingProgress()V

    .line 1100
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1101
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1102
    if-eqz p2, :cond_9

    .line 1103
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1111
    :goto_6
    return-void

    .line 1031
    :cond_1
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1044
    :cond_2
    if-eqz p1, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1057
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1058
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-nez v0, :cond_5

    .line 1059
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    .line 1061
    :cond_5
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1063
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1075
    :cond_6
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v0, v3

    .line 1078
    goto :goto_4

    .line 1097
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    goto :goto_5

    .line 1105
    :cond_9
    if-eqz p3, :cond_a

    .line 1106
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->CALLING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    goto :goto_6

    .line 1108
    :cond_a
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    goto :goto_6
.end method

.method public showSipCallingProgress()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1294
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 1295
    const v0, 0x7f0b00b4

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1296
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1297
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1298
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1305
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1307
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1309
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isLargeHeaderLayoutTall()Z

    move-result v0

    .line 1310
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1311
    if-eqz v0, :cond_2

    .line 1312
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V

    .line 1314
    :cond_2
    return-void
.end method

.method public showTwoCallsLayout(ZZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1193
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1196
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1197
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1198
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1201
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1202
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1203
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3, v6}, Lcom/android/phone/SomcInCallButtonPanel;->setHeldCallButtonValue(ZZ)V

    .line 1208
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1209
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 1210
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v4, 0x7f02004a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 1219
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    if-eqz p2, :cond_3

    .line 1223
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->enableMergeCallsButton()V

    .line 1227
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1229
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1231
    iput-boolean v3, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    .line 1234
    new-array v0, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1235
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00b1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1238
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1240
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1242
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1247
    const v0, 0x7f0b00b3

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1249
    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->setForegroundCallPhoto(I)V

    .line 1257
    :goto_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1260
    invoke-direct {p0, v6}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1261
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1262
    return-void

    .line 1205
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1212
    goto/16 :goto_1

    .line 1225
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->disableMergeCallsButton()V

    goto/16 :goto_2

    .line 1251
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1252
    const v0, 0x7f0b00b0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1253
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3
.end method

.method public showWaitingCallLayout(ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 956
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 957
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 959
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 960
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 961
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 963
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 966
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 968
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 974
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 975
    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 977
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 979
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 981
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 983
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 984
    const v0, 0x7f0b00b0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 986
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 987
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 995
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->showWaitingCall(ZZ)V

    .line 999
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1000
    return-void

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 972
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_0
.end method

.method public showWidget(Landroid/widget/RemoteViews;I)V
    .locals 4

    .prologue
    .line 2564
    invoke-direct {p0, p2}, Lcom/android/phone/LargeCallView;->findWidgetContainerByType(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2565
    if-nez v0, :cond_0

    .line 2581
    :goto_0
    return-void

    .line 2568
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2570
    if-eqz p1, :cond_1

    .line 2571
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2573
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2574
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2575
    :catch_0
    move-exception v0

    .line 2576
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not apply remote view. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2579
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startAmPlayingAnimation()V
    .locals 1

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->startPlayingAnimation()V

    .line 2385
    return-void
.end method

.method protected startAmRecordingAnimation()V
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->startRecordingAnimation()V

    .line 2429
    return-void
.end method

.method protected toggleSpeakerIcon(Z)V
    .locals 3

    .prologue
    .line 2450
    if-eqz p1, :cond_0

    .line 2451
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2452
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2459
    :goto_0
    return-void

    .line 2455
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2456
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateWidgetMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2584
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateWidgetMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2585
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_1

    .line 2586
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->refresh(Ljava/util/List;)V

    .line 2588
    :cond_1
    return-void
.end method
