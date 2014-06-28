.class public final enum Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
.super Ljava/lang/Enum;
.source "StaminaMode.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

.field public static final enum LBWIFI:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

.field public static final enum POWERSAVER:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

.field public static final enum XSSM:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;",
            ">;"
        }
    .end annotation
.end field


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

    .line 1954
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    const-string v1, "XSSM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->XSSM:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .line 1955
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    const-string v1, "LBWIFI"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->LBWIFI:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .line 1956
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    const-string v1, "POWERSAVER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->POWERSAVER:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .line 1952
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->XSSM:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->LBWIFI:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->POWERSAVER:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->$VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    .line 1976
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type$1;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1985
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1986
    iput p3, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->index:I

    .line 1987
    iput p4, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->value:I

    .line 1988
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1973
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1963
    packed-switch p0, :pswitch_data_0

    .line 1967
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1964
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->XSSM:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    goto :goto_0

    .line 1965
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->LBWIFI:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    goto :goto_0

    .line 1966
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->POWERSAVER:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    goto :goto_0

    .line 1963
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1952
    const-class v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;
    .locals 1

    .prologue
    .line 1952
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->$VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    invoke-virtual {v0}, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1960
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaReminder$Type;->value:I

    return v0
.end method
