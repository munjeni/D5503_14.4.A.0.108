.class Lcom/android/phone/NetworkSetting$7;
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
    .line 596
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 598
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mButtonNetworkSearchMode:Landroid/preference/ListPreference;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$2400(Lcom/android/phone/NetworkSetting;)Landroid/preference/ListPreference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    const/4 v1, 0x0

    # invokes: Lcom/android/phone/NetworkSetting;->setIsSearchModeAutomatic(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$2500(Lcom/android/phone/NetworkSetting;Z)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->mNWQuerySponsor:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/NetworkSetting;->access$2300(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$7;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
