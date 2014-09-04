.class public final enum Lcom/sonymobile/china/collage/ImageElement$ElementType;
.super Ljava/lang/Enum;
.source "ImageElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/ImageElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ElementType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/china/collage/ImageElement$ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/china/collage/ImageElement$ElementType;

.field public static final enum CIRCLE:Lcom/sonymobile/china/collage/ImageElement$ElementType;

.field public static final enum NORMAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

.field public static final enum OVAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

.field public static final enum PATH:Lcom/sonymobile/china/collage/ImageElement$ElementType;

.field public static final enum POLYGON:Lcom/sonymobile/china/collage/ImageElement$ElementType;

.field public static final enum RECT:Lcom/sonymobile/china/collage/ImageElement$ElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 203
    new-instance v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/china/collage/ImageElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->NORMAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    new-instance v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    const-string v1, "RECT"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/china/collage/ImageElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->RECT:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    new-instance v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/china/collage/ImageElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->CIRCLE:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    new-instance v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    const-string v1, "OVAL"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/china/collage/ImageElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->OVAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    new-instance v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    const-string v1, "POLYGON"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/china/collage/ImageElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->POLYGON:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    new-instance v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    const-string v1, "PATH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/collage/ImageElement$ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->PATH:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    .line 202
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/china/collage/ImageElement$ElementType;

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->NORMAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->RECT:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->CIRCLE:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->OVAL:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/china/collage/ImageElement$ElementType;->POLYGON:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/china/collage/ImageElement$ElementType;->PATH:Lcom/sonymobile/china/collage/ImageElement$ElementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->$VALUES:[Lcom/sonymobile/china/collage/ImageElement$ElementType;

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
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/china/collage/ImageElement$ElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 202
    const-class v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/china/collage/ImageElement$ElementType;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/sonymobile/china/collage/ImageElement$ElementType;->$VALUES:[Lcom/sonymobile/china/collage/ImageElement$ElementType;

    invoke-virtual {v0}, [Lcom/sonymobile/china/collage/ImageElement$ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/china/collage/ImageElement$ElementType;

    return-object v0
.end method
