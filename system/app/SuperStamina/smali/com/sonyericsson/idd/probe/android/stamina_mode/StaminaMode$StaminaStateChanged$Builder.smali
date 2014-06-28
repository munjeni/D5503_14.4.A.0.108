.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;-><init>()V

    .line 201
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    .line 202
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    .locals 3

    .prologue
    .line 246
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    .line 251
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    .line 252
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    .line 215
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;Z)Z

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;J)J

    .line 334
    return-object p0
.end method

.method public clearState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasState:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;Z)Z

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    .line 316
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

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
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasState()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->isInitialized()Z

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
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 191
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

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
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 272
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 276
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    :sswitch_0
    return-object p0

    .line 282
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 283
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    move-result-object v2

    .line 284
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    if-eqz v2, :cond_0

    .line 285
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    goto :goto_0

    .line 290
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    goto :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    .prologue
    .line 256
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-object p0

    .line 257
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    .line 260
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;Z)Z

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;J)J

    .line 329
    return-object p0
.end method

.method public setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    .prologue
    .line 306
    if-nez p1, :cond_0

    .line 307
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->hasState:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;Z)Z

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->access$402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    .line 311
    return-object p0
.end method
