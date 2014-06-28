.class public Landroid/net/wifi/p2p/WifiP2pGroup;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERSISTENT_NET_ID:I = -0x2

.field public static final TEMPORARY_NET_ID:I = -0x1

.field private static final groupStartedPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInterface:Ljava/lang/String;

.field private mIsGroupOwner:Z

.field private mNetId:I

.field private mNetworkName:Ljava/lang/String;

.field private mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPassphrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string/jumbo v0, "ssid=\"(.+)\" freq=(\\d+) (?:psk=)?([0-9a-fA-F]{64})?(?:passphrase=)?(?:\"(.{0,63})\")? go_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2}) ?(\\[PERSISTENT\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    .line 314
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 288
    if-eqz p1, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 290
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 291
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 292
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .local v0, "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    .end local v0    # "d":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkId()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 297
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 104
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "tokens":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 107
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Malformed supplicant event"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 110
    :cond_0
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "P2P-GROUP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 111
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 112
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string v10, "GO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 114
    sget-object v9, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 115
    .local v4, "match":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 160
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    return-void

    .line 119
    .restart local v4    # "match":Ljava/util/regex/Matcher;
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 123
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 124
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 125
    const/4 v9, 0x6

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 126
    const/4 v9, -0x2

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_0

    .line 128
    :cond_3
    const/4 v9, -0x1

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_0

    .line 130
    .end local v4    # "match":Ljava/util/regex/Matcher;
    :cond_4
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "P2P-INVITATION-RECEIVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 131
    const/4 v6, 0x0

    .line 132
    .local v6, "sa":Ljava/lang/String;
    const/4 v9, -0x2

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 133
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v7, v0, v2

    .line 134
    .local v7, "token":Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "nameValue":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-eq v9, v10, :cond_6

    .line 133
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 137
    :cond_6
    const/4 v9, 0x0

    aget-object v9, v5, v9

    const-string/jumbo v10, "sa"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 138
    const/4 v9, 0x1

    aget-object v6, v5, v9

    .line 141
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 142
    .local v1, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v9, 0x1

    aget-object v9, v5, v9

    iput-object v9, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 143
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    .end local v1    # "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    const/4 v9, 0x0

    aget-object v9, v5, v9

    const-string v10, "go_dev_addr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 148
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v10, 0x1

    aget-object v10, v5, v10

    invoke-direct {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2

    .line 152
    :cond_8
    const/4 v9, 0x0

    aget-object v9, v5, v9

    const-string/jumbo v10, "persistent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 153
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    goto :goto_2

    .line 158
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "nameValue":[Ljava/lang/String;
    .end local v6    # "sa":Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Malformed supplicant event"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 202
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 203
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 198
    return-void
.end method

.method public contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 225
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public getClientList()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    return v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public isClientListEmpty()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    return v0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 215
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeClient(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0
    .param p1, "intf"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setIsGroupOwner(Z)V
    .locals 0
    .param p1, "isGo"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 178
    return-void
.end method

.method public setNetworkId(I)V
    .locals 0
    .param p1, "netId"    # I

    .prologue
    .line 265
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    .line 266
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkName"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/net/wifi/p2p/WifiP2pDevice;

    .prologue
    .line 187
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 188
    return-void
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0
    .param p1, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 269
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v2, "sbuf":Ljava/lang/StringBuffer;
    const-string/jumbo v3, "network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    const-string v3, "\n isGO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 272
    const-string v3, "\n GO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 273
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 274
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "\n Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 276
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_0
    const-string v3, "\n interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const-string v3, "\n networkId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 278
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 301
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 303
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 304
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 306
    .local v0, "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 303
    .end local v0    # "client":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 308
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    return-void
.end method
