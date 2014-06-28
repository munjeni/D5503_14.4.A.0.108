.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaminaSoftDisable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;,
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_FIELD_NUMBER:I = 0x5

.field public static final CHARGING_FIELD_NUMBER:I = 0x2

.field public static final ELAPSED_REALTIME_FIELD_NUMBER:I = 0x4

.field public static final THRESHOLD_FIELD_NUMBER:I = 0x1

.field public static final WIFI_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;


# instance fields
.field private bluetooth_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

.field private charging_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

.field private elapsedRealtime_:J

.field private hasBluetooth:Z

.field private hasCharging:Z

.field private hasElapsedRealtime:Z

.field private hasThreshold:Z

.field private hasWifi:Z

.field private memoizedSerializedSize:I

.field private threshold_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

.field private wifi_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1927
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .line 1928
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 1929
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->initFields()V

    .line 1930
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1459
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1536
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->elapsedRealtime_:J

    .line 1577
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->memoizedSerializedSize:I

    .line 1460
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->initFields()V

    .line 1461
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 1456
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 1462
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1536
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->elapsedRealtime_:J

    .line 1577
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->memoizedSerializedSize:I

    .line 1462
    return-void
.end method

.method static synthetic access$4302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Z

    .prologue
    .line 1456
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->threshold_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Z

    .prologue
    .line 1456
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->charging_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object p1
.end method

.method static synthetic access$4702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Z

    .prologue
    .line 1456
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->wifi_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Z

    .prologue
    .line 1456
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime:Z

    return p1
.end method

.method static synthetic access$5002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # J

    .prologue
    .line 1456
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->elapsedRealtime_:J

    return-wide p1
.end method

.method static synthetic access$5102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Z

    .prologue
    .line 1456
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth:Z

    return p1
.end method

.method static synthetic access$5202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->bluetooth_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1

    .prologue
    .line 1466
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 1548
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->threshold_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1549
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->charging_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1550
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->wifi_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1551
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->bluetooth_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1552
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 1

    .prologue
    .line 1674
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4100()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .prologue
    .line 1677
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1643
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    .line 1644
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1645
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v1

    .line 1647
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1654
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    .line 1655
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1656
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v1

    .line 1658
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1610
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1616
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1664
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1670
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1632
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1621
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1627
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->bluetooth_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object v0
.end method

.method public getCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->charging_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1

    .prologue
    .line 1470
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 1538
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->elapsedRealtime_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 1579
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->memoizedSerializedSize:I

    .line 1580
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1604
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 1582
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1584
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1587
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1588
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1591
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1592
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1595
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1596
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 1599
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1600
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1603
    :cond_5
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->memoizedSerializedSize:I

    move v1, v0

    .line 1604
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->threshold_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object v0
.end method

.method public getWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->wifi_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object v0
.end method

.method public hasBluetooth()Z
    .locals 1

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth:Z

    return v0
.end method

.method public hasCharging()Z
    .locals 1

    .prologue
    .line 1523
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging:Z

    return v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 1537
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime:Z

    return v0
.end method

.method public hasThreshold()Z
    .locals 1

    .prologue
    .line 1516
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold:Z

    return v0
.end method

.method public hasWifi()Z
    .locals 1

    .prologue
    .line 1530
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1554
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 1

    .prologue
    .line 1675
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1456
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 1

    .prologue
    .line 1679
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

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
    .line 1559
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getSerializedSize()I

    .line 1560
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1563
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1564
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1566
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1567
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1569
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1570
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1572
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1573
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1575
    :cond_4
    return-void
.end method
