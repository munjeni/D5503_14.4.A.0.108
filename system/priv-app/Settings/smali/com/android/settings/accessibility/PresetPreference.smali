.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "PresetPreference.java"


# instance fields
.field private final mCaptioningManager:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const v0, 0x7f04003a

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 42
    const v0, 0x7f040073

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setListItemLayoutResource(I)V

    .line 44
    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 46
    return-void
.end method


# virtual methods
.method protected onBindListItem(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 56
    const v4, 0x7f08007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    .line 57
    .local v0, "previewText":Lcom/android/internal/widget/SubtitleView;
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValueAt(I)I

    move-result v3

    .line 58
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v4, v0, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 61
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

    .line 64
    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 65
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 66
    const v4, 0x7f080036

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "summary":Landroid/widget/TextView;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .end local v1    # "summary":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

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
