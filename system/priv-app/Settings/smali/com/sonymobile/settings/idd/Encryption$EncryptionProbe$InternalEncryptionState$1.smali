.class final Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState$1;
.super Ljava/lang/Object;
.source "Encryption.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState$1;->findValueByNumber(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 94
    invoke-static {p1}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    move-result-object v0

    return-object v0
.end method
