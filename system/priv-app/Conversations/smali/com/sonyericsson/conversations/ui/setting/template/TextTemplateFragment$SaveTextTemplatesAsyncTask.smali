.class Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;
.super Landroid/os/AsyncTask;
.source "TextTemplateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveTextTemplatesAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$1;

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 344
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v0

    .line 346
    .local v0, "templateHelper":Lcom/sonymobile/template/sms/TextTemplateManager;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->mTemplatesAdapter:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;->access$400(Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;)Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateListAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/template/sms/TextTemplateManager;->saveAllTextTemplate(Ljava/util/List;)V

    .line 348
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 337
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 353
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 355
    .local v0, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Landroid/content/Loader;->onContentChanged()V

    .line 359
    .end local v0    # "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 337
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/setting/template/TextTemplateFragment$SaveTextTemplatesAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method
