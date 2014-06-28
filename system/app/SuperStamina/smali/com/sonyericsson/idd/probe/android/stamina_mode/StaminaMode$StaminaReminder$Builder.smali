.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2123
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2117
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 1

    .prologue
    .line 2117
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2164
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2165
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2168
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 3

    .prologue
    .line 2126
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;-><init>()V

    .line 2127
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    .line 2128
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2157
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2159
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    .locals 3

    .prologue
    .line 2172
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    if-nez v1, :cond_0

    .line 2173
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2176
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    .line 2177
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    .line 2178
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 2

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    if-nez v0, :cond_0

    .line 2137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2140
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    .line 2141
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 3

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;Z)Z

    .line 2259
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;J)J

    .line 2260
    return-object p0
.end method

.method public clearType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 2

    .prologue
    .line 2240
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasType:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;Z)Z

    .line 2241
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->XSSM:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .line 2242
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 2

    .prologue
    .line 2145
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

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
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    .locals 1

    .prologue
    .line 2149
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 2247
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2117
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->isInitialized()Z

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
    .line 2117
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 2117
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

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
    .line 2117
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2197
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2198
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2202
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2203
    :sswitch_0
    return-object p0

    .line 2208
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2209
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    move-result-object v2

    .line 2210
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    if-eqz v2, :cond_0

    .line 2211
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    goto :goto_0

    .line 2216
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    goto :goto_0

    .line 2198
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    .prologue
    .line 2182
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2189
    :cond_0
    :goto_0
    return-object p0

    .line 2183
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2184
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    .line 2186
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2187
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;Z)Z

    .line 2254
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;J)J

    .line 2255
    return-object p0
.end method

.method public setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .prologue
    .line 2232
    if-nez p1, :cond_0

    .line 2233
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->hasType:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;Z)Z

    .line 2236
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;->access$5702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .line 2237
    return-object p0
.end method
