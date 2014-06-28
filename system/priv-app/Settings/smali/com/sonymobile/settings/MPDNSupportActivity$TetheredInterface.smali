.class final enum Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
.super Ljava/lang/Enum;
.source "MPDNSupportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/MPDNSupportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TetheredInterface"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

.field public static final enum BLUETOOTH:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

.field public static final enum USB:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

.field public static final enum WIFI:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->WIFI:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    .line 43
    new-instance v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    const-string v1, "USB"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->USB:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    .line 44
    new-instance v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    const-string v1, "BLUETOOTH"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->BLUETOOTH:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    sget-object v1, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->WIFI:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->USB:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->BLUETOOTH:Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->$VALUES:[Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;->$VALUES:[Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/settings/MPDNSupportActivity$TetheredInterface;

    return-object v0
.end method
