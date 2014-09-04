.class Lcom/sonymobile/china/photoeditor/crop/CropImage$1;
.super Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/crop/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/crop/CropImage;Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V
    .locals 0
    .param p2, "x0"    # Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-direct {p0, p2}, Lcom/sonymobile/china/photoeditor/crop/ui/SynchronizedHandler;-><init>(Lcom/sonymobile/china/photoeditor/crop/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 232
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->onBitmapRegionDecoderAvailable(Landroid/graphics/BitmapRegionDecoder;)V
    invoke-static {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$100(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/BitmapRegionDecoder;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 236
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    # invokes: Lcom/sonymobile/china/photoeditor/crop/CropImage;->onBitmapAvailable(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$200(Lcom/sonymobile/china/photoeditor/crop/CropImage;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 240
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-virtual {v0, v5}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setResult(I)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto :goto_0

    .line 247
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 248
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 249
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mSavedToResultFolder:Z
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$300(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    const v2, 0x7f070004

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mResultFolderName:Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$400(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto/16 :goto_0

    .line 257
    :pswitch_4
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    iget-object v1, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto/16 :goto_0

    .line 262
    :pswitch_5
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    # getter for: Lcom/sonymobile/china/photoeditor/crop/CropImage;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->access$000(Lcom/sonymobile/china/photoeditor/crop/CropImage;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-virtual {v0, v5}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->setResult(I)V

    .line 264
    iget-object v0, p0, Lcom/sonymobile/china/photoeditor/crop/CropImage$1;->this$0:Lcom/sonymobile/china/photoeditor/crop/CropImage;

    invoke-virtual {v0}, Lcom/sonymobile/china/photoeditor/crop/CropImage;->finish()V

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
