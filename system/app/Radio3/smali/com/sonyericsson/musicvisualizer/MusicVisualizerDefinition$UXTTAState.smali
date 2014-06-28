.class public final enum Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;
.super Ljava/lang/Enum;
.source "MusicVisualizerDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UXTTAState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

.field public static final enum Version0:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

.field public static final enum Version1:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

.field public static final enum Version2:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

.field public static final enum VersionMinus1:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    const-string v1, "VersionMinus1"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->VersionMinus1:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 47
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    const-string v1, "Version0"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version0:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 49
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    const-string v1, "Version1"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version1:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 51
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    const-string v1, "Version2"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version2:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->VersionMinus1:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version0:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version1:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->Version2:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->$VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;->$VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXTTAState;

    return-object v0
.end method
