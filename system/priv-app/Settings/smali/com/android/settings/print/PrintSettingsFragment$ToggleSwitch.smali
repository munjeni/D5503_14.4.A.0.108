.class public Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;
.super Landroid/widget/Switch;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 308
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 325
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/print/PrintSettingsFragment$ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 312
    return-void
.end method
