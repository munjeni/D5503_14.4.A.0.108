.class public final enum Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
.super Ljava/lang/Enum;
.source "StaminaMode.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

.field public static final enum DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

.field public static final enum ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;",
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

    .line 1475
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1476
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1473
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->$VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    .line 1495
    new-instance v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State$1;

    invoke-direct {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1505
    iput p3, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->index:I

    .line 1506
    iput p4, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->value:I

    .line 1507
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1492
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1483
    packed-switch p0, :pswitch_data_0

    .line 1486
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1484
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    goto :goto_0

    .line 1485
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    goto :goto_0

    .line 1483
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1473
    const-class v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;
    .locals 1

    .prologue
    .line 1473
    sget-object v0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->$VALUES:[Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1480
    iget v0, p0, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaSoftDisable$State;->value:I

    return v0
.end method
