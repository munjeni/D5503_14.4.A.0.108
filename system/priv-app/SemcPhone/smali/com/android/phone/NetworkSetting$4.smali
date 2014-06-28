.class Lcom/android/phone/NetworkSetting$4;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 551
    iput-object p1, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$4;->this$0:Lcom/android/phone/NetworkSetting;

    # getter for: Lcom/android/phone/NetworkSetting;->selectedCarrier:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->access$700(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/android/phone/NetworkSetting;->selectNetworkCarrier(Landroid/preference/Preference;)Z
    invoke-static {v0, v1}, Lcom/android/phone/NetworkSetting;->access$1900(Lcom/android/phone/NetworkSetting;Landroid/preference/Preference;)Z

    .line 554
    return-void
.end method
