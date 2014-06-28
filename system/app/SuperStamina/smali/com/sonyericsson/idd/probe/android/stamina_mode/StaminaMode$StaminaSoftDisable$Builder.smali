.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1687
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1681
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 1

    .prologue
    .line 1681
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1728
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1732
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 3

    .prologue
    .line 1690
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;-><init>()V

    .line 1691
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .line 1692
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1723
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 3

    .prologue
    .line 1736
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    if-nez v1, :cond_0

    .line 1737
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .line 1741
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .line 1742
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    if-nez v0, :cond_0

    .line 1701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .line 1705
    return-object p0
.end method

.method public clearBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$5102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1919
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->bluetooth_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$5202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1920
    return-object p0
.end method

.method public clearCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->charging_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1860
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 3

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1898
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$5002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;J)J

    .line 1899
    return-object p0
.end method

.method public clearThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1838
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->threshold_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1839
    return-object p0
.end method

.method public clearWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2

    .prologue
    .line 1879
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1880
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->wifi_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1881
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2

    .prologue
    .line 1709
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

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
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    return-object v0
.end method

.method public getCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1847
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1

    .prologue
    .line 1713
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    return-object v0
.end method

.method public getWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    return-object v0
.end method

.method public hasBluetooth()Z
    .locals 1

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth()Z

    move-result v0

    return v0
.end method

.method public hasCharging()Z
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging()Z

    move-result v0

    return v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method public hasThreshold()Z
    .locals 1

    .prologue
    .line 1823
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold()Z

    move-result v0

    return v0
.end method

.method public hasWifi()Z
    .locals 1

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1681
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->isInitialized()Z

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
    .line 1681
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 1681
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

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
    .line 1681
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1770
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1771
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 1775
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1776
    :sswitch_0
    return-object p0

    .line 1781
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1782
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v2

    .line 1783
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    if-eqz v2, :cond_0

    .line 1784
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setThreshold(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    goto :goto_0

    .line 1789
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1790
    .restart local v0    # "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v2

    .line 1791
    .restart local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    if-eqz v2, :cond_0

    .line 1792
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setCharging(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    goto :goto_0

    .line 1797
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1798
    .restart local v0    # "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v2

    .line 1799
    .restart local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    if-eqz v2, :cond_0

    .line 1800
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setWifi(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    goto :goto_0

    .line 1805
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    goto :goto_0

    .line 1809
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1810
    .restart local v0    # "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v2

    .line 1811
    .restart local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    if-eqz v2, :cond_0

    .line 1812
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setBluetooth(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    goto :goto_0

    .line 1771
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    .prologue
    .line 1746
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1762
    :cond_0
    :goto_0
    return-object p0

    .line 1747
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1748
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getThreshold()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setThreshold(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 1750
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1751
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getCharging()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setCharging(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 1753
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1754
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getWifi()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setWifi(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 1756
    :cond_4
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1757
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    .line 1759
    :cond_5
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1760
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->getBluetooth()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->setBluetooth(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;

    goto :goto_0
.end method

.method public setBluetooth(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1910
    if-nez p1, :cond_0

    .line 1911
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1913
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasBluetooth:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$5102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1914
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->bluetooth_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$5202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1915
    return-object p0
.end method

.method public setCharging(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1850
    if-nez p1, :cond_0

    .line 1851
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1853
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasCharging:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4502(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1854
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->charging_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4602(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1855
    return-object p0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1892
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1893
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$5002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;J)J

    .line 1894
    return-object p0
.end method

.method public setThreshold(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1829
    if-nez p1, :cond_0

    .line 1830
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1832
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasThreshold:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1833
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->threshold_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4402(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1834
    return-object p0
.end method

.method public setWifi(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .prologue
    .line 1871
    if-nez p1, :cond_0

    .line 1872
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->hasWifi:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Z)Z

    .line 1875
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->wifi_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;->access$4802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1876
    return-object p0
.end method
