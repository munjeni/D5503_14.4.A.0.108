.class Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;
.super Landroid/os/AsyncTask;
.source "ContentResolverUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncDeleteTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "listener"    # Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mUri:Landroid/net/Uri;

    .line 31
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil;->deleteImage(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mListener:Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtilListener;->onDeleted(ZLandroid/net/Uri;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/mediasaving/ContentResolverUtil$AsyncDeleteTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
