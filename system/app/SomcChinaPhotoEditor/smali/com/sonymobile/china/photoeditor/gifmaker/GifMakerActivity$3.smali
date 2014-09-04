.class Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$3;
.super Ljava/lang/Object;
.source "GifMakerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->initCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$3;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;

    iget-object v2, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$3;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$ConvertRunnable;-><init>(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method
