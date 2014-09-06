.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
.super Ljava/lang/Enum;
.source "LayoutPattern.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum SETTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

.field public static final enum ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "CLEAR"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "ZOOMING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "FOCUS_SEARCHING"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "FOCUS_DONE"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "CAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "BURST_SHOOTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "RECORDING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "MODE_SELECTOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "SETTING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const-string v1, "SELFTIMER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .line 17
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    return-object v0
.end method
