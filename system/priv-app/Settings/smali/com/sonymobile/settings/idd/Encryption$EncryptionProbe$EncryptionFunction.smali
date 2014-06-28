.class public final enum Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
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
    name = "EncryptionFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

.field public static final enum encryption_completed:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum start_encryption_internal:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

.field public static final enum start_encryption_internal_and_sdcard:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    const-string v1, "start_encryption_internal"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    .line 31
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    const-string v1, "start_encryption_internal_and_sdcard"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal_and_sdcard:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    .line 32
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    const-string v1, "encryption_completed"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->encryption_completed:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal_and_sdcard:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->encryption_completed:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->$VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    .line 52
    new-instance v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction$1;

    invoke-direct {v0}, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction$1;-><init>()V

    sput-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->index:I

    .line 63
    iput p4, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->value:I

    .line 64
    return-void
.end method

.method public static valueOf(I)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 39
    packed-switch p0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    goto :goto_0

    .line 41
    :pswitch_1
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->start_encryption_internal_and_sdcard:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->encryption_completed:Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->$VALUES:[Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    invoke-virtual {v0}, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonymobile/settings/idd/Encryption$EncryptionProbe$EncryptionFunction;->value:I

    return v0
.end method
