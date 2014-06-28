.class public final enum Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
.super Ljava/lang/Enum;
.source "Encryption.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InternalEncryptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum internal_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

.field public static final enum internal_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    const-string v1, "internal_storage_unencrypted"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    .line 72
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    const-string v1, "internal_storage_encrypted"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->$VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    .line 91
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState$1;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->index:I

    .line 102
    iput p4, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->value:I

    .line 103
    return-void
.end method

.method public static valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 79
    packed-switch p0, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    goto :goto_0

    .line 81
    :pswitch_1
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->internal_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->$VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    invoke-virtual {v0}, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$InternalEncryptionState;->value:I

    return v0
.end method
