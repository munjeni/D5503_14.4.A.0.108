.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaminaPowerState1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME_FIELD_NUMBER:I = 0x1

.field public static final TIME_SINCE_SCREEN_OFF_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;


# instance fields
.field private elapsedRealtime_:J

.field private hasElapsedRealtime:Z

.field private hasTimeSinceScreenOff:Z

.field private memoizedSerializedSize:I

.field private timeSinceScreenOff_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1079
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .line 1080
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 1081
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->initFields()V

    .line 1082
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 816
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->elapsedRealtime_:J

    .line 823
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->timeSinceScreenOff_:J

    .line 844
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->memoizedSerializedSize:I

    .line 800
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->initFields()V

    .line 801
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 816
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->elapsedRealtime_:J

    .line 823
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->timeSinceScreenOff_:J

    .line 844
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->memoizedSerializedSize:I

    .line 802
    return-void
.end method

.method static synthetic access$2502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .param p1, "x1"    # Z

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .param p1, "x1"    # J

    .prologue
    .line 796
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->elapsedRealtime_:J

    return-wide p1
.end method

.method static synthetic access$2702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .param p1, "x1"    # Z

    .prologue
    .line 796
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .param p1, "x1"    # J

    .prologue
    .line 796
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->timeSinceScreenOff_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1

    .prologue
    .line 806
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 828
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 1

    .prologue
    .line 929
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2300()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .prologue
    .line 932
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 898
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    .line 899
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v1

    .line 902
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    .line 910
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 911
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v1

    .line 913
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 871
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 919
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 925
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 887
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1

    .prologue
    .line 810
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 818
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->elapsedRealtime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 846
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->memoizedSerializedSize:I

    .line 847
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 859
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 849
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 850
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getTimeSinceScreenOff()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 858
    :cond_2
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->memoizedSerializedSize:I

    move v1, v0

    .line 859
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getTimeSinceScreenOff()J
    .locals 2

    .prologue
    .line 825
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->timeSinceScreenOff_:J

    return-wide v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime:Z

    return v0
.end method

.method public hasTimeSinceScreenOff()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 1

    .prologue
    .line 930
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 1

    .prologue
    .line 934
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

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
    .line 835
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getSerializedSize()I

    .line 836
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 839
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 840
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getTimeSinceScreenOff()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 842
    :cond_1
    return-void
.end method
