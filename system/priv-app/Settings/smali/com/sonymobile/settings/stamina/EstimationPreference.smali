.class public Lcom/sonymobile/settings/stamina/EstimationPreference;
.super Landroid/preference/Preference;
.source "EstimationPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->init()V

    .line 35
    return-void
.end method

.method private getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 11
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "timeLeft"    # I

    .prologue
    const v10, 0x7f0e0001

    const/high16 v9, 0x7f0e0000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    div-int/lit8 v1, p2, 0x18

    .line 76
    .local v1, "days":I
    rem-int/lit8 v3, p2, 0x18

    .line 79
    .local v3, "hours":I
    if-nez v1, :cond_0

    .line 80
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "standbyTime":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 83
    .end local v4    # "standbyTime":Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 84
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "standbyTime":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v4    # "standbyTime":Ljava/lang/String;
    :cond_1
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v10, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "hourStr":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v9, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "dayStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "standbyTime":Ljava/lang/String;
    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 39
    return-void
.end method

.method private setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accentColor"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getBatteryTimeEstimate(Landroid/content/Context;Z)I

    move-result v2

    .line 58
    .local v2, "timeLeft":I
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "remainingBatteryTime":Ljava/lang/String;
    const v3, 0x7f080166

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "batteryTimeView":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method private setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isXssmEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getStandbyTimeEstimate(Landroid/content/Context;Z)I

    move-result v2

    .line 68
    .local v2, "timeLeft":I
    invoke-direct {p0, p1, v2}, Lcom/sonymobile/settings/stamina/EstimationPreference;->getTimeString(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "standbyTime":Ljava/lang/String;
    const v3, 0x7f080167

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "standbyTimeView":Landroid/widget/TextView;
    const v3, 0x7f0b001e

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0200e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 47
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, -0xd5541c

    invoke-static {v3, v4}, Lcom/sonymobile/settings/util/ColorReplacer;->getThemeColor(Landroid/content/Context;I)I

    move-result v0

    .line 48
    .local v0, "accentColor":I
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 49
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-direct {p0, v2, p1, v0}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setRemainingBatteryTime(Landroid/content/res/Resources;Landroid/view/View;I)V

    .line 52
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/settings/stamina/EstimationPreference;->setRemainingTimeInStandby(Landroid/content/res/Resources;Landroid/view/View;)V

    .line 53
    return-void
.end method

.method public updateEstimates()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 99
    return-void
.end method
