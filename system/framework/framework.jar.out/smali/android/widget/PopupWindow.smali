.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final PARENT_SYSTEM_UI_VISIBILITY_MASK:I = 0x40e0


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mParentSystemUiVisibility:I

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 271
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 105
    const/4 v8, 0x1

    iput v8, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 106
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 107
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 108
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 109
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 112
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 113
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 128
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 129
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 130
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 137
    const/16 v8, 0x3e8

    iput v8, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 140
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 142
    const/4 v8, -0x1

    iput v8, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 144
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    .line 151
    new-instance v8, Landroid/widget/PopupWindow$1;

    invoke-direct {v8, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v8, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 202
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 203
    const-string/jumbo v8, "window"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    iput-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 205
    move-object v4, p1

    .line 206
    .local v4, "baseContext":Landroid/content/Context;
    instance-of v8, p1, Landroid/content/ContextWrapper;

    if-eqz v8, :cond_0

    move-object v8, p1

    .line 207
    check-cast v8, Landroid/content/ContextWrapper;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 209
    :cond_0
    instance-of v8, v4, Lcom/sony/smallapp/AbstractSmallApplication;

    if-eqz v8, :cond_1

    .line 210
    const/16 v8, 0xbb5

    iput v8, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 213
    :cond_1
    sget-object v8, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 219
    const/4 v8, 0x1

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 220
    .local v2, "animStyle":I
    const v8, 0x10301f6

    if-ne v2, v8, :cond_2

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_2
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 232
    iget-object v8, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v8, v8, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v8, :cond_4

    .line 233
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 236
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v8, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v8}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 240
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v6

    .line 241
    .local v6, "count":I
    const/4 v5, -0x1

    .line 242
    .local v5, "belowAnchorStateIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 243
    if-eq v7, v1, :cond_5

    .line 244
    move v5, v7

    .line 251
    :cond_3
    const/4 v8, -0x1

    if-eq v1, v8, :cond_6

    const/4 v8, -0x1

    if-eq v5, v8, :cond_6

    .line 252
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 260
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v5    # "belowAnchorStateIndex":I
    .end local v6    # "count":I
    .end local v7    # "i":I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    return-void

    .line 242
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v5    # "belowAnchorStateIndex":I
    .restart local v6    # "count":I
    .restart local v7    # "i":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 255
    :cond_6
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 256
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 105
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 106
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 108
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 109
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 112
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 113
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 128
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 129
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 137
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 140
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 142
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 144
    iput v1, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    .line 151
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 331
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 334
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 335
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 336
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 337
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1161
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1162
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1163
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301f0

    .line 1169
    :goto_0
    return v0

    .line 1163
    :cond_0
    const v0, 0x10301ef

    goto :goto_0

    .line 1167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1169
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1117
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1125
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1126
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1128
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1129
    or-int/lit8 p1, p1, 0x8

    .line 1130
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1131
    or-int/2addr p1, v2

    .line 1136
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1137
    or-int/lit8 p1, p1, 0x10

    .line 1139
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1140
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1142
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1143
    or-int/lit16 p1, p1, 0x200

    .line 1145
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1146
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1148
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1149
    or-int/lit16 p1, p1, 0x100

    .line 1151
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1152
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1154
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1155
    or-int/lit8 p1, p1, 0x20

    .line 1157
    :cond_8
    return p1

    .line 1133
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1134
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1094
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1099
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1100
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1101
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1102
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1103
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1107
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1108
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1109
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1110
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1113
    return-object v0

    .line 1105
    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 16
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1190
    .local v1, "anchorHeight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v13, v13, p3

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1192
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v13, v1

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1194
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v13

    move/from16 v0, p5

    invoke-static {v0, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    and-int/lit8 v4, v13, 0x7

    .line 1196
    .local v4, "hgrav":I
    const/4 v13, 0x5

    if-ne v4, v13, :cond_0

    .line 1198
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1201
    :cond_0
    const/4 v5, 0x0

    .line 1203
    .local v5, "onTop":Z
    const/16 v13, 0x33

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1205
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1206
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1207
    .local v2, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v13, v1

    add-int v10, v13, p4

    .line 1211
    .local v10, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 1212
    .local v9, "root":Landroid/view/View;
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v13, v10

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v13, v14, :cond_1

    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v13, v14

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    if-lez v13, :cond_4

    .line 1217
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    if-eqz v13, :cond_2

    .line 1218
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v11

    .line 1219
    .local v11, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v12

    .line 1220
    .local v12, "scrollY":I
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    add-int/2addr v13, v11

    add-int v13, v13, p3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v14, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    add-int v14, v14, p4

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1222
    .local v7, "r":Landroid/graphics/Rect;
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v13}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1227
    .end local v7    # "r":Landroid/graphics/Rect;
    .end local v11    # "scrollX":I
    .end local v12    # "scrollY":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int v13, v13, p3

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1229
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1232
    const/4 v13, 0x5

    if-ne v4, v13, :cond_3

    .line 1233
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1237
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1239
    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v13, v13, p4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int v14, v14, p4

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    if-ge v13, v14, :cond_8

    const/4 v5, 0x1

    .line 1241
    :goto_0
    if-eqz v5, :cond_9

    .line 1242
    const/16 v13, 0x53

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1243
    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    sub-int/2addr v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1249
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v13, :cond_7

    .line 1250
    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int v3, v13, v14

    .line 1252
    .local v3, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v8, v13, v14

    .line 1253
    .local v8, "right":I
    if-le v8, v3, :cond_5

    .line 1254
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v14, v8, v3

    sub-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1256
    :cond_5
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_6

    .line 1257
    iget v13, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1258
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1261
    :cond_6
    if-eqz v5, :cond_a

    .line 1262
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    sub-int v6, v13, v14

    .line 1263
    .local v6, "popupTop":I
    if-gez v6, :cond_7

    .line 1264
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v13, v6

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1271
    .end local v3    # "displayFrameWidth":I
    .end local v6    # "popupTop":I
    .end local v8    # "right":I
    :cond_7
    :goto_2
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/high16 v14, 0x10000000

    or-int/2addr v13, v14

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1273
    return v5

    .line 1239
    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    .line 1245
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int v13, v13, p4

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1267
    .restart local v3    # "displayFrameWidth":I
    .restart local v8    # "right":I
    :cond_a
    move-object/from16 v0, p2

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v14, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p2

    iput v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method

