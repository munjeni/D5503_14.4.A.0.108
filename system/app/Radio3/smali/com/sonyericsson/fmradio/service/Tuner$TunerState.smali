.class public final enum Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
.super Ljava/lang/Enum;
.source "Tuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/Tuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TunerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/fmradio/service/Tuner$TunerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

.field public static final enum DESTROYED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

.field public static final enum PLAYING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

.field public static final enum SCANNING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

.field public static final enum STARTING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

.field public static final enum STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 42
    new-instance v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->PLAYING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 46
    new-instance v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->SCANNING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 50
    new-instance v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    const-string v1, "STARTING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STARTING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 55
    new-instance v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->DESTROYED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    .line 34
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STOPPED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->PLAYING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->SCANNING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->STARTING:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->DESTROYED:Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->$VALUES:[Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/fmradio/service/Tuner$TunerState;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/fmradio/service/Tuner$TunerState;->$VALUES:[Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/fmradio/service/Tuner$TunerState;

    return-object v0
.end method
