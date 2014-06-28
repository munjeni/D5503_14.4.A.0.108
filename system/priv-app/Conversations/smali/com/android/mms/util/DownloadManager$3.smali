.class Lcom/android/mms/util/DownloadManager$3;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DownloadManager;->showToastToUser(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DownloadManager;

.field final synthetic val$lengthType:I

.field final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DownloadManager;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    iput-object p2, p0, Lcom/android/mms/util/DownloadManager$3;->val$toast:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/util/DownloadManager$3;->val$lengthType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mms/util/DownloadManager$3;->this$0:Lcom/android/mms/util/DownloadManager;

    # getter for: Lcom/android/mms/util/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/util/DownloadManager;->access$300(Lcom/android/mms/util/DownloadManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/util/DownloadManager$3;->val$toast:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/util/DownloadManager$3;->val$lengthType:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 232
    return-void
.end method
