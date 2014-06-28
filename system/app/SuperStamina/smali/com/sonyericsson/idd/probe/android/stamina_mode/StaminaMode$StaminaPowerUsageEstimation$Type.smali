.class public final enum Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
.super Ljava/lang/Enum;
.source "StaminaMode.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

.field public static final enum NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

.field public static final enum XSSM_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3267
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    const-string v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 3268
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    const-string v1, "XSSM_MODE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->XSSM_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 3265
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->XSSM_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->$VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 3287
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type$1;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3297
    iput p3, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->index:I

    .line 3298
    iput p4, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->value:I

    .line 3299
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3284
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 3275
    packed-switch p0, :pswitch_data_0

    .line 3278
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3276
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    goto :goto_0

    .line 3277
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->XSSM_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    goto :goto_0

    .line 3275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3265
    const-class v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    .locals 1

    .prologue
    .line 3265
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->$VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3272
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->value:I

    return v0
.end method
