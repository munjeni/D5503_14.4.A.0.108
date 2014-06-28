.class final Lcom/android/mms/ui/MessageUtils$3;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$showProgress:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$3;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$3;->val$showProgress:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/mms/ui/MessageUtils$3;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-boolean p6, p0, Lcom/android/mms/ui/MessageUtils$3;->val$append:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 283
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$3;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$3;->val$imageUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 284
    .local v0, "image":Lcom/android/mms/ui/UriImage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    add-int/lit16 v4, v4, -0x1388

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 290
    .local v1, "part":Lcom/google/android/mms/pdu/PduPart;
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$3;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/MessageUtils$3$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/MessageUtils$3$1;-><init>(Lcom/android/mms/ui/MessageUtils$3;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 298
    return-void

    .line 290
    .end local v0    # "image":Lcom/android/mms/ui/UriImage;
    .end local v1    # "part":Lcom/google/android/mms/pdu/PduPart;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$3;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/MessageUtils$3;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v2
.end method
