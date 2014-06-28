.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4006
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10000()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 1

    .prologue
    .line 4000
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4000
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4047
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4048
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4051
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 3

    .prologue
    .line 4009
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;-><init>()V

    .line 4010
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .line 4011
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4040
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4042
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 3

    .prologue
    .line 4055
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    if-nez v1, :cond_0

    .line 4056
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4059
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .line 4060
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .line 4061
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 2

    .prologue
    .line 4019
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    if-nez v0, :cond_0

    .line 4020
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4023
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .line 4024
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 3

    .prologue
    .line 4141
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Z)Z

    .line 4142
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;J)J

    .line 4143
    return-object p0
.end method

.method public clearState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 2

    .prologue
    .line 4123
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Z)Z

    .line 4124
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    .line 4125
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 2

    .prologue
    .line 4028
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

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
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1

    .prologue
    .line 4032
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 4133
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    .locals 1

    .prologue
    .line 4112
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 4130
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 4109
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4000
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;
    .locals 1

    .prologue
    .line 4015
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4036
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->isInitialized()Z

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
    .line 4000
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 4000
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

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
    .line 4000
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4080
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4081
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 4085
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4086
    :sswitch_0
    return-object p0

    .line 4091
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4092
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    move-result-object v2

    .line 4093
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    if-eqz v2, :cond_0

    .line 4094
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    goto :goto_0

    .line 4099
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    goto :goto_0

    .line 4081
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    .prologue
    .line 4065
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4072
    :cond_0
    :goto_0
    return-object p0

    .line 4066
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4067
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    .line 4069
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4070
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 4136
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Z)Z

    .line 4137
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;J)J

    .line 4138
    return-object p0
.end method

.method public setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    .prologue
    .line 4115
    if-nez p1, :cond_0

    .line 4116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4118
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->hasState:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Z)Z

    .line 4119
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;->access$10302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$RuntimeStateChanged$State;

    .line 4120
    return-object p0
.end method
