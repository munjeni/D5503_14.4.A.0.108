.class public final Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StaminaMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2755
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$6700(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2749
    invoke-direct {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 1

    .prologue
    .line 2749
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2796
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2797
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2800
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 3

    .prologue
    .line 2758
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;-><init>()V

    .line 2759
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    new-instance v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v1, v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .line 2760
    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1

    .prologue
    .line 2788
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2789
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2791
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 3

    .prologue
    .line 2804
    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    if-nez v1, :cond_0

    .line 2805
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "build() has already been called on this Builder."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2808
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .line 2809
    .local v0, "returnMe":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .line 2810
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 2

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    if-nez v0, :cond_0

    .line 2769
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call clear() after build()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2772
    :cond_0
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;-><init>(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$1;)V

    iput-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .line 2773
    return-object p0
.end method

.method public clearPackageNameFromUid()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 2

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Z)Z

    .line 2894
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->packageNameFromUid_:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2895
    return-object p0
.end method

.method public clearType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 2

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Z)Z

    .line 2873
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->MANUAL:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    .line 2874
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 2

    .prologue
    .line 2777
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->create()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

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
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->clone()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1

    .prologue
    .line 2781
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameFromUid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    .locals 1

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-result-object v0

    return-object v0
.end method

.method public hasPackageNameFromUid()Z
    .locals 1

    .prologue
    .line 2879
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid()Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 2749
    invoke-virtual {p0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetResult()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;
    .locals 1

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->isInitialized()Z

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
    .line 2749
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/GeneratedMessageLite;

    .prologue
    .line 2749
    check-cast p1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .end local p1    # "x0":Lcom/google/protobuf/GeneratedMessageLite;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

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
    .line 2749
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2830
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 2834
    invoke-virtual {p0, p1, p2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2835
    :sswitch_0
    return-object p0

    .line 2840
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2841
    .local v0, "rawValue":I
    invoke-static {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;->valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-result-object v2

    .line 2842
    .local v2, "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    if-eqz v2, :cond_0

    .line 2843
    invoke-virtual {p0, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    goto :goto_0

    .line 2848
    .end local v0    # "rawValue":I
    .end local v2    # "value":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setPackageNameFromUid(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    goto :goto_0

    .line 2830
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 1
    .param p1, "other"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    .prologue
    .line 2814
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getDefaultInstance()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-object p0

    .line 2815
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2816
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getType()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    .line 2818
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->getPackageNameFromUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->setPackageNameFromUid(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;

    goto :goto_0
.end method

.method public setPackageNameFromUid(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2885
    if-nez p1, :cond_0

    .line 2886
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2888
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasPackageNameFromUid:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7202(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Z)Z

    .line 2889
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->packageNameFromUid_:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7302(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 2890
    return-object p0
.end method

.method public setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;
    .locals 2
    .param p1, "value"    # Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    .prologue
    .line 2864
    if-nez p1, :cond_0

    .line 2865
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2867
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    const/4 v1, 0x1

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->hasType:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7002(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Z)Z

    .line 2868
    iget-object v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Builder;->result:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;

    # setter for: Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->type_:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;
    invoke-static {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;->access$7102(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem;Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$WhiteListItem$Type;

    .line 2869
    return-object p0
.end method
