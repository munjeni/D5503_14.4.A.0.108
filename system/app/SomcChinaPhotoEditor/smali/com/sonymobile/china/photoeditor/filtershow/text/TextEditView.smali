.class Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;
.super Landroid/widget/LinearLayout;
.source "TextEditView.java"


# static fields
.field public static final EDIT_STATE:I = 0x2

.field public static final IDLE_STATE:I = 0x0

.field public static final MOVE_STATE:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private mLandX:I

.field private mLandY:I

.field private mPortX:I

.field private mPortY:I

.field private mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method


# virtual methods
.method public ConvertLandToPort(F)V
    .locals 5
    .param p1, "scaleValue"    # F

    .prologue
    .line 57
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandX:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortX:I

    .line 58
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandY:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortY:I

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 61
    .local v2, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortX:I

    iput v3, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    .line 62
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortY:I

    iput v3, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    .line 63
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    .line 67
    .local v1, "fontSize":F
    mul-float/2addr v1, p1

    .line 68
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 69
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 71
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    .end local v1    # "fontSize":F
    :cond_0
    return-void
.end method

.method public ConvertPortToLand(F)V
    .locals 5
    .param p1, "scaleValue"    # F

    .prologue
    .line 74
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortX:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandX:I

    .line 75
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortY:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandY:I

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;

    .line 78
    .local v2, "lp":Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandX:I

    iput v3, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->x:I

    .line 79
    iget v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandY:I

    iput v3, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/ArbitraryLayout$LayoutParams;->y:I

    .line 80
    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    .line 84
    .local v1, "fontSize":F
    mul-float/2addr v1, p1

    .line 85
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 86
    .local v0, "d":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextSize(F)V

    .line 88
    .end local v0    # "d":Landroid/util/DisplayMetrics;
    .end local v1    # "fontSize":F
    :cond_0
    return-void
.end method

.method public applyProperty(Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;)V
    .locals 5
    .param p1, "property"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .prologue
    .line 120
    if-eqz p1, :cond_1

    .line 121
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v1, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    iget v2, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    iget v3, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    iget v4, p1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;-><init>(IFFI)V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 128
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mLandSize:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 136
    :goto_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mColor:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 137
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v2, v2, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mFont:I

    invoke-static {v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextToolbar;->newTypeface(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 138
    return-void

    .line 125
    :cond_1
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    invoke-direct {v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    iget v1, v1, Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;->mPortSize:F

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    goto :goto_1
.end method

.method public focusOnText(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 96
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 97
    const v2, 0x7f0c008d

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    .line 98
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    .local v1, "im":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    .line 103
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 104
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 105
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->bringChildToFront(Landroid/view/View;)V

    .line 111
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 108
    .local v0, "ibinder":Landroid/os/IBinder;
    invoke-virtual {v1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 109
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setTextFocus(Z)V

    goto :goto_0
.end method

.method public getProperty()Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mProperty:Lcom/sonymobile/china/photoeditor/filtershow/text/TextProperty;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 115
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    .line 117
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeTextChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;)V
    .locals 1
    .param p1, "watcher"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setLandXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandX:I

    .line 48
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mLandY:I

    .line 49
    return-void
.end method

.method public setPortXY(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortX:I

    .line 53
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mPortY:I

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 178
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    return-void
.end method

.method public setTextChangedListener(Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;)V
    .locals 1
    .param p1, "watcher"    # Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditViewContainer$TextChangeObserver;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    :cond_0
    return-void
.end method

.method public setTextFocus(Z)V
    .locals 1
    .param p1, "focusable"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 147
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 148
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public setViewFocus(Z)V
    .locals 2
    .param p1, "focusable"    # Z

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setFocusable(Z)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setFocusableInTouchMode(Z)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setClickable(Z)V

    .line 156
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->setEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 158
    if-eqz p1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/text/TextEditView;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method
