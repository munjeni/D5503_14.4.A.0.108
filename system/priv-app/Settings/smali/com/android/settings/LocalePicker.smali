.class public Lcom/android/settings/LocalePicker;
.super Landroid/app/DialogFragment;
.source "LocalePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

.field private mLocaleAtStart:Ljava/util/Locale;

.field private mTargetLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocalePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/LocalePicker;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/settings/LocalePicker;->selectLocale()V

    return-void
.end method

.method private selectLocale()V
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 180
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 187
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    invoke-virtual {v1, p2}, Lcom/sonymobile/settings/LocaleAdapter;->getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v0

    .line 174
    .local v0, "info":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/LocalePicker;->onLocaleSelected(Ljava/util/Locale;)V

    .line 175
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    const-string v0, "locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/Locale;

    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 96
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setShowsDialog(Z)V

    .line 98
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mLocaleAtStart:Ljava/util/Locale;

    .line 85
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mLocaleAtStart:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v1, p0}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    new-instance v2, Lcom/sonymobile/settings/LocaleAdapter$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/settings/LocaleAdapter$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->create()Lcom/sonymobile/settings/LocaleAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    .line 140
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/LocaleAdapter;->setDividerColor(I)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Lcom/sonymobile/settings/LocaleAdapter;->getPosition(Ljava/util/Locale;)I

    move-result v1

    .line 143
    .local v1, "selectedPos":I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mLocaleAdapter:Lcom/sonymobile/settings/LocaleAdapter;

    invoke-virtual {v2, v3, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/LocalePicker$3;

    invoke-direct {v4, p0}, Lcom/android/settings/LocalePicker$3;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x1040000

    new-instance v4, Lcom/android/settings/LocalePicker$2;

    invoke-direct {v4, p0}, Lcom/android/settings/LocalePicker$2;-><init>(Lcom/android/settings/LocalePicker;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0551

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    .local v0, "dialog":Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    .line 103
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/Settings;

    .line 105
    .local v0, "activity":Lcom/android/settings/Settings;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 106
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 107
    .local v2, "localeConf":Landroid/content/res/Configuration;
    iput-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 108
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-direct {v3, v5, v6, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 111
    .local v3, "localeRes":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 113
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const v5, 0x7f0b0551

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/LocalePicker;->mLocaleAtStart:Ljava/util/Locale;

    iput-object v5, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 123
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v5, v6, v7, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 126
    .end local v0    # "activity":Lcom/android/settings/Settings;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "localeConf":Landroid/content/res/Configuration;
    .end local v3    # "localeRes":Landroid/content/res/Resources;
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 166
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->onLocaleSelected(Ljava/util/Locale;)V

    .line 170
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    return-void
.end method
