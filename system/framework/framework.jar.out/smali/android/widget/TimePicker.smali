.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$SavedState;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/widget/TimePicker$1;

    invoke-direct {v0}, Landroid/widget/TimePicker$1;-><init>()V

    sput-object v0, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const v0, 0x1010405

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    .line 142
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 145
    sget-object v8, Lcom/android/internal/R$styleable;->TimePicker:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 147
    .local v2, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const v9, 0x10900c1

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 149
    .local v5, "layoutResourceId":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    const-string v8, "layout_inflater"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 153
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const/4 v8, 0x1

    invoke-virtual {v4, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    const v8, 0x1020359

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 157
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/TimePicker$2;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$2;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 170
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v9, 0x10202f3

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 171
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 172
    iget-object v8, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 175
    const v8, 0x102035d

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    .line 176
    iget-object v8, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 177
    invoke-direct {p0}, Landroid/widget/TimePicker;->setDividerText()V

    .line 181
    :cond_0
    const v8, 0x102035a

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 182
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 183
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v9, 0x3b

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 184
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v9, 0x64

    invoke-virtual {v8, v9, v10}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 185
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 186
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/TimePicker$3;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$3;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 209
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v9, 0x10202f3

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 210
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 211
    iget-object v8, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 214
    new-instance v8, Ljava/text/DateFormatSymbols;

    invoke-direct {v8}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v8}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    .line 217
    const v8, 0x102035b

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 218
    .local v1, "amPmView":Landroid/view/View;
    instance-of v8, v1, Landroid/widget/Button;

    if-eqz v8, :cond_4

    .line 219
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 220
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v8, v1

    .line 221
    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    .line 222
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    new-instance v9, Landroid/widget/TimePicker$4;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$4;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    :goto_0
    invoke-direct {p0}, Landroid/widget/TimePicker;->isAmPmAtStart()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 252
    const v8, 0x1020358

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 253
    .local v0, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 257
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 258
    .local v6, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v7

    .line 259
    .local v7, "startMargin":I
    invoke-virtual {v6}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    .line 260
    .local v3, "endMargin":I
    if-eq v7, v3, :cond_1

    .line 261
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 262
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 266
    .end local v0    # "amPmParent":Landroid/view/ViewGroup;
    .end local v3    # "endMargin":I
    .end local v6    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v7    # "startMargin":I
    :cond_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->getHourFormatData()V

    .line 269
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 270
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteControl()V

    .line 271
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 273
    sget-object v8, Landroid/widget/TimePicker;->NO_OP_CHANGE_LISTENER:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 276
    iget-object v8, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 277
    iget-object v8, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 279
    invoke-virtual {p0}, Landroid/widget/TimePicker;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 280
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 284
    :cond_2
    invoke-direct {p0}, Landroid/widget/TimePicker;->setContentDescriptions()V

    .line 287
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 288
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 290
    :cond_3
    return-void

    .line 231
    :cond_4
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    move-object v8, v1

    .line 232
    check-cast v8, Landroid/widget/NumberPicker;

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 233
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 234
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 235
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    iget-object v9, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 236
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v9, Landroid/widget/TimePicker$5;

    invoke-direct {v9, p0}, Landroid/widget/TimePicker$5;-><init>(Landroid/widget/TimePicker;)V

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 245
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v9, 0x10202f3

    invoke-virtual {v8, v9}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 246
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 247
    iget-object v8, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePicker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePicker;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePicker;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 294
    .local v2, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_2

    const-string v6, "Hm"

    :goto_0
    invoke-static {v2, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 297
    .local v5, "lengthPattern":I
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 298
    const/4 v3, 0x0

    .line 301
    .local v3, "hourFormat":C
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 302
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 303
    .local v1, "c":C
    const/16 v6, 0x48

    if-eq v1, v6, :cond_0

    const/16 v6, 0x68

    if-eq v1, v6, :cond_0

    const/16 v6, 0x4b

    if-eq v1, v6, :cond_0

    const/16 v6, 0x6b

    if-ne v1, v6, :cond_3

    .line 304
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePicker;->mHourFormat:C

    .line 305
    add-int/lit8 v6, v4, 0x1

    if-ge v6, v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v1, v6, :cond_1

    .line 306
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    .line 311
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 294
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v3    # "hourFormat":C
    .end local v4    # "i":I
    .end local v5    # "lengthPattern":I
    :cond_2
    const-string v6, "hm"

    goto :goto_0

    .line 301
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v3    # "hourFormat":C
    .restart local v4    # "i":I
    .restart local v5    # "lengthPattern":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 314
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 315
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 654
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 655
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 658
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x10202f4

    const v2, 0x10202f2

    .line 662
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040501

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 664
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040502

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 667
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040503

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 669
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040504

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 672
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040505

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 675
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040506

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePicker;->trySetContentDescription(Landroid/view/View;II)V

    .line 678
    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 458
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 463
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 465
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 466
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 474
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    .line 476
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 477
    if-eqz p2, :cond_0

    .line 478
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0

    .line 469
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePicker;->mIsAm:Z

    .line 470
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 471
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 357
    iget-object v0, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iput-object p1, p0, Landroid/widget/TimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 361
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDividerText()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    .line 539
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 540
    .local v1, "defaultLocale":Ljava/util/Locale;
    iget-boolean v6, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v6, :cond_1

    const-string v5, "Hm"

    .line 541
    .local v5, "skeleton":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v6, 0x48

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 545
    .local v2, "hourIndex":I
    if-ne v2, v8, :cond_0

    .line 546
    const/16 v6, 0x68

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 548
    :cond_0
    if-ne v2, v8, :cond_2

    .line 550
    const-string v4, ":"

    .line 559
    .local v4, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    return-void

    .line 540
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourIndex":I
    .end local v4    # "separatorText":Ljava/lang/String;
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v5, "hm"

    goto :goto_0

    .line 552
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v2    # "hourIndex":I
    .restart local v5    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x6d

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 553
    .local v3, "minuteIndex":I
    if-ne v3, v8, :cond_3

    .line 554
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 556
    .end local v4    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 681
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 682
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 683
    iget-object v1, p0, Landroid/widget/TimePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 636
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 650
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 651
    return-void

    .line 638
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 641
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 642
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 643
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 644
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 641
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 646
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePicker;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v2, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 603
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    iget-char v0, p0, Landroid/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 606
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 607
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 622
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePicker;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 623
    return-void

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 610
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 614
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePicker;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 615
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 616
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 618
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 619
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 622
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 693
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 694
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 695
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 696
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 697
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 699
    iget-object v1, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 700
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 701
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    iget-object v1, p0, Landroid/widget/TimePicker;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 703
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 626
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 569
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 570
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 439
    iget-object v1, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 440
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 445
    :goto_0
    return-object v1

    .line 442
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 443
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 445
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 347
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 348
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/TimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 349
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 593
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 594
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 598
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 599
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 600
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 575
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 577
    const/4 v0, 0x1

    .line 578
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 579
    or-int/lit16 v0, v0, 0x80

    .line 583
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 584
    iget-object v2, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 585
    iget-object v2, p0, Landroid/widget/TimePicker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePicker;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    return-void

    .line 581
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 420
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePicker$SavedState;

    .line 421
    .local v0, "ss":Landroid/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 422
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 423
    invoke-virtual {v0}, Landroid/widget/TimePicker$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 424
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 414
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 415
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePicker$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 453
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 454
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 528
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 527
    invoke-direct {p0}, Landroid/widget/TimePicker;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 338
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 327
    iget-object v0, p0, Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Landroid/widget/TimePicker;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 331
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 337
    :goto_1
    iput-boolean p1, p0, Landroid/widget/TimePicker;->mIsEnabled:Z

    goto :goto_0

    .line 335
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePicker;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 488
    iget-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 503
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 494
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePicker;->mIs24HourView:Z

    .line 495
    invoke-direct {p0}, Landroid/widget/TimePicker;->getHourFormatData()V

    .line 496
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateHourControl()V

    .line 500
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 501
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateMinuteControl()V

    .line 502
    invoke-direct {p0}, Landroid/widget/TimePicker;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 432
    iput-object p1, p0, Landroid/widget/TimePicker;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 433
    return-void
.end method
