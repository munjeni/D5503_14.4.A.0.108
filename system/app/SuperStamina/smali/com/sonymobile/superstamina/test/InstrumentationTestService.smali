.class public Lcom/sonymobile/superstamina/test/InstrumentationTestService;
.super Landroid/app/Service;
.source "InstrumentationTestService.java"


# static fields
.field private static final INSTRUMENTATION_TEST:Ljava/lang/String; = "INSTRUMENTATION_TEST"

.field private static final USER:Ljava/lang/String; = "user"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 35
    const-string v4, "INSTRUMENTATION_TEST"

    const-string v5, "InstrumentationTestService started"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 39
    :try_start_0
    const-class v4, Lcom/sonymobile/superstamina/test/InstrumentationTestService;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 42
    .local v2, "loader":Ljava/lang/ClassLoader;
    :try_start_1
    const-string v4, "INSTRUMENTATION_TEST"

    const-string v5, "Loading tests"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v4, "com.sonymobile.superstamina.test.TestLoader"

    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 44
    .local v0, "aClass":Ljava/lang/Class;
    const-string v4, "runAllTests"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/app/Application;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/framework/TestResult;

    .line 46
    .local v3, "result":Ljunit/framework/TestResult;
    const-string v5, "INSTRUMENTATION_TEST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tests completed "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "succesfully"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    .end local v3    # "result":Ljunit/framework/TestResult;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 60
    const/4 v4, 0x2

    return v4

    .line 46
    .restart local v0    # "aClass":Ljava/lang/Class;
    .restart local v2    # "loader":Ljava/lang/ClassLoader;
    .restart local v3    # "result":Ljunit/framework/TestResult;
    :cond_0
    :try_start_2
    const-string v4, "with errors"
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 48
    .end local v0    # "aClass":Ljava/lang/Class;
    .end local v3    # "result":Ljunit/framework/TestResult;
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string v4, "INSTRUMENTATION_TEST"

    const-string v5, "No TestLoader found - ignoring"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 52
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "loader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "INSTRUMENTATION_TEST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occured: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v4, "INSTRUMENTATION_TEST"

    const-string v5, "Not a test build - ignoring"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
