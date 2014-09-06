.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;
.super Ljava/lang/Enum;
.source "CustomDimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Index"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

.field public static final enum BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

.field public static final enum BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

.field public static final enum BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

.field public static final enum LAUNCHED_FROM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

.field public static final enum SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

.field public static final enum ZERO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    const-string v1, "ZERO"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->ZERO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    .line 18
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    const-string v1, "BUILD_MODEL"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    .line 19
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    const-string v1, "BUILD_ID"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    .line 20
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    const-string v1, "SAMPLE_RATE"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    .line 21
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    const-string v1, "BUILD_TYPE"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    .line 22
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    const-string v1, "LAUNCHED_FROM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->LAUNCHED_FROM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->ZERO:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->LAUNCHED_FROM:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Index;

    return-object v0
.end method
