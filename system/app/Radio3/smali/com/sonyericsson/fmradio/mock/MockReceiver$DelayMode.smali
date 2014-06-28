.class public final enum Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;
.super Ljava/lang/Enum;
.source "MockReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/mock/MockReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DelayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

.field public static final enum FAST:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

.field public static final enum REALISTIC:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;


# instance fields
.field private mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x32

    .line 62
    new-instance v6, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    const-string v7, "REALISTIC"

    new-instance v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    const/16 v1, 0x1388

    const/16 v2, 0x2ee

    const/16 v3, 0x7d0

    const/16 v4, 0x3e8

    const/16 v5, 0x1f4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;-><init>(IIIII)V

    invoke-direct {v6, v7, v9, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/mock/MockReceiver$Delays;)V

    sput-object v6, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->REALISTIC:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    .line 67
    new-instance v6, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    const-string v7, "FAST"

    new-instance v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    const/16 v5, 0x14

    move v1, v8

    move v2, v8

    move v3, v8

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;-><init>(IIIII)V

    invoke-direct {v6, v7, v10, v0}, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;-><init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/mock/MockReceiver$Delays;)V

    sput-object v6, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->FAST:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    sget-object v1, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->REALISTIC:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->FAST:Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->$VALUES:[Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/mock/MockReceiver$Delays;)V
    .locals 0
    .param p3, "delays"    # Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    iput-object p3, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    .line 73
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->$VALUES:[Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;

    return-object v0
.end method


# virtual methods
.method public getDelays()Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/fmradio/mock/MockReceiver$DelayMode;->mDelays:Lcom/sonyericsson/fmradio/mock/MockReceiver$Delays;

    return-object v0
.end method
