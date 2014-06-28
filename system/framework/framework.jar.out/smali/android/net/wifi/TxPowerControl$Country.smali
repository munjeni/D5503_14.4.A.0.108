.class final enum Landroid/net/wifi/TxPowerControl$Country;
.super Ljava/lang/Enum;
.source "TxPowerControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/TxPowerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Country"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/wifi/TxPowerControl$Country;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/wifi/TxPowerControl$Country;

.field public static final enum JP:Landroid/net/wifi/TxPowerControl$Country;

.field public static final enum OTHERS:Landroid/net/wifi/TxPowerControl$Country;

.field public static final enum UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

.field public static final enum US:Landroid/net/wifi/TxPowerControl$Country;


# instance fields
.field private final mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-instance v0, Landroid/net/wifi/TxPowerControl$Country;

    const-string v1, "JP"

    const-string v2, "JP"

    invoke-direct {v0, v1, v3, v2}, Landroid/net/wifi/TxPowerControl$Country;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/wifi/TxPowerControl$Country;->JP:Landroid/net/wifi/TxPowerControl$Country;

    .line 52
    new-instance v0, Landroid/net/wifi/TxPowerControl$Country;

    const-string v1, "US"

    const-string v2, "US"

    invoke-direct {v0, v1, v4, v2}, Landroid/net/wifi/TxPowerControl$Country;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/wifi/TxPowerControl$Country;->US:Landroid/net/wifi/TxPowerControl$Country;

    .line 55
    new-instance v0, Landroid/net/wifi/TxPowerControl$Country;

    const-string v1, "UNKNOWN"

    const-string v2, "00"

    invoke-direct {v0, v1, v5, v2}, Landroid/net/wifi/TxPowerControl$Country;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    .line 58
    new-instance v0, Landroid/net/wifi/TxPowerControl$Country;

    const-string v1, "OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Landroid/net/wifi/TxPowerControl$Country;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/net/wifi/TxPowerControl$Country;->OTHERS:Landroid/net/wifi/TxPowerControl$Country;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/wifi/TxPowerControl$Country;

    sget-object v1, Landroid/net/wifi/TxPowerControl$Country;->JP:Landroid/net/wifi/TxPowerControl$Country;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/wifi/TxPowerControl$Country;->US:Landroid/net/wifi/TxPowerControl$Country;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/wifi/TxPowerControl$Country;->OTHERS:Landroid/net/wifi/TxPowerControl$Country;

    aput-object v1, v0, v6

    sput-object v0, Landroid/net/wifi/TxPowerControl$Country;->$VALUES:[Landroid/net/wifi/TxPowerControl$Country;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Landroid/net/wifi/TxPowerControl$Country;->mCode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static getCountry(Ljava/lang/String;)Landroid/net/wifi/TxPowerControl$Country;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->JP:Landroid/net/wifi/TxPowerControl$Country;

    invoke-virtual {v0}, Landroid/net/wifi/TxPowerControl$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->JP:Landroid/net/wifi/TxPowerControl$Country;

    .line 80
    :goto_0
    return-object v0

    .line 74
    :cond_0
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->US:Landroid/net/wifi/TxPowerControl$Country;

    invoke-virtual {v0}, Landroid/net/wifi/TxPowerControl$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->US:Landroid/net/wifi/TxPowerControl$Country;

    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    invoke-virtual {v0}, Landroid/net/wifi/TxPowerControl$Country;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->UNKNOWN:Landroid/net/wifi/TxPowerControl$Country;

    goto :goto_0

    .line 80
    :cond_2
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->OTHERS:Landroid/net/wifi/TxPowerControl$Country;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/wifi/TxPowerControl$Country;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Landroid/net/wifi/TxPowerControl$Country;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/TxPowerControl$Country;

    return-object v0
.end method

.method public static values()[Landroid/net/wifi/TxPowerControl$Country;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/net/wifi/TxPowerControl$Country;->$VALUES:[Landroid/net/wifi/TxPowerControl$Country;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/TxPowerControl$Country;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/net/wifi/TxPowerControl$Country;->mCode:Ljava/lang/String;

    return-object v0
.end method
