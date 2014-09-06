.class public Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;
.super Ljava/lang/Object;
.source "ParamManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentParams:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

.field private final mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;",
            ">;"
        }
    .end annotation
.end field

.field private final mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V
    .locals 6
    .param p1, "sharedPrefs"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 38
    .local v3, "mode":Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    new-instance v5, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    invoke-direct {v5, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    .end local v3    # "mode":Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .line 42
    return-void
.end method


# virtual methods
.method public changeCapturingMode(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mCurrentParams:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mCurrentParams:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    goto :goto_0
.end method

.method public getCurrentParams()Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mCurrentParams:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    return-object v0
.end method

.method public initialize(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .param p1, "cameraParameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    .line 51
    .local v1, "params":Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    invoke-virtual {v1, p1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->init(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V

    goto :goto_0

    .line 55
    .end local v1    # "params":Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->HIGH_FRAME_RATE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    iget-object v2, v2, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->EDIT:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 56
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mCurrentParams:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    .line 102
    return-void
.end method

.method public suspend()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mParamsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    .line 86
    .local v1, "params":Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mSharedPrefs:Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    invoke-virtual {v1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->save(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V

    goto :goto_0

    .line 89
    .end local v1    # "params":Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamManager;->mCurrentParams:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    sget-object v3, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-virtual {v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 90
    return-void
.end method
