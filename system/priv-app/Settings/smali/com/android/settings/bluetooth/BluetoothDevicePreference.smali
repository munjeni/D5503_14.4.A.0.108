.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private final mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private final mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mOnSettingsClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cachedDevice"    # Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 342
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$2;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    sget v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 73
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 74
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 75
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    const/high16 v3, 0x437f0000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 78
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 80
    invoke-virtual {p2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 81
    const-string v2, "user"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 82
    .local v1, "um":Landroid/os/UserManager;
    const-string v2, "no_config_bluetooth"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    const v2, 0x7f04005b

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 87
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private askDisconnect()V
    .locals 9

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    .line 203
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0123

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 207
    :cond_0
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0116

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, "message":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0115

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, "title":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 227
    .local v0, "disconnectListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v5, v6, v0, v4, v7}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 229
    return-void
.end method

.method private getBtClassDrawable()I
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 294
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 295
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 323
    :goto_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v3

    .line 324
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 325
    .local v2, "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-interface {v2, v0}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->getDrawableResource(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    .line 326
    .local v4, "resId":I
    if-eqz v4, :cond_0

    .line 339
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    .end local v4    # "resId":I
    :goto_1
    return v4

    .line 297
    :sswitch_0
    const v4, 0x7f02004a

    goto :goto_1

    .line 300
    :sswitch_1
    const v4, 0x7f020044

    goto :goto_1

    .line 303
    :sswitch_2
    invoke-static {v0}, Lcom/android/settings/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v4

    goto :goto_1

    .line 306
    :sswitch_3
    const v4, 0x7f020048

    goto :goto_1

    .line 309
    :sswitch_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    const v4, 0x7f02004e

    goto :goto_1

    .line 320
    :cond_1
    const-string v6, "BluetoothDevicePreference"

    const-string v7, "mBtClass is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/bluetooth/LocalBluetoothProfile;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 331
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 332
    const v4, 0x7f020046

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual {v0, v5}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 336
    const v4, 0x7f020047

    goto :goto_1

    :cond_4
    move v4, v5

    .line 339
    goto :goto_1

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
        0x700 -> :sswitch_4
    .end sparse-switch

    .line 309
    :pswitch_data_0
    .packed-switch 0x704
        :pswitch_0
    .end packed-switch
.end method

.method private getConnectionSummary()I
    .locals 8

    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 241
    .local v1, "cachedDevice":Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    const/4 v6, 0x0

    .line 242
    .local v6, "profileConnected":Z
    const/4 v0, 0x0

    .line 243
    .local v0, "a2dpNotConnected":Z
    const/4 v3, 0x0

    .line 245
    .local v3, "headsetNotConnected":Z
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/bluetooth/LocalBluetoothProfile;

    .line 246
    .local v5, "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    invoke-virtual {v1, v5}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settings/bluetooth/LocalBluetoothProfile;)I

    move-result v2

    .line 248
    .local v2, "connectionStatus":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 258
    :pswitch_0
    invoke-interface {v5}, Lcom/android/settings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 259
    instance-of v7, v5, Lcom/android/settings/bluetooth/A2dpProfile;

    if-eqz v7, :cond_1

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 251
    :pswitch_1
    invoke-static {v2}, Lcom/android/settings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v7

    .line 288
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :goto_1
    return v7

    .line 254
    .restart local v2    # "connectionStatus":I
    .restart local v5    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :pswitch_2
    const/4 v6, 0x1

    .line 255
    goto :goto_0

    .line 261
    :cond_1
    instance-of v7, v5, Lcom/android/settings/bluetooth/HeadsetProfile;

    if-eqz v7, :cond_0

    .line 262
    const/4 v3, 0x1

    goto :goto_0

    .line 269
    .end local v2    # "connectionStatus":I
    .end local v5    # "profile":Lcom/android/settings/bluetooth/LocalBluetoothProfile;
    :cond_2
    if-eqz v6, :cond_6

    .line 270
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 271
    const v7, 0x7f0b011d

    goto :goto_1

    .line 272
    :cond_3
    if-eqz v0, :cond_4

    .line 273
    const v7, 0x7f0b011b

    goto :goto_1

    .line 274
    :cond_4
    if-eqz v3, :cond_5

    .line 275
    const v7, 0x7f0b011a

    goto :goto_1

    .line 277
    :cond_5
    const v7, 0x7f0b0119

    goto :goto_1

    .line 281
    :cond_6
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 288
    const/4 v7, 0x0

    goto :goto_1

    .line 283
    :pswitch_3
    const v7, 0x7f0b0122

    goto :goto_1

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_3
    .end packed-switch
.end method

.method private pair()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0b0230

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Landroid/preference/Preference;

    .prologue
    .line 179
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 181
    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    .line 184
    .end local p1    # "another":Landroid/preference/Preference;
    :goto_0
    return v0

    .restart local p1    # "another":Landroid/preference/Preference;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "another":Landroid/preference/Preference;
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 165
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 168
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "bt_checkbox"

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 145
    const v1, 0x7f0800e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 146
    .local v0, "deviceDetails":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 153
    .end local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 154
    return-void

    .line 149
    .restart local v0    # "deviceDetails":Landroid/widget/ImageView;
    :cond_2
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 161
    :cond_0
    return-void
.end method

.method onClicked()V
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 191
    .local v0, "bondState":I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 195
    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    goto :goto_0
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getConnectionSummary()I

    move-result v1

    .line 119
    .local v1, "summaryResId":I
    if-eqz v1, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 125
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getBtClassDrawable()I

    move-result v0

    .line 126
    .local v0, "iconResId":I
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 134
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 135
    return-void

    .line 122
    .end local v0    # "iconResId":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    .restart local v0    # "iconResId":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 108
    :cond_0
    return-void
.end method

.method public setOnSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mOnSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 98
    return-void
.end method
