.class public Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
.super Landroid/preference/PreferenceFragment;
.source "PowerSaverSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;
    }
.end annotation


# instance fields
.field private mActivation:Landroid/view/View;

.field private mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

.field private mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

.field private mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

.field private mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

.field private mEnabledSwitch:Landroid/widget/Switch;

.field private mHint:Landroid/view/View;

.field private mHintDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPowerSaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

.field private mTimeoutDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$1;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 135
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$2;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 142
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$3;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->onActivationClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    return-void
.end method

.method private createAndShowHintDialog()V
    .locals 4

    .prologue
    .line 384
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_1

    .line 385
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 386
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b0010

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    const v1, 0x7f0b004a

    .line 390
    .local v1, "messageId":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    const v1, 0x7f0b004b

    .line 394
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 395
    const v2, 0x7f0200e3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 396
    const v2, 0x7f0b0049

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    .line 399
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "messageId":I
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 400
    return-void
.end method

.method private find([II)I
    .locals 2
    .param p1, "values"    # [I
    .param p2, "value"    # I

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 345
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 349
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 344
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getCurrentTimeout()I
    .locals 3

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private onActivationClicked()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->show(Landroid/os/Bundle;)V

    .line 298
    return-void
.end method

.method private removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "timeoutFeature"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
    .param p2, "timeoutValues"    # [I
    .param p3, "timeoutEntries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 360
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v2, "revisedTimeoutEntries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget v3, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->state:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v1, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->saved:I

    .line 364
    .local v1, "maxTimeout":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 365
    aget v3, p2, v0

    if-ge v3, v1, :cond_1

    .line 366
    aget-object v3, p3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    .end local v0    # "i":I
    .end local v1    # "maxTimeout":I
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->getCurrentTimeout()I

    move-result v1

    goto :goto_0

    .line 372
    .restart local v0    # "i":I
    .restart local v1    # "maxTimeout":I
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    return-object v3
.end method

.method private setUiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f080170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    const v1, 0x7f080171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 292
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v0, p1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;->setPowerSaverEnabled(Z)V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 294
    return-void
.end method

.method private showTimeoutDialog(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 6
    .param p1, "f"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 301
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07007a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 303
    .local v3, "values":[I
    iget-boolean v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    if-eqz v4, :cond_2

    iget v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-direct {p0, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->find([II)I

    move-result v1

    .line 304
    .local v1, "defIdx":I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0200f0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 306
    const v4, 0x7f0b002e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->removeNonSavingTimeoutEntries(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 311
    .local v2, "validEntries":[Ljava/lang/CharSequence;
    array-length v4, v2

    if-lt v1, v4, :cond_0

    .line 312
    const/4 v1, 0x0

    .line 315
    :cond_0
    new-instance v4, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;

    invoke-direct {v4, p0, p1, v3}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$4;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;[I)V

    invoke-virtual {v0, v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    const/high16 v4, 0x1040000

    new-instance v5, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;

    invoke-direct {v5, p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$5;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 336
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 337
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 339
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    .line 340
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 341
    return-void

    .line 303
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "defIdx":I
    .end local v2    # "validEntries":[Ljava/lang/CharSequence;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    .line 233
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 235
    .local v1, "padding":I
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 238
    new-instance v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-direct {v2, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    .line 239
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mAdapter:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 240
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    new-instance v2, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdProvider:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;

    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;-><init>(Landroid/content/Context;Lcom/sonymobile/settings/stamina/BatteryThresholdHelper$DataProvider;Landroid/view/View;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    .line 245
    new-instance v2, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    .line 246
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;-><init>(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    .line 160
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->registerPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 162
    if-eqz p1, :cond_0

    .line 163
    const-string v0, "lbmHintDialogIsShown"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->createAndShowHintDialog()V

    .line 167
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    const v2, 0x7f040094

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 192
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080172

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    .line 195
    const v2, 0x7f040092

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    .line 196
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHint:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 199
    const v2, 0x7f040091

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    .line 201
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mActivation:Landroid/view/View;

    invoke-virtual {v2, v3, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 204
    const v2, 0x7f04008b

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 206
    .local v0, "title":Landroid/widget/TextView;
    const v2, 0x7f0b0028

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 207
    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 211
    instance-of v2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v5, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 215
    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowersaveEnableObserver:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings$PowersaveEnableObserver;

    invoke-static {v0, v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->unRegisterPowersaveEnableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 173
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 174
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onDetach()V

    .line 179
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mTimeoutDialog:Landroid/app/AlertDialog;

    .line 183
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBrightnessDialog:Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;

    invoke-virtual {v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->close()V

    .line 273
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 274
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 279
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->isPowerSaverEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 280
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 281
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mPowerSaverEnableListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 282
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->getPowerSaverBatteryThreshold(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->updateView(I)V

    .line 284
    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->setUiEnabled(Z)V

    .line 285
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 220
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 221
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mBatteryThresholdHelper:Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;

    invoke-virtual {v1, p1}, Lcom/sonymobile/settings/stamina/BatteryThresholdHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 222
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 223
    .local v0, "isHintDialogShown":Z
    :goto_0
    const-string v1, "lbmHintDialogIsShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 224
    return-void

    .line 222
    .end local v0    # "isHintDialogShown":Z
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mHintDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public onStart()V
    .locals 6

    .prologue
    const/16 v2, 0x10

    const/4 v5, -0x2

    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 251
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 254
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverSettings;->mEnabledSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const v4, 0x800015

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 259
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 263
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 264
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 265
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 266
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 267
    return-void
.end method
