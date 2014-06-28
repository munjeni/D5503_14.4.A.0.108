.class public final enum Lcom/android/phone/am/SomcAmManager$AmAvailability;
.super Ljava/lang/Enum;
.source "SomcAmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/am/SomcAmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmAvailability"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/am/SomcAmManager$AmAvailability;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/am/SomcAmManager$AmAvailability;

.field public static final enum AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

.field public static final enum NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

.field public static final enum NOW_IN_USE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

.field public static final enum ONLY_MANUAL_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmAvailability;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/am/SomcAmManager$AmAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    .line 98
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/am/SomcAmManager$AmAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    .line 101
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;

    const-string v1, "NOW_IN_USE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/am/SomcAmManager$AmAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOW_IN_USE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    .line 104
    new-instance v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;

    const-string v1, "ONLY_MANUAL_ACTIVATION"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/am/SomcAmManager$AmAvailability;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->ONLY_MANUAL_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/am/SomcAmManager$AmAvailability;

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOW_IN_USE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->ONLY_MANUAL_ACTIVATION:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->$VALUES:[Lcom/android/phone/am/SomcAmManager$AmAvailability;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/am/SomcAmManager$AmAvailability;
    .locals 1

    .prologue
    .line 93
    const-class v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/am/SomcAmManager$AmAvailability;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/phone/am/SomcAmManager$AmAvailability;->$VALUES:[Lcom/android/phone/am/SomcAmManager$AmAvailability;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/am/SomcAmManager$AmAvailability;

    return-object v0
.end method
