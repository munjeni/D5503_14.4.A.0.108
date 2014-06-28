.class public Lcom/android/settings/accessibility/EdgeTypePreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "EdgeTypePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 48
    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f04003a

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 50
    const v1, 0x7f040073

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    .line 51
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 60
    const v4, 0x7f08007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 62
    .local v0, "preview":Lcom/android/internal/widget/SubtitleView;
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    .line 63
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    .line 64
    const/high16 v4, 0x42200000

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v3

    .line 68
    .local v3, "value":I
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    .line 69
    const/high16 v4, -0x1000000

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 72
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 73
    const v4, 0x7f080036

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "summary":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
