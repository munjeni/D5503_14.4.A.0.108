.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StaminaXssmBlocker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    }
.end annotation


# static fields
.field public static final ELAPSED_REALTIME_FIELD_NUMBER:I = 0x2

.field public static final PACKAGE_NAME_FROM_UID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;


# instance fields
.field private elapsedRealtime_:J

.field private hasElapsedRealtime:Z

.field private hasPackageNameFromUid:Z

.field private memoizedSerializedSize:I

.field private packageNameFromUid_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2561
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    .line 2562
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 2563
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->initFields()V

    .line 2564
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2278
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2295
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->packageNameFromUid_:Ljava/lang/String;

    .line 2302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->elapsedRealtime_:J

    .line 2323
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->memoizedSerializedSize:I

    .line 2279
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->initFields()V

    .line 2280
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 2275
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    .line 2281
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2295
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->packageNameFromUid_:Ljava/lang/String;

    .line 2302
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->elapsedRealtime_:J

    .line 2323
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->memoizedSerializedSize:I

    .line 2281
    return-void
.end method

.method static synthetic access$6302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .param p1, "x1"    # Z

    .prologue
    .line 2275
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasPackageNameFromUid:Z

    return p1
.end method

.method static synthetic access$6402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2275
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->packageNameFromUid_:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .param p1, "x1"    # Z

    .prologue
    .line 2275
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasElapsedRealtime:Z

    return p1
.end method

.method static synthetic access$6602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .param p1, "x1"    # J

    .prologue
    .line 2275
    iput-wide p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->elapsedRealtime_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1

    .prologue
    .line 2285
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    return-object v0
.end method

.method private initFields()V
    .locals 0

    .prologue
    .line 2307
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    .locals 1

    .prologue
    .line 2408
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6100()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    .prologue
    .line 2411
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2377
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    .line 2378
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2379
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v1

    .line 2381
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2388
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    .line 2389
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2390
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v1

    .line 2392
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2344
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2350
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2398
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2404
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2366
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2372
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2355
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2361
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;->access$6000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2275
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;
    .locals 1

    .prologue
    .line 2289
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 2304
    iget-wide v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->elapsedRealtime_:J

    return-wide v0
.end method

.method public getPackageNameFromUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->packageNameFromUid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 2325
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->memoizedSerializedSize:I

    .line 2326
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2338
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2328
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2329
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasPackageNameFromUid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2330
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2333
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasElapsedRealtime()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2334
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->getElapsedRealtime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2337
    :cond_2
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->memoizedSerializedSize:I

    move v1, v0

    .line 2338
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 2303
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasElapsedRealtime:Z

    return v0
.end method

.method public hasPackageNameFromUid()Z
    .locals 1

    .prologue
    .line 2296
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasPackageNameFromUid:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2309
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2275
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    .locals 1

    .prologue
    .line 2409
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2275
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;
    .locals 1

    .prologue
    .line 2413
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker$Builder;

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
    .line 2314
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->getSerializedSize()I

    .line 2315
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasPackageNameFromUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2316
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2318
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2319
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaXssmBlocker;->getElapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 2321
    :cond_1
    return-void
.end method
