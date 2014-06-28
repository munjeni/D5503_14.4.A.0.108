.class public Lcom/android/settings/location/LocationMode;
.super Lcom/android/settings/location/LocationSettingsBase;
.source "LocationMode.java"

# interfaces
.implements Lcom/android/settings/location/RadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationMode$XTServiceConnection;
    }
.end annotation


# instance fields
.field private izatConnResult:Z

.field private mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

.field private mCallback:Lcom/android/location/XT/IXTSrvCb;

.field private mHandler:Landroid/os/Handler;

.field private mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

.field private mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

.field private mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

.field private mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

.field private mXTService:Lcom/android/location/XT/IXTSrv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/location/LocationSettingsBase;-><init>()V

    .line 77
    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    .line 78
    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    .line 83
    new-instance v0, Lcom/android/settings/location/LocationMode$1;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$1;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/android/settings/location/LocationMode$2;

    invoke-direct {v0, p0}, Lcom/android/settings/location/LocationMode$2;-><init>(Lcom/android/settings/location/LocationMode;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/location/LocationMode;)Lcom/android/settings/location/WrappingIZatSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/location/LocationMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrv;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/location/LocationMode;Lcom/android/location/XT/IXTSrv;)Lcom/android/location/XT/IXTSrv;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;
    .param p1, "x1"    # Lcom/android/location/XT/IXTSrv;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/location/LocationMode;)Lcom/android/location/XT/IXTSrvCb;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/location/LocationMode;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mCallback:Lcom/android/location/XT/IXTSrvCb;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 186
    .local v4, "root":Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    .line 187
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 189
    :cond_0
    const v5, 0x7f050019

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 190
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 192
    const-string v5, "high_accuracy"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    .line 193
    const-string v5, "battery_saving"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    .line 194
    const-string v5, "sensors_only"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/RadioButtonPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    .line 195
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 196
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 197
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v5, p0}, Lcom/android/settings/location/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/location/RadioButtonPreference$OnClickListener;)V

    .line 199
    const-string v5, "enhanced_location"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 201
    .local v1, "enhancedLocation":Landroid/preference/PreferenceCategory;
    const-string v5, "location_izat"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iput-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    .line 202
    iget-boolean v5, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    if-nez v5, :cond_3

    .line 203
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    if-eqz v5, :cond_2

    .line 218
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    new-instance v6, Lcom/android/settings/location/LocationMode$3;

    invoke-direct {v6, p0}, Lcom/android/settings/location/LocationMode$3;-><init>(Lcom/android/settings/location/LocationMode;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettingsBase;->refreshLocationMode()V

    .line 245
    return-object v4

    .line 206
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    if-eqz v5, :cond_1

    .line 207
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "izatMenuTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/android/location/XT/IXTSrv;->getText(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, "izatSubtitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v5, p0, Lcom/android/settings/location/LocationMode;->mIZat:Lcom/android/settings/location/WrappingIZatSwitchPreference;

    iget-object v6, p0, Lcom/android/settings/location/LocationMode;->mXTService:Lcom/android/location/XT/IXTSrv;

    invoke-interface {v6}, Lcom/android/location/XT/IXTSrv;->getStatus()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 213
    .end local v2    # "izatMenuTitle":Ljava/lang/String;
    .end local v3    # "izatSubtitle":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "LocationMode"

    const-string v6, "Service connection error!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initUserPrefService()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/location/LocationMode$XTServiceConnection;-><init>(Lcom/android/settings/location/LocationMode;Lcom/android/settings/location/LocationMode$1;)V

    iput-object v0, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/location/XT/IXTSrv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/location/LocationMode;->izatConnResult:Z

    .line 118
    return-void
.end method

.method private updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 3
    .param p1, "activated"    # Lcom/android/settings/location/RadioButtonPreference;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 260
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 261
    :cond_3
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 264
    iget-object v0, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 308
    const v0, 0x7f0b086d

    return v0
.end method

.method public onModeChanged(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "restricted"    # Z

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 300
    :goto_0
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 301
    .local v0, "enabled":Z
    :goto_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 304
    return-void

    .line 285
    .end local v0    # "enabled":Z
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 291
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/location/LocationMode;->updateRadioButtons(Lcom/android/settings/location/RadioButtonPreference;)V

    goto :goto_0

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onPause()V

    .line 182
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/location/RadioButtonPreference;)V
    .locals 2
    .param p1, "emiter"    # Lcom/android/settings/location/RadioButtonPreference;

    .prologue
    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mHighAccuracy:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_1

    .line 272
    const/4 v0, 0x3

    .line 278
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/location/LocationSettingsBase;->setLocationMode(I)V

    .line 279
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mBatterySaving:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_2

    .line 274
    const/4 v0, 0x2

    goto :goto_0

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mSensorsOnly:Lcom/android/settings/location/RadioButtonPreference;

    if-ne p1, v1, :cond_0

    .line 276
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings/location/LocationSettingsBase;->onResume()V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 177
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/location/LocationMode;->initUserPrefService()V

    .line 165
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 170
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/location/LocationMode;->mServiceConn:Lcom/android/settings/location/LocationMode$XTServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 171
    return-void
.end method
