.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaminaPowerState2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME_FIELD_NUMBER:I = 0x1

.field public static final TIME_SINCE_SCREEN_OFF_FIELD_NUMBER:I = 0x4

.field public static final TIME_SPENT_IN_STATE_1_FIELD_NUMBER:I = 0x2

.field public static final UPTIME_SPENT_IN_STATE_1_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;


# instance fields
.field private elapsedRealtime_:J

.field private hasElapsedRealtime:Z

.field private hasTimeSinceScreenOff:Z

.field private hasTimeSpentInState1:Z

.field private hasUptimeSpentInState1:Z

.field private memoizedSerializedSize:I

.field private timeSinceScreenOff_:J

.field private timeSpentInState1_:J

.field private uptimeSpentInState1_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1448
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    .line 1449
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 1450
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->initFields()V

    .line 1451
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 1090
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->elapsedRealtime_:J

    .line 1114
    iput-wide v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSpentInState1_:J

    .line 1121
    iput-wide v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->uptimeSpentInState1_:J

    .line 1128
    iput-wide v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSinceScreenOff_:J

    .line 1155
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->memoizedSerializedSize:I

    .line 1091
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->initFields()V

    .line 1092
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 1087
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4
    .param p1, "noInit"    # Z

    .prologue
    const-wide/16 v2, -0x1

    .line 1093
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->elapsedRealtime_:J

    .line 1114
    iput-wide v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSpentInState1_:J

    .line 1121
    iput-wide v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->uptimeSpentInState1_:J

    .line 1128
    iput-wide v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSinceScreenOff_:J

    .line 1155
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->memoizedSerializedSize:I

    .line 1093
    return-void
.end method

.method static synthetic access$3202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # Z

    .prologue
    .line 1087
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasElapsedRealtime:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # J

    .prologue
    .line 1087
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->elapsedRealtime_:J

    return-wide p1
.end method

.method static synthetic access$3402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # Z

    .prologue
    .line 1087
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSpentInState1:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # J

    .prologue
    .line 1087
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSpentInState1_:J

    return-wide p1
.end method

.method static synthetic access$3602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # Z

    .prologue
    .line 1087
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasUptimeSpentInState1:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # J

    .prologue
    .line 1087
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->uptimeSpentInState1_:J

    return-wide p1
.end method

.method static synthetic access$3802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # Z

    .prologue
    .line 1087
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSinceScreenOff:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .param p1, "x1"    # J

    .prologue
    .line 1087
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSinceScreenOff_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1

    .prologue
    .line 1097
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 1133
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    .locals 1

    .prologue
    .line 1248
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$3000()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    .prologue
    .line 1251
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1217
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    .line 1218
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1219
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v1

    .line 1221
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1228
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    .line 1229
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v1

    .line 1232
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1184
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1190
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1238
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1244
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1206
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1195
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;->access$2900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;
    .locals 1

    .prologue
    .line 1101
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 1109
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->elapsedRealtime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1157
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->memoizedSerializedSize:I

    .line 1158
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1178
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1160
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1161
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasElapsedRealtime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1162
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1165
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSpentInState1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1166
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getTimeSpentInState1()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1169
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasUptimeSpentInState1()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1170
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getUptimeSpentInState1()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1173
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSinceScreenOff()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1174
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getTimeSinceScreenOff()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1177
    :cond_4
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->memoizedSerializedSize:I

    move v1, v0

    .line 1178
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTimeSinceScreenOff()J
    .locals 2

    .prologue
    .line 1130
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSinceScreenOff_:J

    return-wide v0
.end method

.method public getTimeSpentInState1()J
    .locals 2

    .prologue
    .line 1116
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->timeSpentInState1_:J

    return-wide v0
.end method

.method public getUptimeSpentInState1()J
    .locals 2

    .prologue
    .line 1123
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->uptimeSpentInState1_:J

    return-wide v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasElapsedRealtime:Z

    return v0
.end method

.method public hasTimeSinceScreenOff()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSinceScreenOff:Z

    return v0
.end method

.method public hasTimeSpentInState1()Z
    .locals 1

    .prologue
    .line 1115
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSpentInState1:Z

    return v0
.end method

.method public hasUptimeSpentInState1()Z
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasUptimeSpentInState1:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1135
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    .locals 1

    .prologue
    .line 1249
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;
    .locals 1

    .prologue
    .line 1253
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2$Builder;

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
    .line 1140
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getSerializedSize()I

    .line 1141
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1144
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSpentInState1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getTimeSpentInState1()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1147
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasUptimeSpentInState1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getUptimeSpentInState1()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1150
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->hasTimeSinceScreenOff()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1151
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState2;->getTimeSinceScreenOff()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1153
    :cond_3
    return-void
.end method
