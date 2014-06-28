.class public Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;
.super Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;
.source "ConsumptionAnalyzer.java"

# interfaces
.implements Lcom/sonymobile/superstamina/analyzer/estimations/Controller;


# static fields
.field private static final LOG_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-StandbyConsumptionAnalyzer"


# instance fields
.field private mBatteryCapacity:D

.field private mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

.field private mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

.field private mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

.field private mLastXssmActivate:Z

.field private mMinimumDrain:D

.field private mNodeListModeOff:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;",
            ">;"
        }
    .end annotation
.end field

.field private mNodeListModeOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOnPower:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Landroid/content/SharedPreferences;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sonymobile/superstamina/analyzer/AnalyzerPlugin;-><init>()V

    .line 70
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-direct {v1, p1, p2}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    .line 71
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "profile":Lcom/android/internal/os/PowerProfile;
    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mBatteryCapacity:D

    .line 73
    const-string v1, "screen.on"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mScreenOnPower:D

    .line 74
    const-string v1, "cpu.idle"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v1

    const-string v3, "radio.on"

    invoke-virtual {v0, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v3

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mMinimumDrain:D

    .line 77
    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mMinimumDrain:D

    const-wide/high16 v3, 0x3ff0000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "default power_profile.xml file is used."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-direct {v1}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 83
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;-><init>(Lcom/sonymobile/superstamina/analyzer/estimations/Controller;Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

    .line 85
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->loadNodeList(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOn:Ljava/util/ArrayList;

    .line 86
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->loadNodeList(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOff:Ljava/util/ArrayList;

    .line 87
    return-void
.end method

.method private loadNodeList(Z)Ljava/util/ArrayList;
    .locals 7
    .param p1, "xssmActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v6, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-virtual {v6, p1}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->loadNodeStringSet(Z)Ljava/util/Set;

    move-result-object v5

    .line 182
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v3, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    if-nez v5, :cond_1

    .line 206
    :cond_0
    return-object v3

    .line 188
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 190
    .local v4, "nodeString":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v4    # "nodeString":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 195
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 196
    .restart local v4    # "nodeString":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-direct {v2}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;-><init>()V

    .line 199
    .local v2, "node":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    :try_start_0
    invoke-virtual {v2, v4}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->set(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private static logIddPowerEstimation(ZII[I)V
    .locals 5
    .param p0, "xssmActive"    # Z
    .param p1, "value"    # I
    .param p2, "batteryValue"    # I
    .param p3, "estimations"    # [I

    .prologue
    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 234
    .local v1, "elapsed":J
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    move-result-object v0

    .line 237
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;
    if-eqz p0, :cond_0

    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->XSSM_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    .line 239
    .local v3, "type":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    :goto_0
    invoke-virtual {v0, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setType(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 240
    invoke-virtual {v0, p1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setMeasuredPowerDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 241
    invoke-virtual {v0, p2}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setMeasuredUsageDrain(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 242
    const/4 v4, 0x0

    aget v4, p3, v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 243
    const/4 v4, 0x1

    aget v4, p3, v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 245
    const/4 v4, 0x6

    aget v4, p3, v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedUsageXssmMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 247
    const/4 v4, 0x7

    aget v4, p3, v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->setEstimatedUsageNormalMode(I)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;

    .line 251
    :try_start_0
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_1
    return-void

    .line 237
    .end local v3    # "type":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    :cond_0
    sget-object v3, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;->NORMAL_MODE:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;

    goto :goto_0

    .line 252
    .restart local v3    # "type":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaPowerUsageEstimation$Type;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private saveNodeList(ZLjava/util/ArrayList;)V
    .locals 6
    .param p1, "xssmActive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 214
    .local v3, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 215
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 216
    .local v1, "item":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "nodeString":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    .end local v1    # "item":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    .end local v2    # "nodeString":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-virtual {v4, p1, v3}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->saveNodeStringSet(ZLjava/util/HashSet;)V

    .line 221
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 277
    const-string v3, "Power usage estimates (mA):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-virtual {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->getEstimates()Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/superstamina/analyzer/estimations/PowerUsageEstimationParameters;->getParameters()[I

    move-result-object v0

    .line 279
    .local v0, "estimates":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  standby with xssm:        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  standby without xssm:     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  battery time with xssm:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x6

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  battery time without xssm:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    const-string v3, "  measured nodes for xssm on:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 290
    .local v2, "node":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v2    # "node":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    :cond_0
    const-string v3, "  measured nodes for xssm off:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOff:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 295
    .restart local v2    # "node":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 297
    .end local v2    # "node":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    :cond_1
    return-void
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBatteryChanged(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "plugged"    # Z

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/superstamina/analyzer/estimations/State;->onBatteryChanged(IZ)V

    .line 268
    return-void
.end method

.method public onScreenOn(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

    invoke-interface {v0, p1}, Lcom/sonymobile/superstamina/analyzer/estimations/State;->onScreenOn(Z)V

    .line 273
    return-void
.end method

.method public onXssmActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mLastXssmActivate:Z

    .line 262
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

    invoke-interface {v0, p1}, Lcom/sonymobile/superstamina/analyzer/estimations/State;->onXssmActivated(Z)V

    .line 263
    return-void
.end method

.method public startMeasure()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;

    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/analyzer/estimations/StateMeasuring;-><init>(Lcom/sonymobile/superstamina/analyzer/estimations/Controller;Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

    .line 103
    return-void
.end method

.method public stopMeasure(Z)V
    .locals 5
    .param p1, "saveCurrent"    # Z

    .prologue
    .line 113
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOn:Ljava/util/ArrayList;

    .line 116
    .local v0, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    :goto_0
    if-eqz p1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->saveNodeList(ZLjava/util/ArrayList;)V

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mLastXssmActivate:Z

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->createNew(ZJ)Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 131
    new-instance v1, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;

    iget-object v2, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/superstamina/analyzer/estimations/StateIdle;-><init>(Lcom/sonymobile/superstamina/analyzer/estimations/Controller;Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V

    iput-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentState:Lcom/sonymobile/superstamina/analyzer/estimations/State;

    .line 132
    return-void

    .line 113
    .end local v0    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOff:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public updateEstimations()V
    .locals 14

    .prologue
    .line 139
    new-instance v0, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;

    iget-wide v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mBatteryCapacity:D

    iget-wide v3, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mScreenOnPower:D

    iget-wide v5, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mMinimumDrain:D

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;-><init>(DDD)V

    .line 141
    .local v0, "calculator":Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->addStandbyValues(Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V

    .line 142
    invoke-virtual {v0}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->calculateDrain()Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;

    move-result-object v7

    .line 146
    .local v7, "currentDrain":Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    if-eqz v1, :cond_0

    iget-object v11, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOn:Ljava/util/ArrayList;

    .line 148
    .local v11, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v12, 0x1

    .line 151
    .local v12, "start":I
    :goto_1
    move v8, v12

    .local v8, "i":I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 152
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    .line 153
    .local v10, "item":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    invoke-virtual {v0, v10}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->addStandbyValues(Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;)V

    .line 151
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 146
    .end local v8    # "i":I
    .end local v10    # "item":Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;
    .end local v11    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    .end local v12    # "start":I
    :cond_0
    iget-object v11, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mNodeListModeOff:Ljava/util/ArrayList;

    goto :goto_0

    .line 148
    .restart local v11    # "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;>;"
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 156
    .restart local v8    # "i":I
    .restart local v12    # "start":I
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->getParameters()[I

    move-result-object v13

    .line 157
    .local v13, "values":[I
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    invoke-virtual {v0, v1, v13}, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator;->calculateEstimate(Z[I)Z

    move-result v9

    .line 160
    .local v9, "isChanged":Z
    if-eqz v9, :cond_3

    .line 161
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-virtual {v1, v13}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->setParameters([I)V

    .line 162
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mEstimateHandler:Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;

    invoke-virtual {v1}, Lcom/sonymobile/superstamina/analyzer/estimations/EstimateHandler;->saveEstimates()V

    .line 171
    iget-object v1, p0, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->mCurrentData:Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;

    iget-boolean v1, v1, Lcom/sonymobile/superstamina/analyzer/estimations/DataNode;->xssmActive:Z

    iget v2, v7, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->standby:I

    iget v3, v7, Lcom/sonymobile/superstamina/analyzer/estimations/Calculator$Drain;->usage:I

    invoke-static {v1, v2, v3, v13}, Lcom/sonymobile/superstamina/analyzer/estimations/ConsumptionAnalyzer;->logIddPowerEstimation(ZII[I)V

    .line 174
    :cond_3
    return-void
.end method
