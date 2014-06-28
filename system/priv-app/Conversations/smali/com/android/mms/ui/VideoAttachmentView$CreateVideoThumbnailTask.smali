.class Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;
.super Landroid/os/AsyncTask;
.source "VideoAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/VideoAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateVideoThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/VideoAttachmentView;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/VideoAttachmentView;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;->this$0:Lcom/android/mms/ui/VideoAttachmentView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/VideoAttachmentView;Lcom/android/mms/ui/VideoAttachmentView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/VideoAttachmentView;
    .param p2, "x1"    # Lcom/android/mms/ui/VideoAttachmentView$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;-><init>(Lcom/android/mms/ui/VideoAttachmentView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;->this$0:Lcom/android/mms/ui/VideoAttachmentView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    if-nez v0, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;->this$0:Lcom/android/mms/ui/VideoAttachmentView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02008c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "VideoAttachmentView"

    const-string v3, "setVideo: out of memory: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;->doInBackground([Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 54
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/VideoAttachmentView$CreateVideoThumbnailTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
