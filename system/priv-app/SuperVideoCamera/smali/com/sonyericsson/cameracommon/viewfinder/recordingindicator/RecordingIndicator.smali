.class public Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
.super Landroid/widget/RelativeLayout;
.source "RecordingIndicator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConstraintIndicator:Landroid/widget/LinearLayout;

.field private mConstraintRecordingTimeText:Landroid/widget/TextView;

.field private mDisplayOrientation:I

.field private mDuration:I

.field private mIsConstraint:Z

.field private mMaxDurationText:Landroid/widget/TextView;

.field private mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mPivotForRotation:I

.field private mPivotForRotationConstraint:I

.field private mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

.field private mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

.field private mStringFormatRecordingTime:Ljava/lang/String;

.field private mStringFormatRemainConstraintTime:Ljava/lang/String;

.field private mUnConstraintIndicator:Landroid/widget/LinearLayout;

.field private mUnConstraintRecordingTimeText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 34
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 35
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 48
    iput v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 49
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 50
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->recording_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotation:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$dimen;->recording_indicator_constraint_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    .line 65
    return-void
.end method

.method private updateLayout()V
    .locals 3

    .prologue
    .line 212
    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    .line 214
    .local v0, "rotation":F
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 216
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 217
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 223
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mPivotForRotationConstraint:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 225
    :cond_1
    return-void
.end method

.method private updateProgressbar(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    .line 158
    iget v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    if-le p1, v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    goto :goto_0
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 72
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->unconstraint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    .line 73
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->constraint:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->recording_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    sget v1, Lcom/sonyericsson/cameracommon/R$id;->remain_time:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    .line 79
    sget v0, Lcom/sonyericsson/cameracommon/R$id;->progressbar:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    .line 81
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 82
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    .line 83
    return-void
.end method

.method public prepareBeforeRecording(IZ)V
    .locals 10
    .param p1, "duration"    # I
    .param p2, "isVideoHdrUsed"    # Z

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v0, v5}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 100
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v0, :cond_2

    .line 102
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDuration:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mProgressBar:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;

    invoke-virtual {v0, v5, v5}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingProgressBar;->setProgress(II)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    if-lez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v0, v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    if-lez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    :goto_1
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    .line 154
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_status_constraint_recoding_remain:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxDurationText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRemainConstraintTime:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_status_constraint_recoding_time:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sonyericsson/cameracommon/R$string;->cam_status_recoding_time:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public release()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public setConstraint(Z)V
    .locals 0
    .param p1, "isConstraint"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    .line 87
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mDisplayOrientation:I

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateLayout()V

    .line 209
    return-void
.end method

.method public updateRecordingTime(I)V
    .locals 8
    .param p1, "msec"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->update(I)V

    .line 176
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mIsConstraint:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mMaxTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v1, v1, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    if-lez v1, :cond_0

    .line 179
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "recording":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->updateProgressbar(I)V

    .line 195
    :goto_1
    return-void

    .line 182
    .end local v0    # "recording":Ljava/lang/String;
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "recording":Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0    # "recording":Ljava/lang/String;
    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mStringFormatRecordingTime:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->hour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->min:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mRecordingTime:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;

    iget v4, v4, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/DurationParameterSet;->sec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .restart local v0    # "recording":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->mUnConstraintRecordingTimeText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
