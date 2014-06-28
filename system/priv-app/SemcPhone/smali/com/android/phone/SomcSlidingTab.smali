.class public Lcom/android/phone/SomcSlidingTab;
.super Landroid/view/ViewGroup;
.source "SomcSlidingTab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    }
.end annotation


# instance fields
.field private mAbortGhostAnimation:Z

.field private mActivePointerId:I

.field private mBackground:Landroid/widget/ImageView;

.field private mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mDensity:F

.field private mDisabledFirstButton:Landroid/widget/ImageView;

.field private mDisabledSecondButton:Landroid/widget/ImageView;

.field private mDrawableFirstDisabledId:I

.field private mDrawableFirstExpandedId:I

.field private mDrawableFirstGhostId:I

.field private mDrawableSecondDisabledId:I

.field private mDrawableSecondExpandedId:I

.field private mDrawableSecondGhostId:I

.field private mExpandedButton:Landroid/widget/ImageView;

.field private mFingerFlickerDone:Z

.field private final mFingerFlickeringThreshold:I

.field private mFingerOff:I

.field private mFingerStartPos:I

.field private mFirstActivatePoint:I

.field private mFirstBtnPosition:I

.field private mFirstTouchablePart:I

.field private mGhostButton:Landroid/widget/ImageView;

.field private mHapticsEnabled:Z

.field private mHintText:Landroid/widget/TextView;

.field private mIsAnimating:Z

.field private mIsGhostAnimating:Z

.field private mLastMovePos:I

.field private mLongpressGhostStarted:Z

.field private mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

.field private mPastActionPoint:Z

.field private mPortrait:Z

.field private mPressTimestamp:J

.field private mResetAfterGhost:Z

.field private mSecondActivatePoint:I

.field private mSecondBtnPosition:I

.field private mSecondTouchablePart:I

.field private mSlider2Id:I

.field private mSlider3Id:I

.field private mSliderBgIncomingId:I

.field private mSliderHeight:I

.field private mSliderMarginBottom:I

.field private mSliderMarginStart:I

.field private mSliderState:B

