.class final Lcom/sonymobile/gahelper/GaHelper$1;
.super Ljava/lang/Object;
.source "GaHelper.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ExceptionParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/gahelper/GaHelper;->enableDetailedExceptionTracking(Lcom/google/analytics/tracking/android/Tracker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p1, "threadName"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .local v0, "description":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v1, "T:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/sonymobile/gahelper/GaHelper;->createThrowableDescription(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;
    invoke-static {p2, v2}, Lcom/sonymobile/gahelper/GaHelper;->access$000(Ljava/lang/Throwable;I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 199
    :catch_0
    move-exception v1

    goto :goto_0
.end method
