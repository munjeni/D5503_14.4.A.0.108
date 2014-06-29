.class public Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;
.super Landroid/preference/DialogPreference;
.source "ApplicationLightPreference.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mColorValue:I

.field private mLightColorView:Landroid/widget/ImageView;

.field private mOffValue:I

.field private mOffValueView:Landroid/widget/TextView;

.field private mOnOffChangeable:Z

.field private mOnValue:I

.field private mOnValueView:Landroid/widget/TextView;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "AppLightPreference"

    sput-object v0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput p2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 76
    iput p3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 77
    iput p4, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 79
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I
    .param p3, "onValue"    # I
    .param p4, "offValue"    # I
    .param p5, "onOffChangeable"    # Z

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    iput p2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 92
    iput p3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 93
    iput p4, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 94
    iput-boolean p5, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 95
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v1, 0x3e8

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const v0, 0xffffff

    iput v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 61
    iput v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 62
    iput v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 64
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->init()V

    .line 65
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "color"    # I

    .prologue
    .line 249
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 250
    .local v0, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 251
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 252
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f0400be

    invoke-virtual {p0, v0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->setLayoutResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    .line 101
    return-void
.end method

.method private mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0a9f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 270
    :goto_0
    return-object v3

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070080

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 265
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    aget-object v3, v1, v0

    goto :goto_0

    .line 264
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0a9d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "time"    # Ljava/lang/Integer;

    .prologue
    .line 274
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0a9f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 287
    :goto_0
    return-object v3

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "timeNames":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f070083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "timeValues":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 282
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    aget-object v3, v1, v0

    goto :goto_0

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 287
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0a9d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private updatePreferenceViews()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 135
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 137
    .local v0, "height":I
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    const/high16 v3, -0x1000000

    iget v4, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v3, v4

    invoke-static {v1, v0, v3}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->createRectShape(III)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mapLengthValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 145
    iget v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    if-ne v2, v5, :cond_3

    .line 146
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mapSpeedValue(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_2
    return-void

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 163
    new-instance v0, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, -0x1000000

    iget v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    iget v4, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    iget-boolean v5, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;-><init>(Landroid/content/Context;IIIZ)V

    .line 165
    .local v0, "d":Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->setAlphaSliderVisible(Z)V

    .line 167
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0a24

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$1;-><init>(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 178
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0197

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$2;

    invoke-direct {v3, p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference$2;-><init>(Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 185
    return-object v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    return v0
.end method

.method public getOffValue()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    return v0
.end method

.method public getOnValue()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 121
    const v1, 0x7f080267

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mLightColorView:Landroid/widget/ImageView;

    .line 122
    const v1, 0x7f080269

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValueView:Landroid/widget/TextView;

    .line 123
    const v1, 0x7f080268

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValueView:Landroid/widget/TextView;

    .line 127
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 128
    .local v0, "tView":Landroid/widget/TextView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 131
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    .line 105
    .local v0, "d":Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->onStart()V

    .line 108
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    .line 112
    .local v0, "d":Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;->onStop()V

    .line 115
    :cond_0
    return-void
.end method

.method public setAllValues(III)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 221
    iput p2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 222
    iput p3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 224
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 225
    return-void
.end method

.method public setAllValues(IIIZ)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "onValue"    # I
    .param p3, "offValue"    # I
    .param p4, "onOffChangeable"    # Z

    .prologue
    .line 228
    iput p1, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mColorValue:I

    .line 229
    iput p2, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnValue:I

    .line 230
    iput p3, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOffValue:I

    .line 231
    iput-boolean p4, p0, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->mOnOffChangeable:Z

    .line 232
    invoke-direct {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->updatePreferenceViews()V

    .line 233
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialogNew(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/munjeni/notificationlight/ApplicationLightPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;

    .line 159
    .local v0, "d":Lcom/android/settings/munjeni/notificationlight/LightSettingsDialog;
    return-void
.end method
