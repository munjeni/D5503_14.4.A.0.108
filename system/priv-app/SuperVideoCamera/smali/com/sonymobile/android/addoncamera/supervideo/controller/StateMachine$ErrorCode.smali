.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

.field public static final enum ERROR_ON_START_PREVIEW:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    const-string v1, "ERROR_ON_START_PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;->ERROR_ON_START_PREVIEW:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    .line 167
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;->ERROR_ON_START_PREVIEW:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

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
    .line 167
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$ErrorCode;

    return-object v0
.end method