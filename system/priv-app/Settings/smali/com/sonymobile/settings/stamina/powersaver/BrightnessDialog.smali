.class Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

.field private mPower:Landroid/os/IPowerManager;

.field private mSavedBrightness:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mPower:Landroid/os/IPowerManager;

    .line 56
    return-void
.end method

.method private cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 184
    iput-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 185
    return-void
.end method

.method private getBrightness()I
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setBrightess(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private updateBrightness()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->onCancel(Landroid/content/DialogInterface;)V

    .line 191
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 157
    iget v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    .line 158
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->cleanup()V

    .line 160
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 138
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 139
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->updateBrightness()V

    .line 140
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 164
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 165
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 167
    iget v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->setBrightess(I)V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    .line 170
    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    .line 171
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->cleanup()V

    .line 172
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-object v1, v1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget-boolean v2, v2, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    iget v3, v3, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->updatePowerSaverFeature(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 174
    :cond_2
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 175
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "sb"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->updateBrightness()V

    .line 132
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 126
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "sb"    # Landroid/widget/SeekBar;

    .prologue
    .line 121
    return-void
.end method

.method public show(Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;)V
    .locals 5
    .param p1, "f"    # Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mFeature:Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;

    .line 60
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 61
    .local v1, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f04008d

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 62
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f08016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    .line 63
    const v3, 0x7f08016b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->getBrightness()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSavedBrightness:I

    .line 66
    iget-object v4, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0xeb

    invoke-virtual {v3, v4}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 69
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    iget v4, p1, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    add-int/lit8 v4, v4, -0x14

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 70
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 73
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 75
    const v3, 0x7f0200e9

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 76
    const v3, 0x7f0b002c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 77
    const v3, 0x104000a

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 78
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 83
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    .line 84
    iget-object v3, p0, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/settings/stamina/powersaver/BrightnessDialog;->updateBrightness()V

    .line 89
    return-void

    .line 66
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
