.class final enum Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
.super Ljava/lang/Enum;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SyncWithPhoneStateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

.field public static final enum PHONE_NOT_IN_USE:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

.field public static final enum SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    new-instance v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    .line 333
    new-instance v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    const-string v1, "PHONE_NOT_IN_USE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    .line 320
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    sget-object v1, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->$VALUES:[Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

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
    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    .locals 1

    .prologue
    .line 320
    const-class v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    .locals 1

    .prologue
    .line 320
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->$VALUES:[Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    return-object v0
.end method
