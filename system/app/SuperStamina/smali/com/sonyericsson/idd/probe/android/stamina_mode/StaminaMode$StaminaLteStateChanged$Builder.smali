.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4344
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$10600(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4338
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10700()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 1

    .prologue
    .line 4338
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 4385
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4386
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 4389
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 3

    .prologue
    .line 4347
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;-><init>()V

    .line 4348
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    .line 4349
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    .locals 1

    .prologue
    .line 4377
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4378
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 4380
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    .locals 3

    .prologue
    .line 4393
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    if-nez v1, :cond_0

    .line 4394
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4397
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    .line 4398
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    .line 4399
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 2

    .prologue
    .line 4357
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    if-nez v0, :cond_0

    .line 4358
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4361
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    .line 4362
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 3

    .prologue
    .line 4479
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$11102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;Z)Z

    .line 4480
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$11202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;J)J

    .line 4481
    return-object p0
.end method

.method public clearState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 2

    .prologue
    .line 4461
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasState:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$10902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;Z)Z

    .line 4462
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$11002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    .line 4463
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 2

    .prologue
    .line 4366
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

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
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    .locals 1

    .prologue
    .line 4370
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 4471
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;
    .locals 1

    .prologue
    .line 4450
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 4468
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 4447
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasState()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 4338
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;
    .locals 1

    .prologue
    .line 4353
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 4374
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->isInitialized()Z

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
    .line 4338
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 4338
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

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
    .line 4338
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4418
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4419
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 4423
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4424
    :sswitch_0
    return-object p0

    .line 4429
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4430
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    move-result-object v2

    .line 4431
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;
    if-eqz v2, :cond_0

    .line 4432
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    goto :goto_0

    .line 4437
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    goto :goto_0

    .line 4419
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    .prologue
    .line 4403
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4410
    :cond_0
    :goto_0
    return-object p0

    .line 4404
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4405
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->getState()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    .line 4407
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4408
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 4474
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$11102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;Z)Z

    .line 4475
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$11202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;J)J

    .line 4476
    return-object p0
.end method

.method public setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    .prologue
    .line 4453
    if-nez p1, :cond_0

    .line 4454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4456
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->hasState:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$10902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;Z)Z

    .line 4457
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->state_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;->access$11002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaLteStateChanged$State;

    .line 4458
    return-object p0
.end method
