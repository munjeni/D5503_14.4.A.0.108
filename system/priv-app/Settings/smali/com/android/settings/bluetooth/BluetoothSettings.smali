.class public final Lcom/android/settings/bluetooth/BluetoothSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothSettings.java"


# instance fields
.field private mActivityStarted:Z

.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private final mDeviceProfilesListener:Landroid/view/View$OnClickListener;

.field private mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field mMyDevicePreference:Landroid/preference/Preference;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 102
    const-string v0, "no_config_bluetooth"

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothSettings;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    return v0
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "titleId"    # I
    .param p3, "filter"    # Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .prologue
    .line 240
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 241
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 242
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setFilter(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 245
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 246
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method private updateContent(IZ)V
    .locals 12
    .param p1, "bluetoothState"    # I
    .param p2, "scanState"    # Z

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 250
    .local v7, "preferenceScreen":Landroid/preference/PreferenceScreen;
    const/4 v4, 0x0

    .line 252
    .local v4, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 356
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 358
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 359
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 360
    :goto_1
    return-void

    .line 254
    :pswitch_0
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 255
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 256
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v8}, Ljava/util/WeakHashMap;->clear()V

    .line 259
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    if-nez v8, :cond_0

    .line 260
    new-instance v8, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    .line 262
    :cond_0
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x111003b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 264
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v9, 0x7f020044

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 268
    :goto_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 269
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 270
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v8

    if-nez v8, :cond_1

    .line 273
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-nez v8, :cond_1

    .line 274
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    .line 276
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->setDiscoverableEnabler(Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 283
    :cond_1
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v8, :cond_9

    .line 284
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 288
    :goto_3
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v9, 0x7f0b0239

    sget-object v10, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 291
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    .line 293
    .local v6, "numberOfPairedDevices":I
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v8, :cond_2

    .line 294
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v8, v6}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->setNumberOfPairedDevices(I)V

    .line 298
    :cond_2
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v8, :cond_a

    .line 299
    new-instance v8, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 303
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v8

    if-nez v8, :cond_3

    .line 304
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v9, 0x7f0b023a

    sget-object v10, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/bluetooth/BluetoothSettings;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;)V

    .line 308
    :cond_3
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    .line 309
    .local v5, "numberOfAvailableDevices":I
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 311
    if-nez v5, :cond_4

    .line 312
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    .line 316
    :cond_4
    if-nez v6, :cond_7

    .line 317
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    iget-object v8, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 320
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    const/4 v3, 0x0

    .line 321
    .local v3, "isInBondingState":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 322
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/16 v8, 0xb

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 323
    const/4 v3, 0x1

    .line 327
    .end local v0    # "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    :cond_6
    const/4 v8, 0x1

    if-ne p2, v8, :cond_b

    if-nez v3, :cond_b

    .line 328
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 329
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    .line 336
    .end local v1    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isInBondingState":Z
    :cond_7
    :goto_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto/16 :goto_1

    .line 266
    .end local v5    # "numberOfAvailableDevices":I
    .end local v6    # "numberOfPairedDevices":I
    :cond_8
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mMyDevicePreference:Landroid/preference/Preference;

    const v9, 0x7f02004a

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 286
    :cond_9
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_3

    .line 301
    .restart local v6    # "numberOfPairedDevices":I
    :cond_a
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_4

    .line 331
    .restart local v1    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isInBondingState":Z
    .restart local v5    # "numberOfAvailableDevices":I
    :cond_b
    iget-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v8, :cond_7

    .line 332
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 340
    .end local v1    # "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settings/bluetooth/CachedBluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isInBondingState":Z
    .end local v5    # "numberOfAvailableDevices":I
    .end local v6    # "numberOfPairedDevices":I
    :pswitch_1
    const v4, 0x7f0b0132

    .line 341
    goto/16 :goto_0

    .line 345
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategoryIsPresent:Z

    if-eqz v8, :cond_c

    .line 346
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    check-cast v8, Lcom/android/settings/bluetooth/BluetoothProgressCategory;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 348
    :cond_c
    const v4, 0x7f0b0243

    .line 349
    goto/16 :goto_0

    .line 352
    :pswitch_3
    const v4, 0x7f0b0131

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 117
    const v4, 0x7f050009

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 121
    .local v1, "activity":Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "actionBarSwitch":Landroid/widget/Switch;
    instance-of v4, v1, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_1

    move-object v3, v1

    .line 124
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 125
    .local v3, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 128
    .local v2, "padding":I
    invoke-virtual {v0, v6, v6, v2, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 129
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 131
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 138
    .end local v2    # "padding":I
    .end local v3    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v4, Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 140
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 141
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 416
    const v0, 0x7f0b0861

    return v0
.end method

.method initDevicePreference(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 3
    .param p1, "preference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 408
    .local v0, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 410
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDeviceProfilesListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    .line 111
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    .line 112
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 113
    return-void

    .line 109
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .param p1, "bluetoothState"    # I

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 365
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 366
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-nez v5, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isRestrictedAndNotPinProtected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 180
    .local v0, "bluetoothIsEnabled":Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 181
    .local v1, "isDiscovering":Z
    if-eqz v1, :cond_3

    const v2, 0x7f0b0237

    .line 183
    .local v2, "textId":I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    move v5, v3

    :goto_3
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 186
    const/4 v3, 0x2

    const v5, 0x7f0b0113

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 189
    const/4 v3, 0x3

    const v5, 0x7f0b010a

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 192
    const/4 v3, 0x4

    const v5, 0x7f0b0129

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 194
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .end local v0    # "bluetoothIsEnabled":Z
    .end local v1    # "isDiscovering":Z
    .end local v2    # "textId":I
    :cond_2
    move v0, v4

    .line 179
    goto :goto_1

    .line 181
    .restart local v0    # "bluetoothIsEnabled":Z
    .restart local v1    # "isDiscovering":Z
    :cond_3
    const v2, 0x7f0b0236

    goto :goto_2

    .restart local v2    # "textId":I
    :cond_4
    move v5, v4

    .line 183
    goto :goto_3
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .param p1, "cachedDevice"    # Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 378
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 379
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .param p1, "btPreference"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 235
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 236
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 201
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothSettings;->startScanning()V

    goto :goto_0

    .line 207
    :pswitch_1
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "rename device"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :pswitch_2
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/BluetoothVisibilityTimeoutFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "visibility timeout"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onPause()V

    .line 164
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->pause()V

    .line 171
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 150
    :cond_0
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mDiscoverableEnabler:Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothDiscoverableEnabler;->resume()V

    .line 155
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothSettings;->mActivityStarted:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothSettings;->updateContent(IZ)V

    .line 159
    :cond_2
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 1
    .param p1, "started"    # Z

    .prologue
    .line 370
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 372
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 373
    return-void
.end method
