.class public Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;
.super Ljava/lang/Object;
.source "ParamValueHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NO_VALUE:Ljava/lang/String; = "NO_VALUE"

.field public static final REGULAR_EXPRESSION:Ljava/lang/String; = "@"

.field private static final TAG:Ljava/lang/String; = "ParameterValueHolder"


# instance fields
.field private mCurrentValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDefaultValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mOptions:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    .local p1, "currentValue":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 41
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mDefaultValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 42
    return-void
.end method

.method private deserialize(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 6
    .param p1, "valueStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    const/4 v3, 0x0

    .line 155
    const-string v4, "NO_VALUE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-object v3

    .line 158
    :cond_1
    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "token":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 162
    const/4 v3, 0x0

    .line 164
    .local v3, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 165
    .local v1, "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v1, v4}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    .end local v1    # "param":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    .line 170
    :catch_1
    move-exception v4

    goto :goto_0

    .line 168
    :catch_2
    move-exception v4

    goto :goto_0

    .line 166
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method private serialize(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    .local p1, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    if-nez p1, :cond_0

    .line 137
    const-string v0, "NO_VALUE"

    .line 139
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public createValueString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 95
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->serialize(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "valueStr":Ljava/lang/String;
    return-object v1
.end method

.method public get()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    return-object v0
.end method

.method public getDefault()Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mDefaultValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    return-object v0
.end method

.method public getOptions()[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    return-object v0
.end method

.method public parseValueString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->deserialize(Ljava/lang/String;)Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    move-result-object v0

    .line 118
    .local v0, "currentValue":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0, v0}, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V

    goto :goto_0
.end method

.method public set(Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    .local p1, "value":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "TT;"
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mCurrentValue:Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 62
    return-void
.end method

.method public setOptions([Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;, "Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder<TT;>;"
    .local p1, "options":[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;, "[TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    iput-object v0, p0, Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValueHolder;->mOptions:[Lcom/sonymobile/android/addoncamera/supervideo/parameters/ParamValue;

    .line 46
    return-void
.end method
