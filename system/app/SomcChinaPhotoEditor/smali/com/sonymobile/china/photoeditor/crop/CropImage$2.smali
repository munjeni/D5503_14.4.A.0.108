.class Lcom/sonymobile/china/photoeditor/crop/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$CancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/CropImage;->saveBitmapToOutputStream(Lcom/sonymobile/china/photoeditor/crop/util/ThreadPool$JobContext;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

.field final synthetic val$ios:Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$2;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iput-object p2, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$2;->val$ios:Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$2;->val$ios:Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/util/InterruptableOutputStream;->interrupt()V

    .line 544
    return-void
.end method
