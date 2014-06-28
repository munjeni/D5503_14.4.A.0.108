.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3061
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$7400(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3055
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7500()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 3102
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3103
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 3106
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 3

    .prologue
    .line 3064
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;-><init>()V

    .line 3065
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    .line 3066
    return-object v0
.end method


# virtual methods
.method public addAllWhiteListItem(Ljava/lang/Iterable;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;",
            ">;)",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;"
        }
    .end annotation

    .prologue
    .line 3207
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;>;"
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3208
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Ljava/util/List;)Ljava/util/List;

    .line 3210
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 3211
    return-object p0
.end method

.method public addWhiteListItem(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Ljava/util/List;)Ljava/util/List;

    .line 3202
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3203
    return-object p0
.end method

.method public addWhiteListItem(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .prologue
    .line 3189
    if-nez p1, :cond_0

    .line 3190
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3192
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3193
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Ljava/util/List;)Ljava/util/List;

    .line 3195
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3196
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3095
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 3097
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    .locals 3

    .prologue
    .line 3110
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    if-nez v1, :cond_0

    .line 3111
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3114
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 3115
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    iget-object v2, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Ljava/util/List;)Ljava/util/List;

    .line 3118
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    .line 3119
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    .line 3120
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2

    .prologue
    .line 3074
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    if-nez v0, :cond_0

    .line 3075
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3078
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    .line 3079
    return-object p0
.end method

.method public clearElapsedRealtime()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 3

    .prologue
    .line 3231
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Z)Z

    .line 3232
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    const-wide/16 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->elapsedRealtime_:J
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;J)J

    .line 3233
    return-object p0
.end method

.method public clearWhiteListItem()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2

    .prologue
    .line 3214
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Ljava/util/List;)Ljava/util/List;

    .line 3215
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2

    .prologue
    .line 3083
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

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
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    .locals 1

    .prologue
    .line 3087
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 3223
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->getElapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWhiteListItem(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 3175
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->getWhiteListItem(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListItemCount()I
    .locals 1

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->getWhiteListItemCount()I

    move-result v0

    return v0
.end method

.method public getWhiteListItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3169
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasElapsedRealtime()Z
    .locals 1

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->hasElapsedRealtime()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 3055
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;
    .locals 1

    .prologue
    .line 3070
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->isInitialized()Z

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
    .line 3055
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 3055
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

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
    .line 3055
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3142
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 3143
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 3147
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3148
    :sswitch_0
    return-object p0

    .line 3153
    :sswitch_1
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    .line 3154
    .local v0, "subBuilder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 3155
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->addWhiteListItem(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    goto :goto_0

    .line 3159
    .end local v0    # "subBuilder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    goto :goto_0

    .line 3143
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    .prologue
    .line 3124
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 3134
    :cond_0
    :goto_0
    return-object p0

    .line 3125
    :cond_1
    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3126
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3127
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7702(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Ljava/util/List;)Ljava/util/List;

    .line 3129
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3131
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->hasElapsedRealtime()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3132
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->getElapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;

    goto :goto_0
.end method

.method public setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->hasElapsedRealtime:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7802(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;Z)Z

    .line 3227
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->elapsedRealtime_:J
    invoke-static {v0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7902(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;J)J

    .line 3228
    return-object p0
.end method

.method public setWhiteListItem(ILcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .prologue
    .line 3185
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3186
    return-object p0
.end method

.method public setWhiteListItem(ILcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .prologue
    .line 3178
    if-nez p2, :cond_0

    .line 3179
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3181
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;

    # getter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->whiteListItem_:Ljava/util/List;
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;->access$7700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaWhitelist;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3182
    return-object p0
.end method
