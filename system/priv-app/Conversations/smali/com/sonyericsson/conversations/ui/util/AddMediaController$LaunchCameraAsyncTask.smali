.class Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;
.super Landroid/os/AsyncTask;
.source "AddMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/AddMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchCameraAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/conversations/ui/util/AddMediaController;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/conversations/ui/util/AddMediaController;Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    .param p2, "x1"    # Lcom/sonyericsson/conversations/ui/util/AddMediaController$1;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;-><init>(Lcom/sonyericsson/conversations/ui/util/AddMediaController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/Intent;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 132
    # invokes: Lcom/sonyericsson/conversations/ui/util/AddMediaController;->getPhotoUri()V
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->access$100()V

    .line 133
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v0

    # getter for: Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mCaptureUri:Landroid/net/Uri;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->access$200()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCameraCapture(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 3
    .param p1, "result"    # Landroid/content/Intent;

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mFragment:Landroid/app/Fragment;
    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->access$400(Lcom/sonyericsson/conversations/ui/util/AddMediaController;)Landroid/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    # getter for: Lcom/sonyericsson/conversations/ui/util/AddMediaController;->mRequestBase:I
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->access$300(Lcom/sonyericsson/conversations/ui/util/AddMediaController;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;->this$0:Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const v2, 0x7f07017c

    # invokes: Lcom/sonyericsson/conversations/ui/util/AddMediaController;->popUpToastInUiThread(I)V
    invoke-static {v1, v2}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->access$500(Lcom/sonyericsson/conversations/ui/util/AddMediaController;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 129
    check-cast p1, Landroid/content/Intent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController$LaunchCameraAsyncTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
