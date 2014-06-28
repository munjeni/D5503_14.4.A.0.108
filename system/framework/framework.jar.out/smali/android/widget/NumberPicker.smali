.class public Landroid/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPicker$CustomEditText;,
        Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPicker$SetSelectionCommand;,
        Landroid/widget/NumberPicker$PressedStateHelper;,
        Landroid/widget/NumberPicker$InputTextFilter;,
        Landroid/widget/NumberPicker$Formatter;,
        Landroid/widget/NumberPicker$OnScrollListener;,
        Landroid/widget/NumberPicker$OnValueChangeListener;,
        Landroid/widget/NumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x109006b

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

.field private final mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    new-instance v0, Landroid/widget/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    .line 1952
    const/16 v0, 0x3c

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x9e6s
        0x9e7s
        0x9e8s
        0x9e9s
        0x9eas
        0x9ebs
        0x9ecs
        0x9eds
        0x9ees
        0x9efs
        0x966s
        0x967s
        0x968s
        0x969s
        0x96as
        0x96bs
        0x96cs
        0x96ds
        0x96es
        0x96fs
        0xce6s
        0xce7s
        0xce8s
        0xce9s
        0xceas
        0xcebs
        0xcecs
        0xceds
        0xcees
        0xcefs
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 553
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 562
    const v0, 0x1010404

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 573
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 301
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 306
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 311
    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 331
    const/high16 v14, -0x80000000

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 432
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 483
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 576
    sget-object v14, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 578
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    const v15, 0x109006b

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 581
    .local v10, "layoutResId":I
    const v14, 0x109006b

    if-eq v10, v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 583
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSolidColor:I

    .line 585
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 587
    const/4 v14, 0x1

    const/high16 v15, 0x40000000

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v8, v14

    .line 590
    .local v8, "defSelectionDividerHeight":I
    const/4 v14, 0x3

    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    .line 593
    const/4 v14, 0x1

    const/high16 v15, 0x42400000

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 596
    .local v7, "defSelectionDividerDistance":I
    const/4 v14, 0x4

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 599
    const/4 v14, 0x5

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    .line 602
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    .line 604
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxHeight:I

    if-le v14, v15, :cond_1

    .line 606
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minHeight > maxHeight"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 581
    .end local v7    # "defSelectionDividerDistance":I
    .end local v8    # "defSelectionDividerHeight":I
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 609
    .restart local v7    # "defSelectionDividerDistance":I
    .restart local v8    # "defSelectionDividerHeight":I
    :cond_1
    const/4 v14, 0x7

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    .line 612
    const/16 v14, 0x8

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 614
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMinWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-le v14, v15, :cond_2

    .line 616
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minWidth > maxWidth"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 619
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mMaxWidth:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 621
    const/16 v14, 0x9

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 624
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 626
    new-instance v14, Landroid/widget/NumberPicker$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/NumberPicker$PressedStateHelper;-><init>(Landroid/widget/NumberPicker;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    .line 633
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->setWillNotDraw(Z)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 637
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 639
    new-instance v11, Landroid/widget/NumberPicker$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/NumberPicker$1;-><init>(Landroid/widget/NumberPicker;)V

    .line 651
    .local v11, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v12, Landroid/widget/NumberPicker$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/NumberPicker$2;-><init>(Landroid/widget/NumberPicker;)V

    .line 665
    .local v12, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_6

    .line 666
    const v14, 0x10202f2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    .line 667
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 674
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v14, :cond_7

    .line 675
    const v14, 0x10202f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 677
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 683
    :goto_4
    const v14, 0x10202f3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 684
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v15, Landroid/widget/NumberPicker$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPicker$3;-><init>(Landroid/widget/NumberPicker;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    new-instance v17, Landroid/widget/NumberPicker$InputTextFilter;

    invoke-direct/range {v17 .. v18}, Landroid/widget/NumberPicker$InputTextFilter;-><init>(Landroid/widget/NumberPicker;)V

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 707
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 708
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTouchSlop:I

    .line 709
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 710
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    div-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPicker;->mTextSize:I

    .line 715
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 716
    .local v13, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 717
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 718
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 721
    .local v5, "colors":Landroid/content/res/ColorStateList;
    sget-object v14, Landroid/widget/NumberPicker;->ENABLED_STATE_SET:[I

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 722
    .local v4, "color":I
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 726
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 727
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x40200000

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 729
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPicker;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_3

    .line 733
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPicker;->setImportantForAccessibility(I)V

    .line 735
    :cond_3
    return-void

    .line 619
    .end local v4    # "color":I
    .end local v5    # "colors":Landroid/content/res/ColorStateList;
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v13    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 633
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 670
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 679
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPicker;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPicker;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Landroid/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Landroid/widget/NumberPicker;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPicker;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/NumberPicker;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-wide v0, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2700(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2802(Landroid/widget/NumberPicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPicker;ZJ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPicker;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollX:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mLeft:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollY:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mTop:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mRight:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/NumberPicker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/NumberPicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/NumberPicker;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/NumberPicker;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/NumberPicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;
    .param p1, "x1"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 98
    sget-object v0, Landroid/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/NumberPicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1635
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1636
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1637
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1638
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1640
    :cond_0
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1641
    if-eqz p1, :cond_1

    .line 1642
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1646
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1654
    :goto_1
    return-void

    .line 1644
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1648
    :cond_2
    if-eqz p1, :cond_3

    .line 1649
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1651
    :cond_3
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1755
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1756
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1755
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1758
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1759
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1760
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1762
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1763
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1764
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1771
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1772
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1773
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1787
    :goto_0
    return-void

    .line 1776
    :cond_0
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1777
    :cond_1
    const-string v2, ""

    .line 1786
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1779
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1780
    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int v1, p1, v3

    .line 1781
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1782
    goto :goto_1

    .line 1783
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2046
    iget v0, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2047
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2048
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2049
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2050
    if-lez v4, :cond_2

    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2052
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2053
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 2054
    const/4 v1, 0x1

    .line 2056
    :cond_1
    return v1

    .line 2050
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1711
    iput v1, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1713
    if-lez p1, :cond_0

    .line 1714
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1719
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    .line 1720
    return-void

    .line 1716
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1790
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2634
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1905
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1907
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1931
    :goto_0
    return v1

    .line 1912
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1914
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1915
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1916
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1912
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1925
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1908
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1931
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    goto :goto_0

    .line 1926
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Landroid/widget/NumberPicker;->sTwoDigitFormatter:Landroid/widget/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1726
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1727
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1731
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1728
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1729
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1222
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1223
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1225
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1226
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1229
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1740
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1739
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1742
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1743
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1744
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1746
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1747
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1748
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1674
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1675
    iget v0, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setFadingEdgeLength(I)V

    .line 1676
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1657
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1658
    iget-object v1, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1659
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPicker;->mTextSize:I

    mul-int v4, v5, v6

    .line 1660
    .local v4, "totalTextHeight":I
    iget v5, p0, Landroid/widget/NumberPicker;->mBottom:I

    iget v6, p0, Landroid/widget/NumberPicker;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1661
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1662
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1663
    iget v5, p0, Landroid/widget/NumberPicker;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1666
    iget-object v5, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1667
    .local v0, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1669
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1670
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1671
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1587
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1588
    iget-object v3, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1589
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 1590
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1591
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1592
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1593
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1595
    :cond_0
    aput v2, v3, v1

    .line 1596
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 1590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1598
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 1545
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1556
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1548
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1549
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1550
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1558
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1554
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1556
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1550
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 793
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 794
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 795
    .local v0, "amountToScroll":I
    iget v5, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 796
    .local v1, "futureScrollOffset":I
    iget v5, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 797
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 798
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 799
    if-lez v2, :cond_1

    .line 800
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 805
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 806
    invoke-virtual {p0, v4, v0}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 809
    :goto_1
    return v3

    .line 802
    :cond_1
    iget v5, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 809
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1834
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPicker$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPicker;II)V

    .line 1837
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1698
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1701
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mScrollState:I

    .line 1702
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1703
    iget-object v0, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPicker;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1682
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1683
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1684
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1686
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1692
    :cond_1
    :goto_0
    return-void

    .line 1688
    :cond_2
    iget v0, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1689
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 1868
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1869
    new-instance v0, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    .line 1873
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1874
    return-void

    .line 1871
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1845
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1846
    new-instance v0, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    .line 1850
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$500(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1851
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1852
    return-void

    .line 1848
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 1939
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 1940
    new-instance v0, Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$SetSelectionCommand;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    .line 1944
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$602(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1945
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPicker$SetSelectionCommand;->access$702(Landroid/widget/NumberPicker$SetSelectionCommand;I)I

    .line 1946
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 1947
    return-void

    .line 1942
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1889
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1892
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1893
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSetSelectionCommand:Landroid/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1895
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1896
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1898
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1899
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1881
    iget-object v0, p0, Landroid/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1883
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1859
    iget-object v0, p0, Landroid/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1861
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1574
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1575
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1576
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPicker;->resolveSizeAndState(III)I

    move-result p2

    .line 1578
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1607
    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1625
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1612
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1617
    :goto_1
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1618
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1619
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1620
    if-eqz p2, :cond_1

    .line 1621
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPicker;->notifyChange(II)V

    .line 1623
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1624
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1614
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1615
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1208
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1209
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1210
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1213
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1214
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1216
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1235
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    const/4 v4, 0x0

    .line 1239
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1240
    const/4 v3, 0x0

    .line 1241
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1242
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1243
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1244
    move v3, v1

    .line 1241
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1247
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1248
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1249
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1250
    add-int/lit8 v5, v5, 0x1

    .line 1251
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1253
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1263
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1264
    iget v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1265
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1266
    iput v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    .line 1270
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1255
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1256
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1257
    iget-object v8, p0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1258
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1259
    float-to-int v4, v6

    .line 1256
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1268
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 4

    .prologue
    .line 1819
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1821
    .local v0, "text":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1822
    iget-object v1, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1823
    const/4 v1, 0x1

    .line 1826
    :goto_1
    return v1

    .line 1819
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    iget v3, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v0, v1, v2

    goto :goto_0

    .line 1826
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1794
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1795
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1803
    :goto_0
    return-void

    .line 1800
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1801
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1049
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1050
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    iget-object v1, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1052
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1057
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1058
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1059
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1061
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 1062
    iput v0, p0, Landroid/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1063
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1066
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 1126
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1121
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1000
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1001
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1044
    :goto_0
    return v4

    .line 1003
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1006
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1007
    const/4 v2, 0x3

    .line 1013
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1014
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1016
    .local v3, "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1044
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1008
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1009
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1011
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1018
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1020
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1021
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1025
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1027
    iget v4, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1030
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1032
    iput v2, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 1033
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1038
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1040
    iput v5, p0, Landroid/widget/NumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 951
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 952
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 983
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 955
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 959
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 962
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 964
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 966
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->requestFocus()Z

    .line 967
    iput v0, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 968
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 969
    iget-object v1, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 964
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 970
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 976
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 977
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 952
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 940
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 946
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 943
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 989
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 995
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 992
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_0

    .line 989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1528
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1529
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1534
    :goto_0
    return-object v0

    .line 1531
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1532
    new-instance v0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPicker;)V

    iput-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    .line 1534
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mAccessibilityNodeProvider:Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1451
    const v0, 0x3f666666

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1415
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1377
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1339
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1131
    iget v0, p0, Landroid/widget/NumberPicker;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1446
    const v0, 0x3f666666

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1330
    iget v0, p0, Landroid/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1283
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1456
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1457
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 1458
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1462
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v11, :cond_1

    .line 1463
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1515
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPicker;->mLeft:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    int-to-float v9, v11

    .line 1467
    .local v9, "x":F
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v10, v11

    .line 1470
    .local v10, "y":F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v11, :cond_3

    .line 1472
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    if-eqz v11, :cond_2

    .line 1473
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1474
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1477
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    if-eqz v11, :cond_3

    .line 1478
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v12, Landroid/widget/NumberPicker;->PRESSED_STATE_SET:[I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1479
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPicker;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPicker;->mBottom:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1481
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1486
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1487
    .local v6, "selectorIndices":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v11, v6

    if-ge v3, v11, :cond_6

    .line 1488
    aget v5, v6, v3

    .line 1489
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1495
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    const/4 v11, 0x1

    if-ne v3, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getVisibility()I

    move-result v11

    if-eqz v11, :cond_5

    .line 1496
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1498
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 1487
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1502
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_0

    .line 1504
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 1505
    .local v8, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    add-int v2, v8, v11

    .line 1506
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v11, v12, v8, v13, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1507
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1510
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1511
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int v7, v1, v11

    .line 1512
    .local v7, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPicker;->mRight:I

    invoke-virtual {v11, v12, v7, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1513
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1519
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1520
    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1521
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1522
    iget v0, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1523
    iget v0, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1524
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 814
    iget-boolean v3, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 862
    :goto_0
    return v1

    .line 817
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 818
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 862
    goto :goto_0

    .line 820
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 821
    iget-object v3, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iput v3, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    .line 824
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 825
    iput-boolean v2, p0, Landroid/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 827
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 828
    iget v3, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 829
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 839
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 840
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 841
    iget-object v3, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 842
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 843
    invoke-direct {p0, v2}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 832
    :cond_3
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 833
    iget v3, p0, Landroid/widget/NumberPicker;->mScrollState:I

    if-nez v3, :cond_2

    .line 834
    iget-object v3, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 844
    :cond_4
    iget-object v3, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 845
    iget-object v2, p0, Landroid/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 846
    iget-object v2, p0, Landroid/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 847
    :cond_5
    iget v3, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 848
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 849
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 851
    :cond_6
    iget v2, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 852
    invoke-direct {p0}, Landroid/widget/NumberPicker;->hideSoftInput()V

    .line 853
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 856
    :cond_7
    iput-boolean v1, p0, Landroid/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 857
    invoke-direct {p0}, Landroid/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 739
    iget-boolean v8, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 740
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v7

    .line 744
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v6

    .line 747
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 748
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 749
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 750
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 751
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 752
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 753
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 755
    if-eqz p1, :cond_0

    .line 757
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheel()V

    .line 758
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeFadingEdges()V

    .line 759
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    .line 761
    iget v8, p0, Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPicker;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 768
    iget-boolean v4, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 769
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 782
    :goto_0
    return-void

    .line 773
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v2

    .line 774
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 775
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 777
    iget v4, p0, Landroid/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 779
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 781
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPicker;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 868
    :cond_0
    const/4 v10, 0x0

    .line 934
    :goto_0
    return v10

    .line 870
    :cond_1
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 871
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 873
    :cond_2
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 875
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 934
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 877
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-nez v10, :cond_3

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 881
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPicker;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 882
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 883
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 884
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeAllCallbacks()V

    .line 885
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 892
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 888
    :cond_5
    iget v10, p0, Landroid/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 889
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPicker;->scrollBy(II)V

    .line 890
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_2

    .line 895
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 896
    invoke-direct {p0}, Landroid/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 897
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 898
    iget-object v9, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 899
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 900
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 901
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 902
    invoke-direct {p0, v7}, Landroid/widget/NumberPicker;->fling(I)V

    .line 903
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    .line 930
    :goto_3
    iget-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 931
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 905
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 906
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 907
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPicker;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 908
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPicker;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 909
    iget-boolean v10, p0, Landroid/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_8

    .line 910
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 911
    invoke-direct {p0}, Landroid/widget/NumberPicker;->showSoftInput()V

    .line 928
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_3

    .line 913
    :cond_8
    iget v10, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 915
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_9

    .line 916
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 917
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 919
    :cond_9
    if-gez v8, :cond_7

    .line 920
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPicker;->changeValueByOne(Z)V

    .line 921
    iget-object v10, p0, Landroid/widget/NumberPicker;->mPressedStateHelper:Landroid/widget/NumberPicker$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 926
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1084
    iget-object v0, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    .line 1085
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1087
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1092
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1095
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1096
    :cond_3
    :goto_1
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1097
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1098
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1099
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1100
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1101
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1104
    :cond_4
    :goto_2
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1105
    iget v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1106
    invoke-direct {p0, v0}, Landroid/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1107
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1108
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1109
    iget v1, p0, Landroid/widget/NumberPicker;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1442
    :goto_0
    return-void

    .line 1431
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1432
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1439
    :goto_1
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1440
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1441
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1437
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1072
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1073
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1076
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1077
    iget-object v0, p0, Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1079
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1080
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPicker$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPicker$Formatter;

    .prologue
    .line 1164
    iget-object v0, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    .line 1170
    :goto_0
    return-void

    .line 1167
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPicker;->mFormatter:Landroid/widget/NumberPicker$Formatter;

    .line 1168
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1169
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1391
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1394
    :cond_0
    if-gez p1, :cond_1

    .line 1395
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1397
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    .line 1398
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1399
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1401
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1402
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1403
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1404
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1405
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1406
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1401
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1353
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1369
    :goto_0
    return-void

    .line 1356
    :cond_0
    if-gez p1, :cond_1

    .line 1357
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1359
    :cond_1
    iput p1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    .line 1360
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mValue:I

    if-le v1, v2, :cond_2

    .line 1361
    iget v1, p0, Landroid/widget/NumberPicker;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPicker;->mValue:I

    .line 1363
    :cond_2
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1364
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1365
    invoke-direct {p0}, Landroid/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1366
    invoke-direct {p0}, Landroid/widget/NumberPicker;->updateInputTextView()Z

    .line 1367
    invoke-direct {p0}, Landroid/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1368
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->invalidate()V

    goto :goto_0

    .line 1363
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1321
    iput-wide p1, p0, Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 1322
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPicker$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPicker$OnScrollListener;

    .prologue
    .line 1149
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnScrollListener:Landroid/widget/NumberPicker$OnScrollListener;

    .line 1150
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPicker$OnValueChangeListener;

    .prologue
    .line 1140
    iput-object p1, p0, Landroid/widget/NumberPicker;->mOnValueChangeListener:Landroid/widget/NumberPicker$OnValueChangeListener;

    .line 1141
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1202
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1304
    iget v1, p0, Landroid/widget/NumberPicker;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1305
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1306
    iput-boolean p1, p0, Landroid/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1308
    :cond_1
    return-void

    .line 1304
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
