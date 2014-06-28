.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WhiteListItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;,
        Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    }
.end annotation


# static fields
.field public static final PACKAGE_NAME_FROM_UID_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;


# instance fields
.field private hasPackageNameFromUid:Z

.field private hasType:Z

.field private memoizedSerializedSize:I

.field private packageNameFromUid_:Ljava/lang/String;

.field private type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 2902
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;-><init>(Z)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .line 2903
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode;->internalForceInit()V

    .line 2904
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->initFields()V

    .line 2905
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2572
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2635
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->packageNameFromUid_:Ljava/lang/String;

    .line 2657
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->memoizedSerializedSize:I

    .line 2573
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->initFields()V

    .line 2574
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;

    .prologue
    .line 2569
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 2575
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2635
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->packageNameFromUid_:Ljava/lang/String;

    .line 2657
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->memoizedSerializedSize:I

    .line 2575
    return-void
.end method

.method static synthetic access$7002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .param p1, "x1"    # Z

    .prologue
    .line 2569
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType:Z

    return p1
.end method

.method static synthetic access$7102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .param p1, "x1"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .param p1, "x1"    # Z

    .prologue
    .line 2569
    iput-boolean p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2569
    iput-object p1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->packageNameFromUid_:Ljava/lang/String;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1

    .prologue
    .line 2579
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2640
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->MANUAL:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    .line 2641
    return-void
.end method

.method public static newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 1

    .prologue
    .line 2742
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6800()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .prologue
    .line 2745
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2711
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    .line 2712
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2713
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v1

    .line 2715
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2722
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    .line 2723
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2724
    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v1

    .line 2726
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2678
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2684
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2732
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2738
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2700
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2706
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2689
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2695
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    # invokes: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1

    .prologue
    .line 2583
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->defaultInstance:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    return-object v0
.end method

.method public getPackageNameFromUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2637
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->packageNameFromUid_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2659
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->memoizedSerializedSize:I

    .line 2660
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2672
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2662
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2663
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2664
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2667
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2668
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2671
    :cond_2
    iput v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->memoizedSerializedSize:I

    move v1, v0

    .line 2672
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    .locals 1

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    return-object v0
.end method

.method public hasPackageNameFromUid()Z
    .locals 1

    .prologue
    .line 2636
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2629
    iget-boolean v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2643
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 1

    .prologue
    .line 2743
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2569
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 1

    .prologue
    .line 2747
    invoke-static {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2648
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getSerializedSize()I

    .line 2649
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2650
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2652
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2653
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2655
    :cond_1
    return-void
.end method
