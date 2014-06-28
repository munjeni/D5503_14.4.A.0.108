.class public Lcom/android/phone/SomcEditText;
.super Landroid/widget/EditText;
.source "SomcEditText.java"


# static fields
.field private static final KEY_POUND:Ljava/lang/Character;

.field private static final KEY_STAR:Ljava/lang/Character;


# instance fields
.field private mAltLeftPressed:Z

.field private mPreviousUpTime:J

.field private mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

.field private mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SomcEditText;->KEY_POUND:Ljava/lang/Character;

    .line 39
    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/android/phone/SomcEditText;->KEY_STAR:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 30
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 30
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 30
    iput-object v0, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    .line 51
    return-void
.end method

.method private getNumber(Landroid/view/KeyEvent;)C
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 191
    sget-object v0, Lcom/android/phone/SomcEditText;->KEY_POUND:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 193
    sget-object v0, Lcom/android/phone/SomcEditText;->KEY_STAR:Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v0

    goto :goto_0
.end method

.method private handleComma(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-boolean v0, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    if-eqz v0, :cond_1

    .line 174
    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->addChar(C)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->addChar(C)V

    goto :goto_0
.end method

.method private final handleDelete(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/phone/SomcEditText;->backspace()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isKeyInsideKeyboard(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final processDtmf(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    const/4 v1, 0x1

    .line 222
    .local v1, "keyHandled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 223
    invoke-direct {p0, p1}, Lcom/android/phone/SomcEditText;->getNumber(Landroid/view/KeyEvent;)C

    move-result v0

    .line 225
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcEditText;->addChar(C)V

    .line 229
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v2, v0}, Lcom/android/phone/SomcDtmfDialPad;->startTone(C)V

    .line 239
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v1

    .line 231
    .restart local v0    # "c":C
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    invoke-virtual {v2, v0}, Lcom/android/phone/SomcEmergencyDialer;->playTone(C)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/SomcEditText;->isKeyInsideKeyboard(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addChar(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 245
    .local v0, "pos":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    .local v1, "st":Ljava/lang/StringBuffer;
    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 252
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public backspace()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 258
    .local v2, "start":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 260
    .local v0, "end":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V

    .line 262
    .local v1, "st":Ljava/lang/StringBuffer;
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 263
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    add-int/lit8 v3, v2, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 265
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 273
    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x39

    const/4 v1, 0x0

    .line 78
    const/4 v0, 0x1

    .line 80
    .local v0, "keyHandled":Z
    const/16 v2, 0x18

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v1, v0

    .line 118
    goto :goto_0

    .line 88
    :pswitch_0
    const/16 v1, 0x43

    if-ne p1, v1, :cond_3

    .line 89
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->handleDelete(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 90
    :cond_3
    const/16 v1, 0x37

    if-ne p1, v1, :cond_4

    .line 91
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->handleComma(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 92
    :cond_4
    if-ne p1, v3, :cond_5

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    goto :goto_1

    .line 95
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->processDtmf(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 97
    goto :goto_1

    .line 100
    :pswitch_1
    if-ne p1, v3, :cond_6

    .line 101
    iput-boolean v1, p0, Lcom/android/phone/SomcEditText;->mAltLeftPressed:Z

    goto :goto_1

    .line 102
    :cond_6
    const/16 v1, 0x17

    if-ne p1, v1, :cond_7

    .line 103
    const/4 v0, 0x1

    goto :goto_1

    .line 105
    :cond_7
    iget-object v1, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    if-eqz v1, :cond_8

    .line 106
    iget-object v1, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v1}, Lcom/android/phone/SomcDtmfDialPad;->stopTone()V

    .line 108
    :cond_8
    invoke-direct {p0, p2}, Lcom/android/phone/SomcEditText;->isKeyInsideKeyboard(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    const/4 v0, 0x0

    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 125
    .local v0, "action":I
    const/4 v4, 0x1

    .line 127
    .local v4, "ret":Z
    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setShowSoftInputOnFocus(Z)V

    .line 139
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 148
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 150
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v4

    .line 129
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    sub-long v1, v5, v7

    .line 131
    .local v1, "duration":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    .line 135
    .end local v1    # "duration":J
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/phone/SomcEditText;->mPreviousUpTime:J

    goto :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSomcDtmfDialPad(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0
    .param p1, "dialPad"    # Lcom/android/phone/SomcDtmfDialPad;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/phone/SomcEditText;->mSomcDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 60
    return-void
.end method

.method public setSomcEmergencyDialer(Lcom/android/phone/SomcEmergencyDialer;)V
    .locals 0
    .param p1, "emergencyDialer"    # Lcom/android/phone/SomcEmergencyDialer;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/phone/SomcEditText;->mSomcEmergencyDialer:Lcom/android/phone/SomcEmergencyDialer;

    .line 69
    return-void
.end method
