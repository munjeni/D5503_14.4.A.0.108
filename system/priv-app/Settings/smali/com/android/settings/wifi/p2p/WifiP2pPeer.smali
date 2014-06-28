.class public Lcom/android/settings/wifi/p2p/WifiP2pPeer;
.super Landroid/preference/Preference;
.source "WifiP2pPeer.java"


# static fields
.field private static final STATE_SECURED:[I


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mRssi:I

.field private mSignal:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, 0x7f010000

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dev"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 46
    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 47
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    .line 48
    return-void
.end method

.method private refresh()V
    .locals 4

    .prologue
    .line 97
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    if-nez v2, :cond_0

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 102
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "statusArray":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    aget-object v2, v1, v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 71
    instance-of v2, p1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 74
    check-cast v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;

    .line 77
    .local v0, "other":Lcom/android/settings/wifi/p2p/WifiP2pPeer;
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eq v2, v3, :cond_2

    .line 78
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iget-object v3, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ge v2, v3, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 91
    const/4 v0, -0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    const v0, 0x7f080111

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    .line 58
    iget v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->refresh()V

    .line 66
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 67
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    new-array v2, v5, [I

    const v3, 0x7f01002c

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->mSignal:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/settings/wifi/p2p/WifiP2pPeer;->STATE_SECURED:[I

    invoke-virtual {v0, v1, v5}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1
.end method
