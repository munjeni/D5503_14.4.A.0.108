.class public Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "TextTemplateListLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/sonymobile/template/sms/TextTemplate;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    invoke-virtual {p0}, Landroid/content/Loader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 44
    :cond_0
    move-object v0, p1

    .line 45
    .local v0, "oldTemplates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Landroid/content/Loader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 56
    :cond_1
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 59
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 31
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonymobile/template/sms/TextTemplateManager;->loadAllTexTemplate()Ljava/util/ArrayList;

    move-result-object v1

    .line 33
    .local v1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    return-object v1
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 98
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/content/Loader;->onReset()V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->onStopLoading()V

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    .line 116
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->deliverResult(Ljava/util/List;)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListLoader;->mTemplates:Ljava/util/List;

    if-nez v0, :cond_2

    .line 75
    :cond_1
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 77
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 86
    return-void
.end method
