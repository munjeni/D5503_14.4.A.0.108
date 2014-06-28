.class public Lcom/android/phone/RejectMsgLoader;
.super Landroid/content/AsyncTaskLoader;
.source "RejectMsgLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/phone/ItemWithIcon;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/phone/RejectMsgLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgsWithDynamicalInfoList()Ljava/util/List;

    move-result-object v3

    .line 28
    .local v3, "rejectMsgList":Ljava/util/List;
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgs()Ljava/util/HashMap;

    move-result-object v1

    .line 30
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Lcom/android/phone/ItemWithIcon;

    const v5, 0x7f0200fb

    invoke-direct {v4, v2, v5}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public onStartLoading()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 39
    return-void
.end method
