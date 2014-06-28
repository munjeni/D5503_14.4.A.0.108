.class enum Lcom/sonyericsson/fmradio/service/AudioHandler$State;
.super Ljava/lang/Enum;
.source "AudioHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/service/AudioHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/fmradio/service/AudioHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/fmradio/service/AudioHandler$State;

.field public static final enum AWAITING_FOCUS:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

.field public static final enum DUCKING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

.field public static final enum PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

.field public static final enum STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$1;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/fmradio/service/AudioHandler$State$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 74
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$2;

    const-string v1, "AWAITING_FOCUS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/fmradio/service/AudioHandler$State$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->AWAITING_FOCUS:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 93
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$3;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/fmradio/service/AudioHandler$State$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 110
    new-instance v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;

    const-string v1, "DUCKING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/fmradio/service/AudioHandler$State$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->DUCKING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    sget-object v1, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->STOPPED:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->AWAITING_FOCUS:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->PLAYING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->DUCKING:Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->$VALUES:[Lcom/sonyericsson/fmradio/service/AudioHandler$State;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sonyericsson/fmradio/service/AudioHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/sonyericsson/fmradio/service/AudioHandler$1;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/fmradio/service/AudioHandler$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/fmradio/service/AudioHandler$State;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/fmradio/service/AudioHandler$State;->$VALUES:[Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/fmradio/service/AudioHandler$State;

    return-object v0
.end method


# virtual methods
.method public focusGained(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method

.method public focusLost(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;Z)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .param p2, "canDuck"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public play(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method public stop(Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/sonyericsson/fmradio/service/AudioHandler$StateContext;

    .prologue
    .line 134
    return-void
.end method
