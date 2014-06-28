.class public abstract enum Lcom/android/phone/SomcCallRecorder$RecordingMode;
.super Ljava/lang/Enum;
.source "SomcCallRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "RecordingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/SomcCallRecorder$RecordingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/SomcCallRecorder$RecordingMode;

.field public static final enum INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

.field public static final enum NORMAL_REC_WITH_VOICE_CALL:Lcom/android/phone/SomcCallRecorder$RecordingMode;

.field public static final enum SECURE_REC_WITH_DOWNLINK:Lcom/android/phone/SomcCallRecorder$RecordingMode;

.field public static final enum SECURE_REC_WITH_MIC:Lcom/android/phone/SomcCallRecorder$RecordingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/android/phone/SomcCallRecorder$RecordingMode$1;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SomcCallRecorder$RecordingMode$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 64
    new-instance v0, Lcom/android/phone/SomcCallRecorder$RecordingMode$2;

    const-string v1, "SECURE_REC_WITH_MIC"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/SomcCallRecorder$RecordingMode$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_MIC:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 70
    new-instance v0, Lcom/android/phone/SomcCallRecorder$RecordingMode$3;

    const-string v1, "SECURE_REC_WITH_DOWNLINK"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/SomcCallRecorder$RecordingMode$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_DOWNLINK:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 76
    new-instance v0, Lcom/android/phone/SomcCallRecorder$RecordingMode$4;

    const-string v1, "NORMAL_REC_WITH_VOICE_CALL"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/SomcCallRecorder$RecordingMode$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->NORMAL_REC_WITH_VOICE_CALL:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/SomcCallRecorder$RecordingMode;

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->INIT:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_MIC:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->SECURE_REC_WITH_DOWNLINK:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/SomcCallRecorder$RecordingMode;->NORMAL_REC_WITH_VOICE_CALL:Lcom/android/phone/SomcCallRecorder$RecordingMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->$VALUES:[Lcom/android/phone/SomcCallRecorder$RecordingMode;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/phone/SomcCallRecorder$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/android/phone/SomcCallRecorder$1;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcCallRecorder$RecordingMode;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/SomcCallRecorder$RecordingMode;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/SomcCallRecorder$RecordingMode;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/phone/SomcCallRecorder$RecordingMode;->$VALUES:[Lcom/android/phone/SomcCallRecorder$RecordingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/SomcCallRecorder$RecordingMode;

    return-object v0
.end method


# virtual methods
.method protected abstract getAudioSourceType()I
.end method
