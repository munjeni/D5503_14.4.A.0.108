.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
.super Ljava/lang/Enum;
.source "CapturingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

.field public static final enum FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

.field public static final enum HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCorrespondingVideoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

.field private final mSomcType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 22
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    const-string v1, "FOUR_K_UHD"

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->FOUR_K_UHD_30FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;-><init>(Ljava/lang/String;ILcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .line 23
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    const-string v1, "HIGH_FRAME_RATE"

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->HD_120FPS:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    const/16 v3, 0xb

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;-><init>(Ljava/lang/String;ILcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .line 26
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;I)V
    .locals 0
    .param p3, "videoSize"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .param p4, "somcType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->mCorrespondingVideoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .line 47
    iput p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->mSomcType:I

    .line 48
    return-void
.end method

.method public static convertFrom(Ljava/lang/String;Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultMode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    .line 68
    move-object v1, p1

    .line 70
    .local v1, "mode":Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is not supported."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getDefaultValue()Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    return-object v0
.end method

.method public static getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    return-object v0
.end method


# virtual methods
.method public getCorrespondingVideoSize()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->mCorrespondingVideoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    return-object v0
.end method

.method public getSomcType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->mSomcType:I

    return v0
.end method
