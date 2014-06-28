.class public final enum Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;
.super Ljava/lang/Enum;
.source "MusicVisualizerDefinition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UXVisualizerCoreState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum BeforeInitialize:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum Constructed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum Destroyed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum Destroying:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

.field public static final enum SurfaceCreating:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "BeforeInitialize"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->BeforeInitialize:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "Constructed"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Constructed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "SurfaceCreating"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreating:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "SurfaceCreated"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "Running"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "Destroying"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Destroying:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    new-instance v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    const-string v1, "Destroyed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Destroyed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    .line 70
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->BeforeInitialize:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Constructed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreating:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->SurfaceCreated:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Running:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Destroying:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->Destroyed:Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->$VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;->$VALUES:[Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/musicvisualizer/MusicVisualizerDefinition$UXVisualizerCoreState;

    return-object v0
.end method
