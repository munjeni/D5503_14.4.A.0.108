.class Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AbstractGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/AbstractGalleryActivity;->onStorageReady()V

    .line 55
    :cond_0
    return-void
.end method
