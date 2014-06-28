.class Lcom/android/phone/NetworkSetting$6;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->createDisableDataAccessAlertDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    .line 588
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2000(Lcom/android/phone/NetworkSetting;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 590
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 591
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mDataTrafficNeedRestore:Z
    invoke-static {v0, v2}, Lcom/android/phone/NetworkSetting;->access$2102(Lcom/android/phone/NetworkSetting;Z)Z

    .line 592
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$6;->this$0:Lcom/android/phone/NetworkSetting;

    # setter for: Lcom/android/phone/NetworkSetting;->mOKClickedToSearchNetwork:Z
    invoke-static {v0, v2}, Lcom/android/phone/NetworkSetting;->access$2202(Lcom/android/phone/NetworkSetting;Z)Z

    goto :goto_0
.end method
