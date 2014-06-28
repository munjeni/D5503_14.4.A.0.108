.class final Landroid/app/ContextImpl$44;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 6
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 607
    const-string v2, "fm_receiver"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 609
    .local v0, "b":Landroid/os/IBinder;
    :try_start_0
    const-string v2, "com.stericsson.hardware.fm.FmReceiverImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 613
    :goto_0
    return-object v2

    .line 611
    :catch_0
    move-exception v1

    .line 612
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ContextImpl"

    const-string v3, "Unable to create FM receiver service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const/4 v2, 0x0

    goto :goto_0
.end method
