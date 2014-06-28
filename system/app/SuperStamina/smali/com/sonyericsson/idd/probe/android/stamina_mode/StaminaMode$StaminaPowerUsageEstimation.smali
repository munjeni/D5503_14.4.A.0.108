.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaminaPowerUsageEstimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;,
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME_FIELD_NUMBER:I = 0x5

.field public static final ESTIMATED_NORMAL_MODE_FIELD_NUMBER:I = 0x3

.field public static final ESTIMATED_USAGE_NORMAL_MODE_FIELD_NUMBER:I = 0x7

.field public static final ESTIMATED_USAGE_XSSM_MODE_FIELD_NUMBER:I = 0x8

.field public static final ESTIMATED_XSSM_MODE_FIELD_NUMBER:I = 0x4

.field public static final MEASURED_POWER_DRAIN_FIELD_NUMBER:I = 0x2

.field public static final MEASURED_USAGE_DRAIN_FIELD_NUMBER:I = 0x6

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;


# instance fields
.field private elapsedRealtime_:J

.field private estimatedNormalMode_:I

.field private estimatedUsageNormalMode_:I

.field private estimatedUsageXssmMode_:I

.field private estimatedXssmMode_:I

.field private hasElapsedRealtime:Z

.field private hasEstimatedNormalMode:Z

.field private hasEstimatedUsageNormalMode:Z

.field private hasEstimatedUsageXssmMode:Z

.field private hasEstimatedXssmMode:Z

.field private hasMeasuredPowerDrain:Z

.field private hasMeasuredUsageDrain:Z

.field private hasType:Z

.field private measuredPowerDrain_:I

.field private measuredUsageDrain_:I

.field private memoizedSerializedSize:I

.field private type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3812
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .line 3813
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 3814
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->initFields()V

    .line 3815
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3314
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredPowerDrain_:I

    .line 3321
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedNormalMode_:I

    .line 3328
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedXssmMode_:I

    .line 3335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->elapsedRealtime_:J

    .line 3342
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredUsageDrain_:I

    .line 3349
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageNormalMode_:I

    .line 3356
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageXssmMode_:I

    .line 3396
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->memoizedSerializedSize:I

    .line 3252
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->initFields()V

    .line 3253
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 3248
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "noInit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3254
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3314
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredPowerDrain_:I

    .line 3321
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedNormalMode_:I

    .line 3328
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedXssmMode_:I

    .line 3335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->elapsedRealtime_:J

    .line 3342
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredUsageDrain_:I

    .line 3349
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageNormalMode_:I

    .line 3356
    iput v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageXssmMode_:I

    .line 3396
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->memoizedSerializedSize:I

    .line 3254
    return-void
.end method

.method static synthetic access$8302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType:Z

    return p1
.end method

.method static synthetic access$8402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .prologue
    .line 3248
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain:Z

    return p1
.end method

.method static synthetic access$8602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # I

    .prologue
    .line 3248
    iput p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredPowerDrain_:I

    return p1
.end method

.method static synthetic access$8702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode:Z

    return p1
.end method

.method static synthetic access$8802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # I

    .prologue
    .line 3248
    iput p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedNormalMode_:I

    return p1
.end method

.method static synthetic access$8902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode:Z

    return p1
.end method

.method static synthetic access$9002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # I

    .prologue
    .line 3248
    iput p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedXssmMode_:I

    return p1
.end method

.method static synthetic access$9102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime:Z

    return p1
.end method

.method static synthetic access$9202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # J

    .prologue
    .line 3248
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->elapsedRealtime_:J

    return-wide p1
.end method

.method static synthetic access$9302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain:Z

    return p1
.end method

.method static synthetic access$9402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # I

    .prologue
    .line 3248
    iput p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredUsageDrain_:I

    return p1
.end method

.method static synthetic access$9502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode:Z

    return p1
.end method

.method static synthetic access$9602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # I

    .prologue
    .line 3248
    iput p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageNormalMode_:I

    return p1
.end method

.method static synthetic access$9702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # Z

    .prologue
    .line 3248
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode:Z

    return p1
.end method

.method static synthetic access$9802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .param p1, "x1"    # I

    .prologue
    .line 3248
    iput p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageXssmMode_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1

    .prologue
    .line 3258
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3361
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 3362
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 1

    .prologue
    .line 3505
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8100()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .prologue
    .line 3508
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3474
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    .line 3475
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3476
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v1

    .line 3478
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3485
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    .line 3486
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3487
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v1

    .line 3489
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3441
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3447
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3495
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3501
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3463
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3469
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3452
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3458
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1

    .prologue
    .line 3262
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 3337
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->elapsedRealtime_:J

    return-wide v0
.end method

.method public getEstimatedNormalMode()I
    .locals 1

    .prologue
    .line 3323
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedNormalMode_:I

    return v0
.end method

.method public getEstimatedUsageNormalMode()I
    .locals 1

    .prologue
    .line 3351
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageNormalMode_:I

    return v0
.end method

.method public getEstimatedUsageXssmMode()I
    .locals 1

    .prologue
    .line 3358
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageXssmMode_:I

    return v0
.end method

.method public getEstimatedXssmMode()I
    .locals 1

    .prologue
    .line 3330
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedXssmMode_:I

    return v0
.end method

.method public getMeasuredPowerDrain()I
    .locals 1

    .prologue
    .line 3316
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredPowerDrain_:I

    return v0
.end method

.method public getMeasuredUsageDrain()I
    .locals 1

    .prologue
    .line 3344
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredUsageDrain_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3398
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->memoizedSerializedSize:I

    .line 3399
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3435
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3401
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3402
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3403
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3406
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3407
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredPowerDrain()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3410
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3411
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedNormalMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3414
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3415
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedXssmMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3418
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3419
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3422
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3423
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredUsageDrain()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3426
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3427
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageNormalMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3430
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3431
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageXssmMode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3434
    :cond_8
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->memoizedSerializedSize:I

    move v1, v0

    .line 3435
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    .locals 1

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 3336
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime:Z

    return v0
.end method

.method public hasEstimatedNormalMode()Z
    .locals 1

    .prologue
    .line 3322
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode:Z

    return v0
.end method

.method public hasEstimatedUsageNormalMode()Z
    .locals 1

    .prologue
    .line 3350
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode:Z

    return v0
.end method

.method public hasEstimatedUsageXssmMode()Z
    .locals 1

    .prologue
    .line 3357
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode:Z

    return v0
.end method

.method public hasEstimatedXssmMode()Z
    .locals 1

    .prologue
    .line 3329
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode:Z

    return v0
.end method

.method public hasMeasuredPowerDrain()Z
    .locals 1

    .prologue
    .line 3315
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain:Z

    return v0
.end method

.method public hasMeasuredUsageDrain()Z
    .locals 1

    .prologue
    .line 3343
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3308
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3364
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 1

    .prologue
    .line 3506
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3248
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 1

    .prologue
    .line 3510
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3369
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getSerializedSize()I

    .line 3370
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3371
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3373
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3374
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredPowerDrain()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3376
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3377
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedNormalMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3379
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3380
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedXssmMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3382
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3383
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3385
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3386
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredUsageDrain()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3388
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3389
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageNormalMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3391
    :cond_6
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3392
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageXssmMode()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3394
    :cond_7
    return-void
.end method
