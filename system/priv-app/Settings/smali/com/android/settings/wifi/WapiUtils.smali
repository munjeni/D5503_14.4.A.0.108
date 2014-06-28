.class public final Lcom/android/settings/wifi/WapiUtils;
.super Ljava/lang/Object;
.source "WapiUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized isWapiEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-class v1, Lcom/android/settings/wifi/WapiUtils;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
