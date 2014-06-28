.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$8000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3512
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8100()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 1

    .prologue
    .line 3512
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3559
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3560
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3563
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 3

    .prologue
    .line 3521
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;-><init>()V

    .line 3522
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .line 3523
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3552
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3554
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 3

    .prologue
    .line 3567
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    if-nez v1, :cond_0

    .line 3568
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3571
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .line 3572
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .line 3573
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    .line 3531
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    if-nez v0, :cond_0

    .line 3532
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3535
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .line 3536
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 3

    .prologue
    .line 3749
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3750
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;J)J

    .line 3751
    return-object p0
.end method

.method public clearEstimatedNormalMode()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3713
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3714
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedNormalMode_:I
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3715
    return-object p0
.end method

.method public clearEstimatedUsageNormalMode()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3785
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3786
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageNormalMode_:I
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3787
    return-object p0
.end method

.method public clearEstimatedUsageXssmMode()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3803
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3804
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageXssmMode_:I
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3805
    return-object p0
.end method

.method public clearEstimatedXssmMode()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3731
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3732
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedXssmMode_:I
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3733
    return-object p0
.end method

.method public clearMeasuredPowerDrain()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3695
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3696
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredPowerDrain_:I
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3697
    return-object p0
.end method

.method public clearMeasuredUsageDrain()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3767
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3768
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredUsageDrain_:I
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3769
    return-object p0
.end method

.method public clearType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    .line 3677
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3678
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 3679
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2

    .prologue
    .line 3540
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

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
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1

    .prologue
    .line 3544
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 3741
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEstimatedNormalMode()I
    .locals 1

    .prologue
    .line 3705
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedNormalMode()I

    move-result v0

    return v0
.end method

.method public getEstimatedUsageNormalMode()I
    .locals 1

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageNormalMode()I

    move-result v0

    return v0
.end method

.method public getEstimatedUsageXssmMode()I
    .locals 1

    .prologue
    .line 3795
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageXssmMode()I

    move-result v0

    return v0
.end method

.method public getEstimatedXssmMode()I
    .locals 1

    .prologue
    .line 3723
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedXssmMode()I

    move-result v0

    return v0
.end method

.method public getMeasuredPowerDrain()I
    .locals 1

    .prologue
    .line 3687
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredPowerDrain()I

    move-result v0

    return v0
.end method

.method public getMeasuredUsageDrain()I
    .locals 1

    .prologue
    .line 3759
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredUsageDrain()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    .locals 1

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 3738
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasEstimatedNormalMode()Z
    .locals 1

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode()Z

    move-result v0

    return v0
.end method

.method public hasEstimatedUsageNormalMode()Z
    .locals 1

    .prologue
    .line 3774
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode()Z

    move-result v0

    return v0
.end method

.method public hasEstimatedUsageXssmMode()Z
    .locals 1

    .prologue
    .line 3792
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode()Z

    move-result v0

    return v0
.end method

.method public hasEstimatedXssmMode()Z
    .locals 1

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode()Z

    move-result v0

    return v0
.end method

.method public hasMeasuredPowerDrain()Z
    .locals 1

    .prologue
    .line 3684
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain()Z

    move-result v0

    return v0
.end method

.method public hasMeasuredUsageDrain()Z
    .locals 1

    .prologue
    .line 3756
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 3663
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3512
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
    .locals 1

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3548
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->isInitialized()Z

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
    .line 3512
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 3512
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

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
    .line 3512
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3610
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3611
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3615
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3616
    :sswitch_0
    return-object p0

    .line 3621
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 3622
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    move-result-object v2

    .line 3623
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    if-eqz v2, :cond_0

    .line 3624
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3629
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setMeasuredPowerDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3633
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3637
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3641
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3645
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setMeasuredUsageDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3649
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedUsageNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3653
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedUsageXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0

    .line 3611
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    .prologue
    .line 3577
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3602
    :cond_0
    :goto_0
    return-object p0

    .line 3578
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3579
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3581
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3582
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredPowerDrain()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setMeasuredPowerDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3584
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3585
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedNormalMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3587
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3588
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedXssmMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3590
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3591
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3593
    :cond_6
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3594
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getMeasuredUsageDrain()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setMeasuredUsageDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3596
    :cond_7
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3597
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageNormalMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedUsageNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 3599
    :cond_8
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3600
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->getEstimatedUsageXssmMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedUsageXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 3744
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3745
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;J)J

    .line 3746
    return-object p0
.end method

.method public setEstimatedNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3708
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedNormalMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3709
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedNormalMode_:I
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3710
    return-object p0
.end method

.method public setEstimatedUsageNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageNormalMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3781
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageNormalMode_:I
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3782
    return-object p0
.end method

.method public setEstimatedUsageXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3798
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedUsageXssmMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3799
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedUsageXssmMode_:I
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3800
    return-object p0
.end method

.method public setEstimatedXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3726
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasEstimatedXssmMode:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3727
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->estimatedXssmMode_:I
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3728
    return-object p0
.end method

.method public setMeasuredPowerDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredPowerDrain:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3691
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredPowerDrain_:I
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3692
    return-object p0
.end method

.method public setMeasuredUsageDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3762
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasMeasuredUsageDrain:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3763
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->measuredUsageDrain_:I
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$9402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;I)I

    .line 3764
    return-object p0
.end method

.method public setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .prologue
    .line 3669
    if-nez p1, :cond_0

    .line 3670
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3672
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->hasType:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Z)Z

    .line 3673
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->access$8402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 3674
    return-object p0
.end method