.field private mSliderWidth:I

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v9, 0x3ec

    const/16 v8, 0x3eb

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 203
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 122
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 124
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    .line 126
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcSlidingTab;->mPressTimestamp:J

    .line 131
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    .line 134
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 140
    iput-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 143
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    .line 146
    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    .line 151
    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 153
    const v0, 0x7f020131

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    .line 155
    const v0, 0x7f020132

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    .line 157
    const v0, 0x7f02012f

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    .line 159
    const v0, 0x7f020135

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    .line 161
    const v0, 0x7f020136

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondExpandedId:I

    .line 163
    const v0, 0x7f020133

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    .line 165
    const v0, 0x7f020115

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSlider2Id:I

    .line 167
    const v0, 0x7f020114

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSlider3Id:I

    .line 169
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderBgIncomingId:I

    .line 176
    iput-byte v7, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 204
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    .line 206
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Portrait"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    .line 216
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    .line 217
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    .line 218
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    .line 219
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    .line 220
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mHapticsEnabled:Z

    .line 223
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mDensity:F

    .line 227
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderBgIncomingId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v5, 0x3ed

    invoke-direct {p0, v0, v1, v4, v5}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "hintText":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mDensity:F

    div-float v3, v0, v1

    .line 234
    .local v3, "hintTextSize":F
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    const/16 v5, 0x3ee

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/SomcSlidingTab;->initiateTextView(Landroid/widget/TextView;Ljava/lang/String;FZI)V

    .line 236
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v5, 0x3ea

    invoke-direct {p0, v0, v1, v7, v5}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 239
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 242
    .local v6, "display":Landroid/view/Display;
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 243
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderBgIncomingId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderBgIncomingId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    .line 246
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v8}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 249
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v9}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 263
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    .line 267
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v4, 0x3e9

    invoke-direct {p0, v0, v1, v7, v4}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 269
    return-void

    .line 212
    .end local v2    # "hintText":Ljava/lang/String;
    .end local v3    # "hintTextSize":F
    .end local v6    # "display":Landroid/view/Display;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_1

    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    goto/16 :goto_0

    :cond_1
    move v0, v7

    goto :goto_3

    :cond_2
    move v0, v7

    .line 221
    goto/16 :goto_1

    .line 254
    .restart local v2    # "hintText":Ljava/lang/String;
    .restart local v3    # "hintTextSize":F
    .restart local v6    # "display":Landroid/view/Display;
    :cond_3
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    .line 255
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    .line 256
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v8}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    .line 259
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4, v9}, Lcom/android/phone/SomcSlidingTab;->initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/phone/SomcSlidingTab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/SomcSlidingTab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/SomcSlidingTab;)B
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;

    .prologue
    .line 52
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcSlidingTab;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcSlidingTab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/phone/SomcSlidingTab;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/SomcSlidingTab;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcSlidingTab;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method private animateExpandedToDisabled(Z)V
    .locals 6
    .param p1, "animateExpanded"    # Z

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 657
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 658
    .local v0, "goneToDispAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 660
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 663
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 672
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 673
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 675
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 677
    if-eqz p1, :cond_3

    .line 678
    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 679
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 687
    :cond_0
    :goto_1
    return-void

    .line 666
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 680
    :cond_2
    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 684
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 685
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method private animateGhost(J)V
    .locals 10
    .param p1, "afterMs"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 690
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    if-nez v5, :cond_1

    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eqz v5, :cond_1

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "animMove":I
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 694
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v8, :cond_3

    .line 695
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    .line 696
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    :goto_0
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 703
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int v0, v5, v6

    .line 715
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_5

    move v1, v0

    .line 718
    .local v1, "fromX":I
    :goto_2
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_6

    move v2, v4

    .line 719
    .local v2, "fromY":I
    :goto_3
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-direct {v3, v5, v9, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 720
    .local v3, "ghostMoveAnimationAfter":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 721
    invoke-virtual {v3, v8}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 722
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 723
    invoke-virtual {v3, p1, p2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 724
    new-instance v4, Lcom/android/phone/SomcSlidingTab$1;

    invoke-direct {v4, p0}, Lcom/android/phone/SomcSlidingTab$1;-><init>(Lcom/android/phone/SomcSlidingTab;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 741
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 743
    .end local v0    # "animMove":I
    .end local v1    # "fromX":I
    .end local v2    # "fromY":I
    .end local v3    # "ghostMoveAnimationAfter":Landroid/view/animation/TranslateAnimation;
    :cond_1
    return-void

    .line 699
    .restart local v0    # "animMove":I
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 704
    :cond_3
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 705
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_4

    .line 706
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    :goto_4
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 713
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v0, v5, v6

    goto :goto_1

    .line 709
    :cond_4
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    move v1, v4

    .line 717
    goto :goto_2

    .restart local v1    # "fromX":I
    :cond_6
    move v2, v0

    .line 718
    goto :goto_3
.end method

.method private animateGhostMore(II)V
    .locals 10
    .param p1, "amount"    # I
    .param p2, "sliderState"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 746
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    if-eqz v5, :cond_0

    .line 747
    invoke-virtual {p0, v8}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 797
    :goto_0
    return-void

    .line 751
    :cond_0
    const/4 v0, 0x0

    .line 752
    .local v0, "animMove":I
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 754
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v8, :cond_3

    .line 755
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    .line 756
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 761
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int v0, v5, v6

    .line 771
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 773
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_5

    move v1, v0

    .line 774
    .local v1, "fromX":I
    :goto_3
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_6

    move v2, v4

    .line 775
    .local v2, "fromY":I
    :goto_4
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    int-to-float v4, v1

    int-to-float v5, v2

    invoke-direct {v3, v4, v9, v5, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 776
    .local v3, "ghostMoveAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x352

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 777
    new-instance v4, Lcom/android/phone/SomcSlidingTab$2;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/phone/SomcSlidingTab$2;-><init>(Lcom/android/phone/SomcSlidingTab;II)V

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 795
    iput-boolean v8, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 796
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 758
    .end local v1    # "fromX":I
    .end local v2    # "fromY":I
    .end local v3    # "ghostMoveAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 762
    :cond_3
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 763
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_4

    .line 764
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 768
    :goto_5
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v5, v6}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 769
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v0, v5, v6

    goto :goto_2

    .line 766
    :cond_4
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstGhostId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_5
    move v1, v4

    .line 773
    goto :goto_3

    .restart local v1    # "fromX":I
    :cond_6
    move v2, v0

    .line 774
    goto :goto_4
.end method

.method private clearAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 863
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 859
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 860
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 862
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    goto :goto_0
.end method

.method private disableButtonPress()V
    .locals 2

    .prologue
    .line 547
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/SomcSlidingTab;->mPressTimestamp:J

    .line 549
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 550
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->dispatchGrabbedStateChangeEvent(I)V

    .line 551
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->updateExpandable()V

    .line 552
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->vibrate(J)V

    .line 553
    return-void
.end method

.method private dispatchGrabbedStateChangeEvent(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    const/4 v0, 0x1

    .line 1000
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1014
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1016
    return-void

    .line 1004
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 1005
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1014
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    goto :goto_0

    .line 1008
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 1011
    .local v0, "handle":I
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1014
    .end local v0    # "handle":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private dispatchTriggerEvent(I)V
    .locals 3
    .param p1, "whichHandle"    # I

    .prologue
    const/4 v0, 0x1

    .line 973
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 975
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 987
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 989
    return-void

    .line 977
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 978
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, p1}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 987
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    goto :goto_0

    .line 981
    :cond_1
    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    .line 984
    .local v0, "handle":I
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    invoke-interface {v1, p0, v0}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onTrigger(Landroid/view/View;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 987
    .end local v0    # "handle":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private initiateImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZI)V
    .locals 2
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "visible"    # Z
    .param p4, "id"    # I

    .prologue
    const/4 v1, -0x2

    .line 290
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 292
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    invoke-virtual {p1, p4}, Landroid/view/View;->setId(I)V

    .line 296
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 297
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initiateTextView(Landroid/widget/TextView;Ljava/lang/String;FZI)V
    .locals 2
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textSize"    # F
    .param p4, "visible"    # Z
    .param p5, "id"    # I

    .prologue
    const/4 v1, -0x2

    .line 301
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    if-eqz p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 305
    invoke-virtual {p1, p5}, Landroid/view/View;->setId(I)V

    .line 307
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 308
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private measureDimension(II)I
    .locals 4
    .param p1, "measureSpec"    # I
    .param p2, "wantedSize"    # I

    .prologue
    .line 391
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 392
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 393
    .local v2, "specSize":I
    move v0, p2

    .line 395
    .local v0, "size":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 396
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    const/high16 v3, 0x40000000

    if-ne v1, v3, :cond_0

    .line 398
    move v0, v2

    goto :goto_0
.end method

.method private moveAnimation(Landroid/view/View;I)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "toPos"    # I

    .prologue
    const/16 v9, 0x1e

    const/16 v8, -0x1e

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 800
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_0

    iget-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eq v3, v6, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-nez v3, :cond_4

    iget-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 802
    :cond_1
    iget-object v3, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    :goto_0
    const/4 v1, 0x0

    .line 808
    .local v1, "animToX":I
    const/4 v2, 0x0

    .line 809
    .local v2, "animToY":I
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_5

    .line 810
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, p2

    .line 815
    :goto_1
    if-gt v1, v9, :cond_2

    if-lt v1, v8, :cond_2

    if-gt v2, v9, :cond_2

    if-ge v2, v8, :cond_7

    .line 816
    :cond_2
    iput-boolean v6, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    .line 817
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v3, v6, :cond_6

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 820
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-direct {v0, v3, v7, v4, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 821
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 822
    new-instance v3, Lcom/android/phone/SomcSlidingTab$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcSlidingTab$3;-><init>(Lcom/android/phone/SomcSlidingTab;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 833
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 841
    .end local v0    # "anim":Landroid/view/animation/TranslateAnimation;
    :cond_3
    :goto_3
    return-void

    .line 804
    .end local v1    # "animToX":I
    .end local v2    # "animToY":I
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondDisabledId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 812
    .restart local v1    # "animToX":I
    .restart local v2    # "animToY":I
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v2, v3, p2

    goto :goto_1

    .line 817
    :cond_6
    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    goto :goto_2

    .line 835
    :cond_7
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    if-eqz v3, :cond_8

    .line 836
    invoke-virtual {p0, v6}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_3

    .line 837
    :cond_8
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    if-eqz v3, :cond_3

    .line 838
    iput-boolean v6, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    goto :goto_3
.end method

.method private moveControl(I)V
    .locals 3
    .param p1, "newPos"    # I

    .prologue
    .line 581
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 583
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mAbortGhostAnimation:Z

    .line 585
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 588
    :cond_0
    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 589
    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 591
    iget-boolean v1, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v1, :cond_1

    .line 592
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 593
    .local v0, "moveBy":I
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 598
    :goto_0
    return-void

    .line 595
    .end local v0    # "moveBy":I
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 596
    .restart local v0    # "moveBy":I
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    sub-int v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0
.end method

.method private setBackgroundLayout()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 353
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private setHintLayout()V
    .locals 9

    .prologue
    .line 339
    iget-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v7, :cond_0

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    .line 340
    .local v4, "sliderHeight":I
    :goto_0
    iget-boolean v7, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v7, :cond_1

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    .line 341
    .local v5, "sliderWidth":I
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int v3, v7, v8

    .line 343
    .local v3, "sliderBottom":I
    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    .line 344
    .local v1, "left":I
    div-int/lit8 v7, v4, 0x2

    sub-int v7, v3, v7

    iget-object v8, p0, Lcom/android/phone/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLineHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    .line 345
    .local v6, "top":I
    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    add-int v2, v7, v5

    .line 346
    .local v2, "right":I
    move v0, v3

    .line 348
    .local v0, "bottom":I
    iget-object v7, p0, Lcom/android/phone/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v2, v0}, Landroid/view/View;->layout(IIII)V

    .line 349
    iget-object v7, p0, Lcom/android/phone/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 350
    return-void

    .line 339
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v3    # "sliderBottom":I
    .end local v4    # "sliderHeight":I
    .end local v5    # "sliderWidth":I
    .end local v6    # "top":I
    :cond_0
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    goto :goto_0

    .line 340
    .restart local v4    # "sliderHeight":I
    :cond_1
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    goto :goto_1
.end method

.method private setLayout(Landroid/widget/ImageView;I)V
    .locals 8
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "offset"    # I

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 328
    .local v1, "tw":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 329
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    div-int/lit8 v0, v3, 0x2

    .line 330
    .local v0, "h":I
    iget-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v3, :cond_0

    .line 331
    sub-int v3, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v4, v5

    add-int v5, p2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    sub-int v3, v1, v2

    sub-int v4, p2, v0

    add-int v5, v1, v2

    add-int v6, p2, v0

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method private sliderButtonReleaseAfter(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 572
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v0, v1, :cond_1

    .line 573
    invoke-direct {p0, v1}, Lcom/android/phone/SomcSlidingTab;->dispatchTriggerEvent(I)V

    .line 577
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 578
    return-void

    .line 574
    :cond_1
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v0, v2, :cond_0

    .line 575
    invoke-direct {p0, v2}, Lcom/android/phone/SomcSlidingTab;->dispatchTriggerEvent(I)V

    goto :goto_0
.end method

.method private sliderButtonReleaseBefore()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 557
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->dispatchGrabbedStateChangeEvent(I)V

    .line 559
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/SomcSlidingTab;->mPressTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-interface {v0, p0, v1}, Lcom/android/phone/SomcSlidingTab$OnTriggerListener;->onTap(Landroid/view/View;I)V

    .line 562
    const/4 v0, 0x2

    iget-byte v1, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->animateGhostMore(II)V

    .line 566
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/phone/SomcSlidingTab;->moveAnimation(Landroid/view/View;I)V

    .line 568
    return-void

    .line 564
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    goto :goto_0

    .line 566
    :cond_1
    iget v0, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    goto :goto_1
.end method

.method private sliderTouchEvent(IFFI)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "xPos"    # F
    .param p3, "yPos"    # F
    .param p4, "pointerId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, "invalidate":Z
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    .end local p2    # "xPos":F
    :goto_0
    float-to-int v2, p2

    .line 447
    .local v2, "touchVal":I
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_4

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, p3

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    move v1, v3

    .line 454
    .local v1, "isYPosTouchable":Z
    :goto_1
    if-eqz p1, :cond_0

    const/4 v5, 0x5

    if-ne p1, v5, :cond_b

    .line 455
    :cond_0
    if-nez v1, :cond_6

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 542
    :cond_1
    :goto_2
    return v3

    .end local v1    # "isYPosTouchable":Z
    .end local v2    # "touchVal":I
    .restart local p2    # "xPos":F
    :cond_2
    move p2, p3

    .line 445
    goto :goto_0

    .end local p2    # "xPos":F
    .restart local v2    # "touchVal":I
    :cond_3
    move v1, v4

    .line 448
    goto :goto_1

    .line 451
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_5

    move v1, v3

    .restart local v1    # "isYPosTouchable":Z
    :goto_3
    goto :goto_1

    .end local v1    # "isYPosTouchable":Z
    :cond_5
    move v1, v4

    goto :goto_3

    .line 460
    .restart local v1    # "isYPosTouchable":Z
    :cond_6
    iput v2, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    .line 463
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstTouchablePart:I

    if-ge v2, v5, :cond_9

    .line 464
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v5, :cond_7

    .line 465
    invoke-virtual {p0, v4}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 468
    :cond_7
    iput-byte v3, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 469
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->disableButtonPress()V

    .line 470
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    .line 471
    iput p4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 538
    :cond_8
    :goto_4
    if-eqz v0, :cond_1

    .line 539
    iget-object v4, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 472
    :cond_9
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondTouchablePart:I

    if-le v2, v5, :cond_8

    .line 473
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    if-eqz v5, :cond_a

    .line 474
    invoke-virtual {p0, v4}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 477
    :cond_a
    iput-byte v7, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 478
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->disableButtonPress()V

    .line 479
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    .line 480
    iput p4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    goto :goto_4

    .line 482
    :cond_b
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eqz v5, :cond_e

    if-eq p1, v3, :cond_c

    const/4 v5, 0x6

    if-ne p1, v5, :cond_e

    .line 486
    :cond_c
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    if-ne v4, p4, :cond_8

    .line 487
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 488
    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-eqz v4, :cond_d

    .line 489
    invoke-direct {p0, v2}, Lcom/android/phone/SomcSlidingTab;->sliderButtonReleaseAfter(I)V

    .line 493
    :goto_5
    const/4 v0, 0x1

    goto :goto_4

    .line 491
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->sliderButtonReleaseBefore()V

    goto :goto_5

    .line 496
    :cond_e
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-eqz v5, :cond_8

    if-ne p1, v7, :cond_8

    .line 500
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    if-ne v5, p4, :cond_1

    .line 504
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-nez v5, :cond_14

    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v3, :cond_f

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondActivatePoint:I

    if-gt v2, v5, :cond_10

    :cond_f
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v7, :cond_14

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    if-ge v2, v5, :cond_14

    .line 508
    :cond_10
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 509
    const/4 v0, 0x1

    .line 518
    :cond_11
    :goto_6
    if-nez v0, :cond_12

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_12

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    sub-int/2addr v4, v5

    if-gt v2, v4, :cond_1

    .line 523
    :cond_12
    iput v2, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    .line 526
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    .line 528
    iget-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    if-nez v4, :cond_13

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    add-int/2addr v4, v5

    if-gt v2, v4, :cond_13

    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerStartPos:I

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickeringThreshold:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_8

    .line 532
    :cond_13
    iput-boolean v3, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 533
    iget v4, p0, Lcom/android/phone/SomcSlidingTab;->mFingerOff:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lcom/android/phone/SomcSlidingTab;->moveControl(I)V

    .line 534
    const/4 v0, 0x1

    goto/16 :goto_4

    .line 510
    :cond_14
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-eqz v5, :cond_11

    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v3, :cond_15

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondActivatePoint:I

    add-int/lit8 v5, v5, -0xa

    if-lt v2, v5, :cond_16

    :cond_15
    iget-byte v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    if-ne v5, v7, :cond_11

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    add-int/lit8 v5, v5, 0xa

    if-le v2, v5, :cond_11

    .line 514
    :cond_16
    iput-boolean v4, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 515
    const/4 v0, 0x1

    goto :goto_6
.end method

.method private updateExpandable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 601
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 602
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 603
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 605
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSlider2Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 606
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 615
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 630
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 632
    const-wide/16 v0, 0x258

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->animateGhost(J)V

    .line 633
    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 616
    :cond_2
    iget-byte v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSlider3Id:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 620
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v0, :cond_3

    .line 621
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableSecondExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    :goto_2
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 628
    const v0, 0x7f0b0108

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSlidingTab;->setHintText(I)V

    goto :goto_1

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mDrawableFirstExpandedId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private vibrate(J)V
    .locals 2
    .param p1, "duration"    # J

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mHapticsEnabled:Z

    if-eqz v0, :cond_1

    .line 845
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 846
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 851
    :cond_1
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->setBackgroundLayout()V

    .line 316
    invoke-direct {p0}, Lcom/android/phone/SomcSlidingTab;->setHintLayout()V

    .line 317
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    .line 318
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcSlidingTab;->setLayout(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 364
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    invoke-direct {p0, p1, v5}, Lcom/android/phone/SomcSlidingTab;->measureDimension(II)I

    move-result v4

    .line 365
    .local v4, "width":I
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    invoke-direct {p0, p2, v5}, Lcom/android/phone/SomcSlidingTab;->measureDimension(II)I

    move-result v1

    .line 367
    .local v1, "height":I
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderWidth:I

    .line 368
    .local v2, "sliderLength":I
    :goto_0
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 370
    .local v0, "firstButtonLength":I
    :goto_1
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mPortrait:Z

    if-eqz v5, :cond_2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 374
    .local v3, "specSize":I
    :goto_2
    div-int/lit8 v5, v0, 0x2

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    .line 376
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstBtnPosition:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondBtnPosition:I

    .line 378
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstTouchablePart:I

    .line 380
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstTouchablePart:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondTouchablePart:I

    .line 382
    int-to-double v5, v2

    const-wide v7, 0x3fd3333333333333L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iget v6, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginStart:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    .line 385
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mFirstActivatePoint:I

    sub-int v5, v3, v5

    iput v5, p0, Lcom/android/phone/SomcSlidingTab;->mSecondActivatePoint:I

    .line 387
    invoke-virtual {p0, v4, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 388
    return-void

    .line 367
    .end local v0    # "firstButtonLength":I
    .end local v2    # "sliderLength":I
    .end local v3    # "specSize":I
    :cond_0
    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderHeight:I

    goto :goto_0

    .line 368
    .restart local v2    # "sliderLength":I
    :cond_1
    iget-object v5, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    .line 370
    .restart local v0    # "firstButtonLength":I
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, -0x1

    .line 406
    iget-boolean v5, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    if-eqz v5, :cond_1

    .line 407
    const/4 v4, 0x1

    .line 430
    :cond_0
    :goto_0
    return v4

    .line 410
    :cond_1
    const/4 v4, 0x0

    .line 411
    .local v4, "touchHandled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 412
    .local v0, "action":I
    const v5, 0xff00

    and-int/2addr v5, v0

    shr-int/lit8 v1, v5, 0x8

    .line 414
    .local v1, "currentIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 416
    .local v2, "currentPointerId":I
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    if-ne v5, v2, :cond_3

    .line 417
    :cond_2
    and-int/lit16 v5, v0, 0xff

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v5, v6, v7, v2}, Lcom/android/phone/SomcSlidingTab;->sliderTouchEvent(IFFI)Z

    move-result v4

    goto :goto_0

    .line 419
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    .line 420
    iget v5, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 422
    .local v3, "pointerIndex":I
    if-eq v3, v6, :cond_4

    .line 423
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/android/phone/SomcSlidingTab;->sliderTouchEvent(IFFI)Z

    move-result v4

    goto :goto_0

    .line 426
    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    goto :goto_0
.end method

.method public resetSlider(Z)V
    .locals 4
    .param p1, "animateExpanded"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 636
    iget-boolean v0, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    if-nez v0, :cond_0

    .line 637
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingTab;->animateExpandedToDisabled(Z)V

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcSlidingTab;->clearAnimation(Landroid/view/View;)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mResetAfterGhost:Z

    .line 643
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mIsAnimating:Z

    .line 644
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mIsGhostAnimating:Z

    .line 645
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mFingerFlickerDone:Z

    .line 646
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mPastActionPoint:Z

    .line 647
    iput-boolean v2, p0, Lcom/android/phone/SomcSlidingTab;->mLongpressGhostStarted:Z

    .line 648
    iput v3, p0, Lcom/android/phone/SomcSlidingTab;->mLastMovePos:I

    .line 649
    iput-byte v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderState:B

    .line 650
    iput v3, p0, Lcom/android/phone/SomcSlidingTab;->mActivePointerId:I

    .line 652
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSlidingTab;->setHintText(I)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcSlidingTab;->mSliderBgIncomingId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 654
    return-void
.end method

.method protected setHintText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mHintText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 324
    return-void
.end method

.method public setImageNull()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1022
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mGhostButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mExpandedButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1029
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledFirstButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 1032
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mDisabledSecondButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 1035
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    :cond_4
    return-void
.end method

.method public setOnTriggerListener(Lcom/android/phone/SomcSlidingTab$OnTriggerListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/phone/SomcSlidingTab$OnTriggerListener;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 946
    :try_start_0
    iput-object p1, p0, Lcom/android/phone/SomcSlidingTab;->mOnTriggerListener:Lcom/android/phone/SomcSlidingTab$OnTriggerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    iget-object v0, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 950
    return-void

    .line 948
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/SomcSlidingTab;->mCleanUpLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setSingleCallSliderMarginBottom()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    .line 280
    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/SomcSlidingTab;->onLayout(ZIIII)V

    .line 281
    return-void
.end method

.method public setTwoCallSliderMarginBottom()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcSlidingTab;->mSliderMarginBottom:I

    .line 286
    const/4 v1, 0x1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/SomcSlidingTab;->onLayout(ZIIII)V

    .line 287
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcSlidingTab;->resetSlider(Z)V

    .line 275
    return-void
.end method
