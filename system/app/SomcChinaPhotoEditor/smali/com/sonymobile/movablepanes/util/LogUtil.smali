.class public Lcom/sonymobile/movablepanes/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final LOG_EVENTS:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/movablepanes/util/LogUtil;->reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public static reportError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method
