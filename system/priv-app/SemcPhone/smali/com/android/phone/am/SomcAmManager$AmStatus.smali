.class public final enum Lcom/android/phone/am/SomcAmManager$AmStatus;
.super Ljava/lang/Enum;
.source "SomcAmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/am/SomcAmManager$AmStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/am/SomcAmManager$AmStatus;

.field public static final enum IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

.field public static final enum PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

.field public static final enum RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

.field public static final enum SAVE_RECORD_DATA:Lcom/android/phone/am/SomcAmManager$AmStatus;

.field public static final enum WAIT_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    const-string v1, "IDLE_ANSWERING_MACHINE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/am/SomcAmManager$AmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 79
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    const-string v1, "WAIT_ACTIVATION"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/am/SomcAmManager$AmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->WAIT_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 82
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    const-string v1, "PLAY_GREETING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/am/SomcAmManager$AmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 85
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    const-string v1, "RECORD_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/am/SomcAmManager$AmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 88
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    const-string v1, "SAVE_RECORD_DATA"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/am/SomcAmManager$AmStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->SAVE_RECORD_DATA:Lcom/android/phone/am/SomcAmManager$AmStatus;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/am/SomcAmManager$AmStatus;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->IDLE_ANSWERING_MACHINE:Lcom/android/phone/am/SomcAmManager$AmStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->WAIT_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->PLAY_GREETING:Lcom/android/phone/am/SomcAmManager$AmStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->RECORD_CALL:Lcom/android/phone/am/SomcAmManager$AmStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmStatus;->SAVE_RECORD_DATA:Lcom/android/phone/am/SomcAmManager$AmStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->$VALUES:[Lcom/android/phone/am/SomcAmManager$AmStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/am/SomcAmManager$AmStatus;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/am/SomcAmManager$AmStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/am/SomcAmManager$AmStatus;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmStatus;->$VALUES:[Lcom/android/phone/am/SomcAmManager$AmStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/am/SomcAmManager$AmStatus;

    return-object v0
.end method
