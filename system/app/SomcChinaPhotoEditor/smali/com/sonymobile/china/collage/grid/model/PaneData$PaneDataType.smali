.class public final enum Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
.super Ljava/lang/Enum;
.source "PaneData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/grid/model/PaneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaneDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

.field public static final enum CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

.field public static final enum EMPTY:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

.field public static final enum PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    const-string v1, "PICTURE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    new-instance v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    const-string v1, "CROSS"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    new-instance v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->EMPTY:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->PICTURE:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->CROSS:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->EMPTY:Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->$VALUES:[Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->$VALUES:[Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    invoke-virtual {v0}, [Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/china/collage/grid/model/PaneData$PaneDataType;

    return-object v0
.end method