.method private getSysUiVisibility(Landroid/view/View;)I
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    and-int/lit16 v0, v0, 0x40e0

    return v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1058
    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1059
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1061
    iget v0, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-eqz v0, :cond_1

    .line 1063
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1066
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    iget v0, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-eqz v0, :cond_2

    .line 1070
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1071
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1073
    :cond_2
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1008
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1009
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1013
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 1014
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1015
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1016
    .local v0, "height":I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1018
    const/4 v0, -0x2

    .line 1023
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1024
    .local v3, "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1027
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1030
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1036
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget v4, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    if-eqz v4, :cond_3

    .line 1037
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget v5, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1040
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1042
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1043
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1044
    return-void

    .line 1032
    :cond_4
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1040
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1622
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1624
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1625
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1626
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1627
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1630
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1631
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1632
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 1633
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1076
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1078
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1079
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1082
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1609
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1610
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1611
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1612
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1614
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1615
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1616
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1618
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1619
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 18
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1555
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1596
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1560
    .local v15, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 1561
    .local v14, "needsUpdate":Z
    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_8

    .line 1562
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1570
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1572
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1573
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_9

    .line 1574
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1578
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_a

    .line 1579
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1585
    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v16, v0

    .line 1586
    .local v16, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v17, v0

    .line 1588
    .local v17, "y":I
    if-eqz p2, :cond_b

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1589
    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1595
    :goto_5
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v16

    if-ne v0, v5, :cond_6

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v17

    if-eq v0, v5, :cond_c

    :cond_6
    const/4 v13, 0x1

    :goto_6
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    .line 1560
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v14    # "needsUpdate":Z
    .end local v16    # "x":I
    .end local v17    # "y":I
    :cond_7
    const/4 v14, 0x0

    goto :goto_1

    .line 1563
    .restart local v14    # "needsUpdate":Z
    :cond_8
    if-eqz v14, :cond_4

    .line 1565
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1566
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1567
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto :goto_2

    .line 1576
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_9
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto :goto_3

    .line 1581
    :cond_a
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto :goto_4

    .line 1591
    .restart local v16    # "x":I
    .restart local v17    # "y":I
    :cond_b
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto :goto_5

    .line 1595
    :cond_c
    const/4 v13, 0x0

    goto :goto_6
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 964
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 965
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 967
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 972
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 978
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1355
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1356
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1358
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1361
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1366
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1368
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1369
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1373
    :cond_1
    return-void

    .line 1363
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1364
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1366
    :cond_2
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1368
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_3

    .line 1369
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_3
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 773
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1287
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1323
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1324
    .local v2, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1326
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1327
    .local v0, "anchorPos":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1329
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 1330
    .local v1, "bottomEdge":I
    if-eqz p3, :cond_0

    .line 1331
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1332
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1334
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sub-int v7, v1, v7

    sub-int v3, v7, p2

    .line 1335
    .local v3, "distanceToBottom":I
    aget v7, v0, v9

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int v4, v7, p2

    .line 1338
    .local v4, "distanceToTop":I
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1339
    .local v6, "returnedHeight":I
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_1

    .line 1340
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1341
    iget-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    .line 1344
    :cond_1
    return v6
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 648
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 649
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 651
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 649
    goto :goto_0

    .line 651
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 637
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 638
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 397
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 398
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 355
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 356
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 626
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 627
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 628
    return-void

    .line 627
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 616
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 617
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 429
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 433
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 474
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 475
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 788
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 789
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 380
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 500
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 501
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 691
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 692
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 707
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 708
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1381
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1382
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 587
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 588
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 514
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 515
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 668
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 669
    return-void

    .line 668
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 443
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 444
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 735
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 736
    return-void

    .line 735
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 555
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 814
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 815
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 761
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 762
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 763
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 718
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 719
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 894
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 895
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 914
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 915
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 935
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 939
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getSysUiVisibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    .line 941
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 943
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 944
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 947
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 949
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 951
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 952
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 954
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 956
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 858
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 880
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 864
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 865
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 867
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 868
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 870
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 871
    if-nez p2, :cond_2

    .line 872
    const p2, 0x800033

    .line 874
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 875
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 876
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 877
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 878
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 879
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 841
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->getSysUiVisibility(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/widget/PopupWindow;->mParentSystemUiVisibility:I

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 844
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1392
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1399
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1401
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1402
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1403
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1404
    const/4 v3, 0x1

    .line 1407
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1408
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1409
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1410
    const/4 v3, 0x1

    .line 1413
    :cond_3
    if-eqz v3, :cond_0

    .line 1414
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1415
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1430
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1431
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1445
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1446
    return-void
.end method

.method public update(IIIIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1462
    if-eq p3, v7, :cond_0

    .line 1463
    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1464
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1467
    :cond_0
    if-eq p4, v7, :cond_1

    .line 1468
    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1469
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1472
    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v6, :cond_3

    .line 1518
    :cond_2
    :goto_0
    return-void

    .line 1476
    :cond_3
    iget-object v6, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 1478
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 1480
    .local v5, "update":Z
    iget v6, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v6, :cond_a

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1481
    .local v1, "finalWidth":I
    :goto_1
    if-eq p3, v7, :cond_4

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_4

    .line 1482
    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1483
    const/4 v5, 0x1

    .line 1486
    :cond_4
    iget v6, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v6, :cond_b

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1487
    .local v0, "finalHeight":I
    :goto_2
    if-eq p4, v7, :cond_5

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_5

    .line 1488
    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1489
    const/4 v5, 0x1

    .line 1492
    :cond_5
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_6

    .line 1493
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1494
    const/4 v5, 0x1

    .line 1497
    :cond_6
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_7

    .line 1498
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1499
    const/4 v5, 0x1

    .line 1502
    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v2

    .line 1503
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_8

    .line 1504
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1505
    const/4 v5, 0x1

    .line 1508
    :cond_8
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v3

    .line 1509
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_9

    .line 1510
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1511
    const/4 v5, 0x1

    .line 1514
    :cond_9
    if-eqz v5, :cond_2

    .line 1515
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1516
    iget-object v6, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1480
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_a
    iget v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1486
    .restart local v1    # "finalWidth":I
    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1530
    const/4 v5, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1531
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1549
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1550
    return-void
.end method
