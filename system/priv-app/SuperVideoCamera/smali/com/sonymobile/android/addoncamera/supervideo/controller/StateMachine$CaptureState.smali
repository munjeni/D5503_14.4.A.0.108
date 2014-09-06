.class public final enum Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
.super Ljava/lang/Enum;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CaptureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_CAPTURE_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_NONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_RESUME:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_STANDBY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_STOP_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_UI_COMPONENT_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_VIDEO_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_WARNING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_ZOOMING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

.field public static final enum STATE_ZOOMING_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;


# instance fields
.field final mCanApplicationBeFinished:Z

.field final mCanHandleAsynchronizedTask:Z

.field final mIsRecording:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v1, "STATE_NONE"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 26
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_INITIALIZE"

    move v5, v9

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 28
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_RESUME"

    move v5, v10

    move v6, v2

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 30
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_STANDBY"

    move v5, v11

    move v6, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 32
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_VIDEO_RECORDING"

    move v5, v12

    move v6, v9

    move v7, v2

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 34
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_CAPTURE_WHILE_RECORDING"

    const/4 v5, 0x5

    move v6, v9

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_CAPTURE_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 36
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_STOP_RECORDING"

    const/4 v5, 0x6

    move v6, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STOP_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 38
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_UI_COMPONENT_DISPLAY"

    const/4 v5, 0x7

    move v6, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_UI_COMPONENT_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 40
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_ZOOMING"

    const/16 v5, 0x8

    move v6, v2

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_ZOOMING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 42
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_ZOOMING_WHILE_RECORDING"

    const/16 v5, 0x9

    move v6, v2

    move v7, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_ZOOMING_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 44
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_PAUSE"

    const/16 v5, 0xa

    move v6, v2

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 46
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_WARNING"

    const/16 v5, 0xb

    move v6, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 48
    new-instance v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    const-string v4, "STATE_FINALIZE"

    const/16 v5, 0xc

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;-><init>(Ljava/lang/String;IZZZ)V

    sput-object v3, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    .line 23
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_NONE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_INITIALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_RESUME:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STANDBY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_VIDEO_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_CAPTURE_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_STOP_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_UI_COMPONENT_DISPLAY:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_ZOOMING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_ZOOMING_WHILE_RECORDING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_PAUSE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_WARNING:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->STATE_FINALIZE:Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0
    .param p3, "canHandleLazyInitializationTask"    # Z
    .param p4, "canBeFinished"    # Z
    .param p5, "isRecording"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput-boolean p3, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    .line 66
    iput-boolean p4, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    .line 67
    iput-boolean p5, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->mIsRecording:Z

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->$VALUES:[Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;

    return-object v0
.end method


# virtual methods
.method public canApplicationBeFinished()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->mCanApplicationBeFinished:Z

    return v0
.end method

.method public canHandleAsynchronizedTask()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->mCanHandleAsynchronizedTask:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/controller/StateMachine$CaptureState;->mIsRecording:Z

    return v0
.end method
