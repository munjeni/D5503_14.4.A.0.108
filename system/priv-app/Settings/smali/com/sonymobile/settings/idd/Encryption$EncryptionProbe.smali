.class public final Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Encryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/idd/Encryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptionProbe"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;,
        Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;,
        Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;,
        Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;


# instance fields
.field private function_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

.field private hasFunction:Z

.field private hasInternalState:Z

.field private hasSdcardState:Z

.field private internalState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

.field private memoizedSerializedSize:I

.field private sdcardState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 479
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;-><init>(Z)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->defaultInstance:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    .line 480
    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption;->internalForceInit()V

    .line 481
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->defaultInstance:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    invoke-direct {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->initFields()V

    .line 482
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->memoizedSerializedSize:I

    .line 15
    invoke-direct {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->initFields()V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/settings/idd/Encryption$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/settings/idd/Encryption$1;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .param p1, "noInit"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 194
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->memoizedSerializedSize:I

    .line 17
    return-void
.end method

.method static synthetic access$302(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .param p1, "x1"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->function_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    return-object p1
.end method

.method static synthetic access$502(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .param p1, "x1"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->internalState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .param p1, "x1"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->sdcardState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->defaultInstance:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    iput-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->function_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    .line 170
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    iput-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->internalState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    .line 171
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    iput-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->sdcardState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    .line 172
    return-void
.end method

.method public static newBuilder()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 1

    .prologue
    .line 283
    # invokes: Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->create()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->access$100()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    .prologue
    .line 286
    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->newBuilder()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;->mergeFrom(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getDefaultInstanceForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->defaultInstance:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;

    return-object v0
.end method

.method public getFunction()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->function_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    return-object v0
.end method

.method public getInternalState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->internalState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    return-object v0
.end method

.method public getSdcardState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->sdcardState_:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 196
    iget v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->memoizedSerializedSize:I

    .line 197
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 213
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 199
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getFunction()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getInternalState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 208
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getSdcardState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 212
    :cond_3
    iput v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->memoizedSerializedSize:I

    move v1, v0

    .line 213
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public hasFunction()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction:Z

    return v0
.end method

.method public hasInternalState()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState:Z

    return v0
.end method

.method public hasSdcardState()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    iget-boolean v1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction:Z

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 175
    :cond_1
    iget-boolean v1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState:Z

    if-eqz v1, :cond_0

    .line 176
    iget-boolean v1, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState:Z

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->newBuilderForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->newBuilder()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->toBuilder()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;
    .locals 1

    .prologue
    .line 288
    invoke-static {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->newBuilder(Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$Builder;

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
    .line 182
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getSerializedSize()I

    .line 183
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasFunction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getFunction()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasInternalState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getInternalState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->hasSdcardState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;->getSdcardState()Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 192
    :cond_2
    return-void
.end method
