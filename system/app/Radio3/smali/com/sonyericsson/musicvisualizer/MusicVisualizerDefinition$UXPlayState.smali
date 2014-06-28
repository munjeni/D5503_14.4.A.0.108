.class public final enum Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
.super Ljava/lang/Enum;
.source "MusicVisualizerDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UXPlayState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

.field public static final enum HeadPause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

.field public static final enum HeadPlay:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

.field public static final enum Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

.field public static final enum Play:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

.field public static final enum Seek:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    const-string v1, "Play"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Play:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 61
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    const-string v1, "Pause"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 63
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    const-string v1, "Seek"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Seek:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 65
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    const-string v1, "HeadPlay"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->HeadPlay:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 67
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    const-string v1, "HeadPause"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->HeadPause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Play:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Pause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->Seek:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->HeadPlay:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->HeadPause:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->$VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;->$VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXPlayState;

    return-object v0
.end method
