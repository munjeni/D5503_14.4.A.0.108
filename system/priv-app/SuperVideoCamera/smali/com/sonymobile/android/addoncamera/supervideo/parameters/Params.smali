.class public Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;
.super Ljava/lang/Object;
.source "Params.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params$1;
    }
.end annotation


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "-"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

.field public final ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;",
            ">;"
        }
    .end annotation
.end field

.field public final focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mParamHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<*>;>;"
        }
    .end annotation
.end field

.field public final microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;",
            ">;"
        }
    .end annotation
.end field

.field public final photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;",
            ">;"
        }
    .end annotation
.end field

.field public final steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;",
            ">;"
        }
    .end annotation
.end field

.field public final videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;",
            ">;"
        }
    .end annotation
.end field

.field public final videoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;",
            ">;"
        }
    .end annotation
.end field

.field public final whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)V
    .locals 3
    .param p1, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    .line 53
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->ZERO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 54
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->AUTO:Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 55
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->getCorrespondingVideoSize()Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 56
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->SINGLE:Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 57
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;->FOUR_K_UHD:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 64
    :goto_0
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 65
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->ON:Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 66
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->mParamHolders:Ljava/util/List;

    .line 77
    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->OFF:Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    invoke-direct {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;-><init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    goto :goto_0
.end method

.method private getHolder(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
    .locals 4
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;",
            ")",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<+",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->mParamHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 136
    .local v0, "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<+Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;>;"
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 137
    return-object v0

    .line 140
    .end local v0    # "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<+Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;>;"
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "This key is not supported."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getSharedPreferenceKey(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringMapToWriteInSP()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 252
    .local v3, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->mParamHolders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 253
    .local v0, "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<*>;"
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v5

    invoke-interface {v5}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    move-result-object v2

    .line 254
    .local v2, "key":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->isUsedForSharedPrefs()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->createValueString()Ljava/lang/String;

    move-result-object v4

    .line 256
    .local v4, "value":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->getSharedPreferenceKey(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 262
    .end local v0    # "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<*>;"
    .end local v2    # "key":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private initDefaultParams()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 213
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 216
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 217
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 218
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 219
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 220
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-direct {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 221
    return-void
.end method

.method private initOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "mode"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;
    .param p2, "cameraParams"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {p2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;->getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 200
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {p2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;->getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 203
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 204
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {p2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;->getOptions(Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 205
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;->getOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {p1, p2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;->getOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;Landroid/hardware/Camera$Parameters;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 208
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-static {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;->getOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 209
    return-void
.end method

.method private load(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V
    .locals 8
    .param p1, "sharedPreference"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .prologue
    .line 168
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v3, "keyAndValueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->values()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 170
    .local v2, "key":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;->isUsedForSharedPrefs()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->getSharedPreferenceKey(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;->getParamFromSP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 173
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .end local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "key":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    :cond_1
    invoke-direct {p0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->readStringMapToLoad(Ljava/util/Map;)V

    .line 178
    return-void
.end method

.method private readStringMapToLoad(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->mParamHolders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    .line 267
    .local v0, "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<*>;"
    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    move-result-object v2

    .line 268
    .local v2, "key":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 270
    invoke-virtual {v0, v3}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->parseValueString(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v0    # "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<*>;"
    .end local v2    # "key":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setDefaultParam(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">(",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "holder":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    const/4 v9, 0x0

    .line 224
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v8

    array-length v5, v8

    .line 225
    .local v5, "numOfOptions":I
    if-nez v5, :cond_0

    .line 226
    const/4 v7, 0x0

    .line 241
    :goto_0
    return-object v7

    .line 227
    :cond_0
    const/4 v8, 0x1

    if-ne v5, v8, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v8

    aget-object v7, v8, v9

    .line 229
    .local v7, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {p1, v7}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 232
    .end local v7    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :cond_1
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->getDefault()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v1

    .line 233
    .local v1, "defaultValue":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    .local v0, "arr$":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v6, v0, v3

    .line 234
    .local v6, "option":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v7, v6

    .line 235
    goto :goto_0

    .line 233
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 239
    .end local v6    # "option":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :cond_3
    invoke-virtual {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v8

    aget-object v2, v8, v9

    .line 240
    .local v2, "firstValue":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {p1, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    move-object v7, v2

    .line 241
    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;Z)V
    .locals 1
    .param p1, "applyer"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;
    .param p2, "withoutCommit"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;)V

    .line 81
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;)V

    .line 82
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;)V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;)V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;)V

    .line 85
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;)V

    .line 86
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;)V

    .line 87
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    invoke-interface {p1, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;)V

    .line 89
    if-nez p2, :cond_0

    .line 90
    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamsApplyer;->commit()V

    .line 92
    :cond_0
    return-void
.end method

.method public get(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->getHolder(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/hardware/Camera$Parameters;Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V
    .locals 1
    .param p1, "cameraParams"    # Landroid/hardware/Camera$Parameters;
    .param p2, "sharedPreference"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .prologue
    .line 157
    invoke-direct {p0, p2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->load(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V

    .line 159
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->capturingMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->initOptions(Lcom/sonymobile/android/addoncamera/supervideo/parameters/CapturingMode;Landroid/hardware/Camera$Parameters;)V

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->initDefaultParams()V

    .line 161
    return-void
.end method

.method public options(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .param p1, "key"    # Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->getHolder(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    return-object v0
.end method

.method public save(Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;)V
    .locals 4
    .param p1, "sharedPreference"    # Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->getStringMapToWriteInSP()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 185
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/sonymobile/android/addoncamera/supervideo/SuperVideoParamSharedPrefWrapper;->setParamFromSP(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    sget-object v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params$1;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$parameters$ParamKey:[I

    invoke-interface {p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;->getParamKey()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This key is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->ev:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Ev;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    .line 124
    :goto_0
    return-void

    .line 101
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->whiteBalance:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/WhiteBalance;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 104
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoSize:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoSize;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 107
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->focusMode:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/FocusMode;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 110
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->steadyShot:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/SteadyShot;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 113
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->photoLight:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/PhotoLight;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 116
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_6
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->microphone:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Microphone;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 119
    .restart local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    :pswitch_7
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/Params;->videoAutoReview:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;

    check-cast p1, Lcom/sonymobile/android/addoncamera/supervideo/parameters/VideoAutoReview;

    .end local p1    # "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-virtual {v0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
