.class Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$2;
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
    .line 220
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$2;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->finish()V

    .line 226
    return-void
.end method
