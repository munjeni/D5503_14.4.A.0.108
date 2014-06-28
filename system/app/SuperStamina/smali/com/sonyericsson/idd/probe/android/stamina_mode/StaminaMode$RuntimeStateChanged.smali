.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RuntimeStateChanged"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;,
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME_FIELD_NUMBER:I = 0x2

.field public static final STATE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;


# instance fields
.field private elapsedRealtime_:J

.field private hasElapsedRealtime:Z

.field private hasState:Z

.field private memoizedSerializedSize:I

.field private state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 4150
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .line 4151
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 4152
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->initFields()V

    .line 4153
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 3823
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3886
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->elapsedRealtime_:J

    .line 3908
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->memoizedSerializedSize:I

    .line 3824
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->initFields()V

    .line 3825
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 3820
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 3826
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3886
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->elapsedRealtime_:J

    .line 3908
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->memoizedSerializedSize:I

    .line 3826
    return-void
.end method

.method static synthetic access$10202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .param p1, "x1"    # Z

    .prologue
    .line 3820
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState:Z

    return p1
.end method

.method static synthetic access$10302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    .prologue
    .line 3820
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    return-object p1
.end method

.method static synthetic access$10402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .param p1, "x1"    # Z

    .prologue
    .line 3820
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime:Z

    return p1
.end method

.method static synthetic access$10502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .param p1, "x1"    # J

    .prologue
    .line 3820
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->elapsedRealtime_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1

    .prologue
    .line 3830
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 3891
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    .line 3892
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 1

    .prologue
    .line 3993
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$10000()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .prologue
    .line 3996
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3962
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    .line 3963
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3964
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v1

    .line 3966
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3973
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    .line 3974
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3975
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v1

    .line 3977
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3929
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3935
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3983
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3989
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3951
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3957
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3940
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3946
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3820
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1

    .prologue
    .line 3834
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 3888
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->elapsedRealtime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3910
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->memoizedSerializedSize:I

    .line 3911
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 3923
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 3913
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 3914
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3915
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3918
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3919
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3922
    :cond_2
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->memoizedSerializedSize:I

    move v1, v0

    .line 3923
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    .locals 1

    .prologue
    .line 3881
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 3887
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 3880
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3894
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3820
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 1

    .prologue
    .line 3994
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3820
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 1

    .prologue
    .line 3998
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

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
    .line 3899
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getSerializedSize()I

    .line 3900
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3901
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3903
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3904
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3906
    :cond_1
    return-void
.end method
