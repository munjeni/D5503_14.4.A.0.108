.class Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;
.super Landroid/os/Handler;
.source "LocationEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 206
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 207
    .local v1, "resId":I
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 211
    .end local v1    # "resId":I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 212
    .local v0, "info":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 213
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mLocationNameField:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$400(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    .end local v0    # "info":Ljava/lang/String;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 219
    .restart local v0    # "info":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # getter for: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->mEditLocationAddress:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$500(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 225
    .end local v0    # "info":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissAskForLocationSettingDialog()V
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$600(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    .line 226
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    # invokes: Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->dismissProgressDialog()V
    invoke-static {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->access$700(Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;)V

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    const v3, 0x7f07011e

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity$1;->this$0:Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/location/ui/LocationEditActivity;->finish()V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
