.class public final enum Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
.super Ljava/lang/Enum;
.source "TimerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/TimerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

.field public static final enum PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

.field public static final enum POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;


# instance fields
.field private mTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v2, v4}, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .line 29
    new-instance v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    const-string v1, "PHF_REMOVED"

    invoke-direct {v0, v1, v3, v4}, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->POWER_OFF:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->PHF_REMOVED:Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->$VALUES:[Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->mTimeout:I

    .line 38
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->$VALUES:[Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;

    return-object v0
.end method


# virtual methods
.method getTimeout()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sonyericsson/fmradio/service/TimerHandler$TimerType;->mTimeout:I

    return v0
.end method
