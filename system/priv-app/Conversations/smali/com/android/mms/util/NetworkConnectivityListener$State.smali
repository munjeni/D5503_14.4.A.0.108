.class public final enum Lcom/android/mms/util/NetworkConnectivityListener$State;
.super Ljava/lang/Enum;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/util/NetworkConnectivityListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/util/NetworkConnectivityListener$State;

.field public static final enum CONNECTED:Lcom/android/mms/util/NetworkConnectivityListener$State;

.field public static final enum NOT_CONNECTED:Lcom/android/mms/util/NetworkConnectivityListener$State;

.field public static final enum UNKNOWN:Lcom/android/mms/util/NetworkConnectivityListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/android/mms/util/NetworkConnectivityListener$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/util/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/mms/util/NetworkConnectivityListener$State;

    .line 116
    new-instance v0, Lcom/android/mms/util/NetworkConnectivityListener$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/util/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/mms/util/NetworkConnectivityListener$State;

    .line 126
    new-instance v0, Lcom/android/mms/util/NetworkConnectivityListener$State;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/util/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/util/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/mms/util/NetworkConnectivityListener$State;

    .line 112
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/util/NetworkConnectivityListener$State;

    sget-object v1, Lcom/android/mms/util/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/mms/util/NetworkConnectivityListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/util/NetworkConnectivityListener$State;->CONNECTED:Lcom/android/mms/util/NetworkConnectivityListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/util/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/android/mms/util/NetworkConnectivityListener$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/util/NetworkConnectivityListener$State;->$VALUES:[Lcom/android/mms/util/NetworkConnectivityListener$State;

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
    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/util/NetworkConnectivityListener$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 112
    const-class v0, Lcom/android/mms/util/NetworkConnectivityListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/util/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/mms/util/NetworkConnectivityListener$State;->$VALUES:[Lcom/android/mms/util/NetworkConnectivityListener$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/util/NetworkConnectivityListener$State;

    return-object v0
.end method
