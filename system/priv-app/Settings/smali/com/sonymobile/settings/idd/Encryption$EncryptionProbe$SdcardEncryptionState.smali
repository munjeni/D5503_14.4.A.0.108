.class public final enum Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
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
    name = "SdcardEncryptionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum sdcard_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

.field public static final enum sdcard_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    const-string v1, "sdcard_storage_unencrypted"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    .line 111
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    const-string v1, "sdcard_storage_encrypted"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->$VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    .line 130
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState$1;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput p3, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->index:I

    .line 141
    iput p4, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->value:I

    .line 142
    return-void
.end method

.method public static valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_unencrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    goto :goto_0

    .line 120
    :pswitch_1
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->sdcard_storage_encrypted:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->$VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    invoke-virtual {v0}, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$SdcardEncryptionState;->value:I

    return v0
.end method
