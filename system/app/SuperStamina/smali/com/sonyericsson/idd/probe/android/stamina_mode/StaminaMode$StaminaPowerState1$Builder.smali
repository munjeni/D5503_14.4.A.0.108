.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 1

    .prologue
    .line 936
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 983
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 987
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 3

    .prologue
    .line 945
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;-><init>()V

    .line 946
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .line 947
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 978
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 3

    .prologue
    .line 991
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    if-nez v1, :cond_0

    .line 992
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .line 996
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .line 997
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    if-nez v0, :cond_0

    .line 956
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .line 960
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 3

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;Z)Z

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;J)J

    .line 1054
    return-object p0
.end method

.method public clearTimeSinceScreenOff()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 3

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;Z)Z

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const-wide/16 v1, -0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->timeSinceScreenOff_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;J)J

    .line 1072
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeSinceScreenOff()J
    .locals 2

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getTimeSinceScreenOff()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasTimeSinceScreenOff()Z
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;
    .locals 1

    .prologue
    .line 951
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 936
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "x1"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 936
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1017
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1021
    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    :sswitch_0
    return-object p0

    .line 1027
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    goto :goto_0

    .line 1031
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->setTimeSinceScreenOff(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    goto :goto_0

    .line 1017
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    .prologue
    .line 1001
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-object p0

    .line 1002
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1003
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    .line 1005
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->getTimeSinceScreenOff()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->setTimeSinceScreenOff(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;Z)Z

    .line 1048
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;J)J

    .line 1049
    return-object p0
.end method

.method public setTimeSinceScreenOff(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->hasTimeSinceScreenOff:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;Z)Z

    .line 1066
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->timeSinceScreenOff_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;->access$2802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerState1;J)J

    .line 1067
    return-object p0
.end method
