.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSystemsCategory:Landroid/preference/PreferenceCategory;

.field private mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 138
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 142
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 176
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 185
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/AccessibilitySettings;
    .param p1, "x1"    # I

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method private handleDisplayMagnificationPreferenceScreenClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 327
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 328
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0b05d6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "summary"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 332
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 336
    return-void

    :cond_0
    move v1, v2

    .line 332
    goto :goto_0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLock(Landroid/content/Context;Z)V

    .line 306
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 299
    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v2, v0}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 316
    .local v0, "extras":Landroid/os/Bundle;
    const-string v3, "title"

    const v4, 0x7f0b05d8

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v3, "summary"

    const v4, 0x7f0b05db

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-super {p0, v1, v2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 324
    return-void

    :cond_0
    move v1, v2

    .line 320
    goto :goto_0
.end method

.method private handleToggleLargeTextPreferenceClick()V
    .locals 2

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3fa66666

    :goto_0
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 282
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_1
    return-void

    .line 281
    :cond_0
    const/high16 v0, 0x3f800000

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "incall_power_button_behavior"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    return-void

    .line 289
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    return-void

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const/16 v9, 0x1a

    .line 339
    const-string v6, "services_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 340
    const-string v6, "system_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    .line 343
    const-string v6, "toggle_large_text_preference"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    .line 347
    const-string v6, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 349
    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 351
    :cond_0
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_1
    const-string v6, "toggle_lock_screen_rotation_preference"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    .line 357
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 358
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    :cond_2
    const-string v6, "toggle_speak_password_preference"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 366
    const-string v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 368
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 369
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 370
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 372
    .local v5, "timeoutValues":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 373
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070036

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "timeoutTitles":[Ljava/lang/String;
    array-length v4, v5

    .line 376
    .local v4, "timeoutValueCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 377
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v1

    aget-object v8, v3, v1

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "i":I
    .end local v3    # "timeoutTitles":[Ljava/lang/String;
    .end local v4    # "timeoutValueCount":I
    .end local v5    # "timeoutValues":[Ljava/lang/String;
    :cond_3
    const-string v6, "captioning_preference_screen"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 386
    const-string v6, "screen_magnification_preference_screen"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 390
    const-string v6, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e001c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 394
    .local v2, "longPressOnPowerBehavior":I
    const/4 v0, 0x1

    .line 395
    .local v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS":I
    invoke-static {v9}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    .line 399
    :cond_4
    iget-object v6, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSystemsCategory:Landroid/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    :cond_5
    return-void
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 639
    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 640
    .local v4, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 642
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 645
    .local v3, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v3, :cond_1

    .line 657
    :cond_0
    return-void

    .line 649
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 650
    .local v2, "installedServiceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 651
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 652
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .local v1, "installedService":Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 574
    iget-object v7, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v7, v8, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 578
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 580
    .local v2, "offerInstallService":Z
    :goto_1
    if-eqz v2, :cond_0

    .line 581
    const-string v7, "ro.screenreader.market"

    const-string v8, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, "screenreaderMarketLink":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 585
    .local v1, "marketUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 587
    .local v0, "marketIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 592
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "key_install_accessibility_service_offered_once"

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 596
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v1    # "marketUri":Landroid/net/Uri;
    .end local v2    # "offerInstallService":Z
    .end local v4    # "screenreaderMarketLink":Ljava/lang/String;
    :cond_2
    move v2, v6

    .line 578
    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicesPreferences()V

    .line 405
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 406
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 566
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 567
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 570
    :cond_0
    return-void

    .line 567
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateServicesPreferences()V
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 420
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 423
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 426
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 427
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 429
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 431
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 433
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 434
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 440
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 442
    :goto_2
    if-eqz v4, :cond_4

    .line 443
    const v12, 0x7f0b05e4

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 448
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/Preference;->setOrder(I)V

    .line 449
    const-class v12, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 452
    invoke-virtual {v9}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 453
    const-string v13, "preference_key"

    invoke-virtual {v9}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v13, "checked"

    invoke-virtual {v12, v13, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 455
    const-string v4, "title"

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    .line 458
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 459
    const v4, 0x7f0b060a

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 461
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v12, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 464
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 465
    const-string v10, "settings_title"

    const v13, 0x7f0b05e3

    invoke-virtual {p0, v13}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v10, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v10, "settings_component_name"

    new-instance v13, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :cond_1
    const-string v0, "component_name"

    invoke-virtual {v12, v0, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 426
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 423
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 440
    goto/16 :goto_2

    .line 445
    :cond_4
    const v12, 0x7f0b05e5

    invoke-virtual {p0, v12}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 477
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 478
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 479
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 488
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    const v1, 0x7f04009b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 491
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 493
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 495
    :cond_7
    return-void
.end method

.method private updateSystemPreferences()V
    .locals 15

    .prologue
    const v14, 0x7f0b05e5

    const v13, 0x7f0b05e4

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 500
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_0
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->fontScale:F

    const v12, 0x3fa66666

    cmpl-float v8, v8, v12

    if-nez v8, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 507
    const/16 v8, 0x1a

    invoke-static {v8}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "incall_power_button_behavior"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 512
    .local v2, "incallPowerBehavior":I
    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    move v5, v9

    .line 514
    .local v5, "powerButtonEndsCall":Z
    :goto_2
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 518
    .end local v2    # "incallPowerBehavior":I
    .end local v5    # "powerButtonEndsCall":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 521
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "speak_password"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    move v6, v9

    .line 523
    .local v6, "speakPasswordEnabled":Z
    :goto_3
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "long_press_timeout"

    iget v12, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 528
    .local v3, "longPressTimeout":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 529
    .local v7, "value":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v8, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 530
    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v11, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 533
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "accessibility_captioning_enabled"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_4

    move v0, v9

    .line 535
    .local v0, "captioningEnabled":Z
    :goto_4
    if-eqz v0, :cond_5

    .line 536
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 542
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "accessibility_display_magnification_enabled"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_6

    move v4, v9

    .line 544
    .local v4, "magnificationEnabled":Z
    :goto_6
    if-eqz v4, :cond_7

    .line 545
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v13}, Landroid/preference/Preference;->setSummary(I)V

    .line 553
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "enable_accessibility_global_gesture_enabled"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_8

    move v1, v9

    .line 555
    .local v1, "globalGestureEnabled":Z
    :goto_8
    if-eqz v1, :cond_9

    .line 556
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b05d9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 562
    :goto_9
    return-void

    .end local v0    # "captioningEnabled":Z
    .end local v1    # "globalGestureEnabled":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "magnificationEnabled":Z
    .end local v6    # "speakPasswordEnabled":Z
    .end local v7    # "value":Ljava/lang/String;
    :cond_1
    move v8, v10

    .line 504
    goto/16 :goto_1

    .restart local v2    # "incallPowerBehavior":I
    :cond_2
    move v5, v10

    .line 512
    goto :goto_2

    .end local v2    # "incallPowerBehavior":I
    :cond_3
    move v6, v10

    .line 521
    goto :goto_3

    .restart local v3    # "longPressTimeout":I
    .restart local v6    # "speakPasswordEnabled":Z
    .restart local v7    # "value":Ljava/lang/String;
    :cond_4
    move v0, v10

    .line 533
    goto :goto_4

    .line 538
    .restart local v0    # "captioningEnabled":Z
    :cond_5
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    :cond_6
    move v4, v10

    .line 542
    goto :goto_6

    .line 548
    .restart local v4    # "magnificationEnabled":Z
    :cond_7
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v14}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_7

    :cond_8
    move v1, v10

    .line 553
    goto :goto_8

    .line 559
    .restart local v1    # "globalGestureEnabled":Z
    :cond_9
    iget-object v8, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    const v9, 0x7f0b05da

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_9

    .line 501
    .end local v0    # "captioningEnabled":Z
    .end local v1    # "globalGestureEnabled":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "magnificationEnabled":Z
    .end local v6    # "speakPasswordEnabled":Z
    .end local v7    # "value":Ljava/lang/String;
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 211
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 213
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "dialogId"    # I

    .prologue
    const/4 v0, 0x0

    .line 602
    packed-switch p1, :pswitch_data_0

    .line 634
    :goto_0
    return-object v0

    .line 604
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0608

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0609

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 602
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 234
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 239
    :cond_0
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onPause()V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 245
    check-cast v0, Ljava/lang/String;

    .line 246
    .local v0, "stringValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long_press_timeout"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    const/4 v1, 0x1

    .line 252
    .end local v0    # "stringValue":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v0, 0x1

    .line 257
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargeTextPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargeTextPreferenceClick()V

    .line 276
    :goto_0
    return v0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    goto :goto_0

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_3

    .line 267
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    goto :goto_0

    .line 269
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mGlobalGesturePreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_4

    .line 270
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglEnableAccessibilityGesturePreferenceClick()V

    goto :goto_0

    .line 272
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/preference/PreferenceScreen;

    if-ne v1, p2, :cond_5

    .line 273
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleDisplayMagnificationPreferenceScreenClick()V

    goto :goto_0

    .line 276
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0}, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onResume()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->loadInstalledServices()V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 221
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 224
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 229
    :cond_0
    return-void
.end method
