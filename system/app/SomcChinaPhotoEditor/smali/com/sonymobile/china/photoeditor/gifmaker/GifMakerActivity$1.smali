.class Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;
.super Landroid/os/Handler;
.source "GifMakerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 117
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->showDialog(I)V

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$000(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$000(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 130
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "intentBroadcast":Landroid/content/Intent;
    new-instance v5, Ljava/io/File;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 133
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-virtual {v4, v2}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 134
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sonymobile.multishare.action.SHARE_GIF"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-virtual {v4, v1}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->finish()V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "photoeditor"

    const-string v5, "Activity Not Found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 151
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "intentBroadcast":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :pswitch_4
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    # getter for: Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->access$000(Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 152
    iget-object v4, p0, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity$1;->this$0:Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;

    invoke-virtual {v4}, Lcom/sonymobile/china/photoeditor/gifmaker/GifMakerActivity;->finish()V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x317e16
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
