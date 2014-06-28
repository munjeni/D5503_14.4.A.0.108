.class public Landroid/widget/CheckedTextView;
.super Landroid/widget/TextView;
.source "CheckedTextView.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mBasePadding:I

.field private mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

.field private mCheckMarkResource:I

.field private mCheckMarkWidth:I

.field private mChecked:Z

.field private mNeedRequestlayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v3, Lcom/android/internal/R$styleable;->CheckedTextView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 68
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_0
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 73
    .local v1, "checked":Z
    invoke-virtual {p0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private setBasePadding(Z)V
    .locals 1
    .param p1, "isLayoutRtl"    # Z

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    iput v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0
.end method

.method private updatePadding()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resetPaddingToInitialValues()V

    .line 195
    iget-object v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    iget v4, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    add-int v0, v3, v4

    .line 197
    .local v0, "newPadding":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    if-eq v4, v0, :cond_2

    :goto_1
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 199
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingLeft:I

    .line 204
    :goto_2
    iget-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->requestLayout()V

    .line 206
    iput-boolean v2, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 208
    :cond_0
    return-void

    .line 195
    .end local v0    # "newPadding":I
    :cond_1
    iget v0, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    goto :goto_0

    .restart local v0    # "newPadding":I
    :cond_2
    move v1, v2

    .line 198
    goto :goto_1

    .line 201
    :cond_3
    iget-boolean v3, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    iget v4, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    if-eq v4, v0, :cond_4

    :goto_3
    or-int/2addr v1, v3

    iput-boolean v1, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 202
    iput v0, p0, Landroid/widget/CheckedTextView;->mPaddingRight:I

    goto :goto_2

    :cond_4
    move v1, v2

    .line 201
    goto :goto_3
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 267
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 269
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    .line 273
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 275
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->invalidate()V

    .line 277
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected internalSetPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->internalSetPadding(IIII)V

    .line 184
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/CheckedTextView;->setBasePadding(Z)V

    .line 185
    return-void
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 84
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 258
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/TextView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 259
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    sget-object v1, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Landroid/widget/CheckedTextView;->mergeDrawableStates([I[I)[I

    .line 262
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 222
    iget-object v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    .local v1, "checkMarkDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getGravity()I

    move-result v10

    and-int/lit8 v7, v10, 0x70

    .line 225
    .local v7, "verticalGravity":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 227
    .local v2, "height":I
    const/4 v9, 0x0

    .line 229
    .local v9, "y":I
    sparse-switch v7, :sswitch_data_0

    .line 238
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->isLayoutRtl()Z

    move-result v3

    .line 239
    .local v3, "isLayoutRtl":Z
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getWidth()I

    move-result v8

    .line 240
    .local v8, "width":I
    move v6, v9

    .line 241
    .local v6, "top":I
    add-int v0, v6, v2

    .line 244
    .local v0, "bottom":I
    if-eqz v3, :cond_1

    .line 245
    iget v4, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    .line 246
    .local v4, "left":I
    iget v10, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    add-int v5, v4, v10

    .line 251
    .local v5, "right":I
    :goto_1
    iget v10, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v10, v4

    iget v11, p0, Landroid/widget/CheckedTextView;->mScrollX:I

    add-int/2addr v11, v5

    invoke-virtual {v1, v10, v6, v11, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    .end local v0    # "bottom":I
    .end local v2    # "height":I
    .end local v3    # "isLayoutRtl":Z
    .end local v4    # "left":I
    .end local v5    # "right":I
    .end local v6    # "top":I
    .end local v7    # "verticalGravity":I
    .end local v8    # "width":I
    .end local v9    # "y":I
    :cond_0
    return-void

    .line 231
    .restart local v2    # "height":I
    .restart local v7    # "verticalGravity":I
    .restart local v9    # "y":I
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v10

    sub-int v9, v10, v2

    .line 232
    goto :goto_0

    .line 234
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getHeight()I

    move-result v10

    sub-int/2addr v10, v2

    div-int/lit8 v9, v10, 0x2

    goto :goto_0

    .line 248
    .restart local v0    # "bottom":I
    .restart local v3    # "isLayoutRtl":Z
    .restart local v6    # "top":I
    .restart local v8    # "width":I
    :cond_1
    iget v10, p0, Landroid/widget/CheckedTextView;->mBasePadding:I

    sub-int v5, v8, v10

    .line 249
    .restart local v5    # "right":I
    iget v10, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    sub-int v4, v5, v10

    .restart local v4    # "left":I
    goto :goto_1

    .line 229
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 281
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 282
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 283
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 284
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 289
    const-class v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 290
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 291
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 292
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 190
    invoke-direct {p0}, Landroid/widget/CheckedTextView;->updatePadding()V

    .line 191
    return-void
.end method

.method public setCheckMarkDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .prologue
    .line 114
    if-eqz p1, :cond_0

    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-ne p1, v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 118
    :cond_0
    iput p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 140
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 142
    :cond_0
    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/CheckedTextView;->mNeedRequestlayout:Z

    .line 143
    if-eqz p1, :cond_3

    .line 144
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 146
    sget-object v0, Landroid/widget/CheckedTextView;->CHECKED_STATE_SET:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 147
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setMinHeight(I)V

    .line 149
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 154
    :goto_2
    iput-object p1, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->resolvePadding()V

    .line 157
    return-void

    :cond_1
    move v0, v2

    .line 142
    goto :goto_0

    :cond_2
    move v1, v2

    .line 145
    goto :goto_1

    .line 152
    :cond_3
    iput v2, p0, Landroid/widget/CheckedTextView;->mCheckMarkWidth:I

    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 93
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 94
    iput-boolean p1, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    .line 95
    invoke-virtual {p0}, Landroid/widget/CheckedTextView;->refreshDrawableState()V

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 99
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/widget/CheckedTextView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 161
    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CheckedTextView;->mCheckMarkDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
