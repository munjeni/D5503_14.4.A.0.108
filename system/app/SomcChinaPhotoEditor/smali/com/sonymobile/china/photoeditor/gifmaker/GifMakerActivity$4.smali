.class Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;
.super Ljava/lang/Object;
.source "GifMakerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 261
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->isCancel:Z
    invoke-static {v0, v1}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$202(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;Z)Z

    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 266
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->setResult(I)V

    .line 267
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$4;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->finish()V

    .line 268
    return-void
.end method
