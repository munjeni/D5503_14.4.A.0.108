.class Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$2;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/filtershow/tools/SaveCopyTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;->saveImage(Lcom/sonymobile/china/photoeditor/filtershow/presets/ImagePreset;Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

.field final synthetic val$callback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$2;->val$callback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/net/Uri;)V
    .locals 1
    .param p1, "result"    # Landroid/net/Uri;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$2;->val$callback:Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;

    invoke-interface {v0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/cache/ImageLoader$ImageLoaderCallback;->onSaveImageComplete(Landroid/net/Uri;)V

    .line 546
    return-void
.end method
