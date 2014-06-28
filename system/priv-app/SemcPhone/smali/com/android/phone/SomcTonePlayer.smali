.class public Lcom/android/phone/SomcTonePlayer;
.super Ljava/lang/Object;
.source "SomcTonePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;,
        Lcom/android/phone/SomcTonePlayer$Tone;
    }
.end annotation


# static fields
.field private static final sToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStreamType:I

.field private final mTone:Lcom/android/phone/SomcTonePlayer$Tone;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

.field private final mToneGeneratorLock:Ljava/lang/Object;

.field private final mVolume:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "volume"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Lcom/android/phone/SomcTonePlayer$Tone;

    invoke-direct {v0}, Lcom/android/phone/SomcTonePlayer$Tone;-><init>()V

    iput-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mTone:Lcom/android/phone/SomcTonePlayer$Tone;

    .line 71
    iput p1, p0, Lcom/android/phone/SomcTonePlayer;->mStreamType:I

    .line 72
    iput p2, p0, Lcom/android/phone/SomcTonePlayer;->mVolume:I

    .line 74
    new-instance v0, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;-><init>(Lcom/android/phone/SomcTonePlayer;)V

    iput-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    .line 75
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    monitor-enter v1

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->isHandlerCreated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->sendMessage(ILjava/lang/Object;)V

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/phone/SomcTonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTonePlayer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/SomcTonePlayer;->createToneGenerator()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcTonePlayer;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTonePlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcTonePlayer;->startTonePlaying(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SomcTonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTonePlayer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/SomcTonePlayer;->stopTonePlaying()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SomcTonePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcTonePlayer;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/phone/SomcTonePlayer;->releaseToneGenerator()V

    return-void
.end method

.method private createToneGenerator()V
    .locals 6

    .prologue
    .line 89
    iget-object v3, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .local v1, "newToneGenerator":Landroid/media/ToneGenerator;
    if-nez v1, :cond_0

    .line 93
    :try_start_1
    new-instance v1, Landroid/media/ToneGenerator;

    .end local v1    # "newToneGenerator":Landroid/media/ToneGenerator;
    iget v2, p0, Lcom/android/phone/SomcTonePlayer;->mStreamType:I

    iget v4, p0, Lcom/android/phone/SomcTonePlayer;->mVolume:I

    invoke-direct {v1, v2, v4}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .restart local v1    # "newToneGenerator":Landroid/media/ToneGenerator;
    :goto_0
    :try_start_2
    iput-object v1, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 100
    :cond_0
    monitor-exit v3

    .line 101
    return-void

    .line 94
    .end local v1    # "newToneGenerator":Landroid/media/ToneGenerator;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "SomcTonePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught while creating local tone generator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, 0x0

    .restart local v1    # "newToneGenerator":Landroid/media/ToneGenerator;
    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "newToneGenerator":Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public static isValidTone(C)Z
    .locals 2
    .param p0, "tone"    # C

    .prologue
    .line 128
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private releaseToneGenerator()V
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 109
    :cond_0
    monitor-exit v1

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startTonePlaying(II)V
    .locals 4
    .param p1, "tone"    # I
    .param p2, "durationMs"    # I

    .prologue
    .line 182
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcTonePlayer"

    const-string v1, "SomcTonePlayer : start playing tone..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 186
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 187
    const-string v0, "SomcTonePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTone: mToneGenerator == null, tone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    monitor-exit v1

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0, p1, p2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 192
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private stopTonePlaying()V
    .locals 3

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcTonePlayer"

    const-string v1, "SomcTonePlayer : stop playing tone..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_2

    .line 200
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "SomcTonePlayer"

    const-string v2, "stopTone: mToneGenerator == null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    monitor-exit v1

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 204
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public playTone(I)V
    .locals 1
    .param p1, "tone"    # I

    .prologue
    .line 162
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/phone/SomcTonePlayer;->playTone(II)V

    .line 163
    return-void
.end method

.method public playTone(II)V
    .locals 3
    .param p1, "tone"    # I
    .param p2, "durationMs"    # I

    .prologue
    .line 173
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "SomcTonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTone, tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mTone:Lcom/android/phone/SomcTonePlayer$Tone;

    iput p1, v0, Lcom/android/phone/SomcTonePlayer$Tone;->tone:I

    .line 177
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mTone:Lcom/android/phone/SomcTonePlayer$Tone;

    iput p2, v0, Lcom/android/phone/SomcTonePlayer$Tone;->duration:I

    .line 178
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/phone/SomcTonePlayer;->mTone:Lcom/android/phone/SomcTonePlayer$Tone;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->sendMessage(ILjava/lang/Object;)V

    .line 179
    return-void
.end method

.method public playToneByChar(CI)V
    .locals 3
    .param p1, "toneChar"    # C
    .param p2, "durationMs"    # I

    .prologue
    .line 149
    invoke-static {p1}, Lcom/android/phone/SomcTonePlayer;->isValidTone(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/android/phone/SomcTonePlayer;->sToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/SomcTonePlayer;->playTone(II)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v0, "SomcTonePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTone: sToneMap does not contain tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "SomcTonePlayer"

    const-string v1, "release SomcTonePlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->sendMessage(ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->sendMessage(ILjava/lang/Object;)V

    .line 118
    return-void
.end method

.method public stopTone()V
    .locals 3

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 122
    const-string v0, "SomcTonePlayer"

    const-string v1, "Stop tone playing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcTonePlayer;->mToneGeneratorEventThread:Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/SomcTonePlayer$ToneGeneratorEventThread;->sendMessage(ILjava/lang/Object;)V

    .line 125
    return-void
.end method
