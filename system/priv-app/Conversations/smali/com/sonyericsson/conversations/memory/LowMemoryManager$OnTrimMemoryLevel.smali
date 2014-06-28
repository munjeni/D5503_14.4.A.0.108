.class public final enum Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;
.super Ljava/lang/Enum;
.source "LowMemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/memory/LowMemoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OnTrimMemoryLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

.field public static final enum Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

.field public static final enum Low:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

.field public static final enum Moderate:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    const-string v1, "Critical"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .line 18
    new-instance v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    const-string v1, "Moderate"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Moderate:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .line 19
    new-instance v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    const-string v1, "Low"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Low:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Moderate:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Low:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->$VALUES:[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static convert(I)Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 22
    const/16 v0, 0x50

    if-lt p0, v0, :cond_0

    .line 23
    sget-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Critical:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .line 27
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_1

    .line 25
    sget-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Moderate:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    goto :goto_0

    .line 27
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->Low:Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;->$VALUES:[Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    return-object v0
.end method
