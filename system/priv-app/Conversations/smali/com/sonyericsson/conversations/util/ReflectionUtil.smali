.class public Lcom/sonyericsson/conversations/util/ReflectionUtil;
.super Ljava/lang/Object;
.source "ReflectionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createInstance(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "classFullName"    # Ljava/lang/String;
    .param p1, "constructorName"    # Ljava/lang/String;
    .param p3, "construcorParams"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "constructorParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 21
    .local v4, "instance":Ljava/lang/Object;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 22
    .local v0, "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 23
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "classDefinition == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4

    .line 50
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "instance":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 26
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "instance":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 28
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v2, :cond_1

    .line 29
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "constructor == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4

    .line 52
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "instance":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 31
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "instance":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 34
    if-nez v4, :cond_4

    .line 35
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "instance == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4

    .line 54
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "instance":Ljava/lang/Object;
    :catch_2
    move-exception v3

    .line 55
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 38
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "instance":Ljava/lang/Object;
    :cond_2
    :try_start_3
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 40
    .local v1, "constructor":Ljava/lang/reflect/Method;
    if-nez v1, :cond_3

    .line 41
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "constructor == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4

    .line 56
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Method;
    .end local v4    # "instance":Ljava/lang/Object;
    :catch_3
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 43
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "constructor":Ljava/lang/reflect/Method;
    .restart local v4    # "instance":Ljava/lang/Object;
    :cond_3
    const/4 v5, 0x1

    :try_start_4
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    const/4 v5, 0x0

    invoke-virtual {v1, v5, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 46
    if-nez v4, :cond_4

    .line 47
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "instance == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4

    .line 58
    .end local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Method;
    .end local v4    # "instance":Ljava/lang/Object;
    :catch_4
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 61
    .end local v3    # "e":Ljava/lang/InstantiationException;
    .restart local v0    # "classDefinition":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "instance":Ljava/lang/Object;
    :cond_4
    return-object v4
.end method

.method public static final varargs invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "methodInstance"    # Ljava/lang/reflect/Method;
    .param p1, "objectInstance"    # Ljava/lang/Object;
    .param p2, "methodParams"    # [Ljava/lang/Object;

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 70
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
