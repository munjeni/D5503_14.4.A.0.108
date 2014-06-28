.class Lcom/android/phone/ManagedRoaming$2;
.super Ljava/lang/Object;
.source "ManagedRoaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ManagedRoaming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ManagedRoaming;


# direct methods
.method constructor <init>(Lcom/android/phone/ManagedRoaming;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/ManagedRoaming$2;->this$0:Lcom/android/phone/ManagedRoaming;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 124
    packed-switch p2, :pswitch_data_0

    .line 137
    const-string v1, "ManagedRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received unknown button type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    # setter for: Lcom/android/phone/ManagedRoaming;->isMRDialogShown:Z
    invoke-static {v1}, Lcom/android/phone/ManagedRoaming;->access$302(Z)Z

    .line 141
    return-void

    .line 126
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/ManagedRoaming$2;->this$0:Lcom/android/phone/ManagedRoaming;

    const-string v2, "Launch network settings activity"

    # invokes: Lcom/android/phone/ManagedRoaming;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/ManagedRoaming;->access$100(Lcom/android/phone/ManagedRoaming;Ljava/lang/String;)V

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "networkSettingIntent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.NetworkSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/phone/ManagedRoaming$2;->this$0:Lcom/android/phone/ManagedRoaming;

    # getter for: Lcom/android/phone/ManagedRoaming;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/ManagedRoaming;->access$200(Lcom/android/phone/ManagedRoaming;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
