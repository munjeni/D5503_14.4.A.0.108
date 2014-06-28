.class public Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CaptionPropertiesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;


# instance fields
.field private mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mCustom:Landroid/preference/PreferenceCategory;

.field private mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

.field private mFontSize:Landroid/preference/ListPreference;

.field private mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

.field private mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

.field private mLocale:Lcom/android/settings/accessibility/LocalePreference;

.field private mPreset:Lcom/android/settings/accessibility/PresetPreference;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mShowingCustom:Z

.field private mTypeface:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V
    .locals 7
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "styleId"    # I

    .prologue
    const v6, 0x7f0b05f4

    .line 153
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 157
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 158
    .local v2, "fontScale":F
    const/high16 v5, 0x42400000

    mul-float/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 160
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 161
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_0

    .line 162
    invoke-static {v0, v3, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 164
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 204
    const-string v9, "captioning_locale"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/LocalePreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    .line 205
    const-string v9, "captioning_font_size"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    .line 207
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 208
    .local v8, "res":Landroid/content/res/Resources;
    const v9, 0x7f070043

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 209
    .local v7, "presetValues":[I
    const v9, 0x7f070042

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "presetTitles":[Ljava/lang/String;
    const-string v9, "captioning_preset"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/PresetPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    .line 211
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v7}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 212
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v9, v6}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 214
    const-string v9, "custom"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    .line 215
    iput-boolean v12, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 217
    const v9, 0x7f07003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 218
    .local v3, "colorValues":[I
    const v9, 0x7f07003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "colorTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 220
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 221
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 223
    const v9, 0x7f070041

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 224
    .local v5, "opacityValues":[I
    const v9, 0x7f070040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, "opacityTitles":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_foreground_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 227
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 228
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 230
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 231
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 232
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v3}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 235
    array-length v9, v3

    add-int/lit8 v9, v9, 0x1

    new-array v1, v9, [I

    .line 236
    .local v1, "bgColorValues":[I
    array-length v9, v2

    add-int/lit8 v9, v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    .line 237
    .local v0, "bgColorTitles":[Ljava/lang/String;
    array-length v9, v3

    invoke-static {v3, v11, v1, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    array-length v9, v2

    invoke-static {v2, v11, v0, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    aput v11, v1, v11

    .line 240
    const v9, 0x7f0b05f6

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v11

    .line 241
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_color"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    .line 242
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 243
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v1}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 245
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_background_opacity"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/ColorPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    .line 246
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v4}, Lcom/android/settings/accessibility/ListDialogPreference;->setTitles([Ljava/lang/CharSequence;)V

    .line 247
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v9, v5}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    .line 249
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_edge_type"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accessibility/EdgeTypePreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    .line 250
    iget-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    const-string v10, "captioning_typeface"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/ListPreference;

    iput-object v9, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    .line 251
    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v6, 0x0

    .line 171
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 172
    .local v1, "activity":Landroid/app/Activity;
    new-instance v5, Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-direct {v5, v1}, Lcom/android/settings/accessibility/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 174
    .local v5, "toggleSwitch":Lcom/android/settings/accessibility/ToggleSwitch;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 176
    .local v3, "padding":I
    invoke-virtual {v5, v6, v6, v3, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 178
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 179
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 181
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v4, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 184
    .local v4, "params":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v5, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 186
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    .line 187
    .local v2, "enabled":Z
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {v5, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 190
    new-instance v6, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment$1;-><init>(Lcom/android/settings/accessibility/CaptionPropertiesFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 201
    return-void

    .line 188
    :cond_0
    const/4 v6, 0x4

    goto :goto_0
.end method

.method private installUpdateListeners()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/ListDialogPreference;->setOnValueChangedListener(Lcom/android/settings/accessibility/ListDialogPreference$OnValueChangedListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 265
    return-void
.end method

.method private mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I
    .locals 5
    .param p1, "color"    # Lcom/android/settings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings/accessibility/ColorPreference;

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v0

    .line 305
    .local v0, "colorValue":I
    invoke-virtual {p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v1

    .line 307
    .local v1, "opacityValue":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 308
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    .line 312
    .local v2, "value":I
    :goto_0
    return v2

    .line 310
    .end local v2    # "value":I
    :cond_0
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, -0x1000000

    and-int/2addr v4, v1

    or-int v2, v3, v4

    .restart local v2    # "value":I
    goto :goto_0
.end method

.method private parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V
    .locals 4
    .param p1, "color"    # Lcom/android/settings/accessibility/ColorPreference;
    .param p2, "opacity"    # Lcom/android/settings/accessibility/ColorPreference;
    .param p3, "value"    # I

    .prologue
    const/high16 v3, -0x1000000

    .line 292
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "colorValue":I
    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v1, v2, 0x18

    .line 299
    .local v1, "opacityValue":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 300
    const v2, 0xffffff

    or-int/2addr v2, v1

    invoke-virtual {p2, v2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 301
    return-void

    .line 296
    .end local v0    # "colorValue":I
    .end local v1    # "opacityValue":I
    :cond_0
    or-int v0, p3, v3

    .line 297
    .restart local v0    # "colorValue":I
    and-int v1, p3, v3

    .restart local v1    # "opacityValue":I
    goto :goto_0
.end method

.method private refreshPreviewText()V
    .locals 7

    .prologue
    const v6, 0x7f0b05f3

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 130
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 136
    .local v3, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v3, :cond_0

    .line 137
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v4

    .line 138
    .local v4, "styleId":I
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v5, v3, v4}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 140
    iget-object v5, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v5}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v1

    .line 141
    .local v1, "locale":Ljava/util/Locale;
    if-eqz v1, :cond_2

    .line 142
    invoke-static {v0, v1, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 144
    .local v2, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v3, v2}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 146
    .end local v2    # "localizedText":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0
.end method

.method private refreshShowingCustom()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/ListDialogPreference;->getValue()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 317
    .local v0, "customPreset":Z
    :goto_0
    if-nez v0, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-eqz v3, :cond_2

    .line 318
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    iput-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    .line 324
    :cond_0
    :goto_1
    return-void

    .end local v0    # "customPreset":Z
    :cond_1
    move v0, v2

    .line 316
    goto :goto_0

    .line 320
    .restart local v0    # "customPreset":Z
    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    if-nez v2, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCustom:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 322
    iput-boolean v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mShowingCustom:Z

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 9

    .prologue
    .line 268
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v3

    .line 269
    .local v3, "preset":I
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    invoke-virtual {v6, v3}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 271
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 272
    .local v2, "fontSize":F
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 275
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 276
    .local v0, "attrs":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    iget v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    invoke-virtual {v6, v7}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 277
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    iget v7, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    invoke-virtual {v6, v7}, Lcom/android/settings/accessibility/ListDialogPreference;->setValue(I)V

    .line 279
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 280
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v7, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    iget v8, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->parseColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;I)V

    .line 282
    iget-object v5, v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->mRawTypeface:Ljava/lang/String;

    .line 283
    .local v5, "rawTypeface":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-nez v5, :cond_0

    const-string v5, ""

    .end local v5    # "rawTypeface":Ljava/lang/String;
    :cond_0
    invoke-virtual {v6, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 285
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawLocale()Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "rawLocale":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-nez v4, :cond_1

    const-string v4, ""

    .end local v4    # "rawLocale":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 287
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "captioning"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 93
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->initializeAllPreferences()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->updateAllPreferences()V

    .line 96
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installUpdateListeners()V

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 103
    const v2, 0x7f040014

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 107
    .local v1, "rootView":Landroid/view/View;
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 111
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, "content":Landroid/view/View;
    const v2, 0x7f080028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 115
    return-object v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 352
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mTypeface:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_1

    .line 353
    const-string v1, "accessibility_captioning_typeface"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 364
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 365
    const/4 v1, 0x1

    return v1

    .line 355
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mFontSize:Landroid/preference/ListPreference;

    if-ne v1, p1, :cond_2

    .line 356
    const-string v1, "accessibility_captioning_font_scale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto :goto_0

    .line 359
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mLocale:Lcom/android/settings/accessibility/LocalePreference;

    if-ne v1, p1, :cond_0

    .line 360
    const-string v1, "accessibility_captioning_locale"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onValueChanged(Lcom/android/settings/accessibility/ListDialogPreference;I)V
    .locals 4
    .param p1, "preference"    # Lcom/android/settings/accessibility/ListDialogPreference;
    .param p2, "value"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_2

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mForegroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 331
    .local v1, "merged":I
    const-string v2, "accessibility_captioning_foreground_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 346
    .end local v1    # "merged":I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 347
    return-void

    .line 333
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_4

    .line 334
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundColor:Lcom/android/settings/accessibility/ColorPreference;

    iget-object v3, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mBackgroundOpacity:Lcom/android/settings/accessibility/ColorPreference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mergeColorOpacity(Lcom/android/settings/accessibility/ColorPreference;Lcom/android/settings/accessibility/ColorPreference;)I

    move-result v1

    .line 335
    .restart local v1    # "merged":I
    const-string v2, "accessibility_captioning_background_color"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 337
    .end local v1    # "merged":I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeColor:Lcom/android/settings/accessibility/ColorPreference;

    if-ne v2, p1, :cond_5

    .line 338
    const-string v2, "accessibility_captioning_edge_color"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 339
    :cond_5
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreset:Lcom/android/settings/accessibility/PresetPreference;

    if-ne v2, p1, :cond_6

    .line 340
    const-string v2, "accessibility_captioning_preset"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshShowingCustom()V

    goto :goto_0

    .line 342
    :cond_6
    iget-object v2, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mEdgeType:Lcom/android/settings/accessibility/EdgeTypePreference;

    if-ne v2, p1, :cond_1

    .line 343
    const-string v2, "accessibility_captioning_edge_type"

    invoke-static {v0, v2, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 122
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 124
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->installActionBarToggleSwitch()V

    .line 125
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->refreshPreviewText()V

    .line 126
    return-void
.end method
