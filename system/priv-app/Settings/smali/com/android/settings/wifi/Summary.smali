.class Lcom/android/settings/wifi/Summary;
.super Ljava/lang/Object;
.source "Summary.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "limitedConnectivity"    # Z

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;Z)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p3, "limitedConnectivity"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez p1, :cond_1

    const v3, 0x7f070010

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "formats":[Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 35
    .local v2, "index":I
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 36
    :cond_0
    const/4 v3, 0x0

    .line 45
    :goto_1
    return-object v3

    .line 31
    .end local v1    # "formats":[Ljava/lang/String;
    .end local v2    # "index":I
    :cond_1
    const v3, 0x7f070011

    goto :goto_0

    .line 39
    .restart local v1    # "formats":[Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_2
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_4

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez p1, :cond_3

    const v3, 0x7f0b0057

    :goto_2
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "format":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 40
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const v3, 0x7f0b0058

    goto :goto_2

    .line 45
    :cond_4
    aget-object v3, v1, v2

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
