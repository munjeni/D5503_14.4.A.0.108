.class public Lcom/android/phone/GsmUmtsCallOptions;
.super Landroid/preference/PreferenceActivity;
.source "GsmUmtsCallOptions.java"


# instance fields
.field private final DBG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/GsmUmtsCallOptions;->DBG:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 38
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 42
    :cond_0
    return-void
.end method
