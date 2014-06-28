.class Lcom/android/settings/SettingsCertificatesActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SettingsCertificatesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsCertificatesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsCertificatesActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsCertificatesActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings/SettingsCertificatesActivity$1;->this$0:Lcom/android/settings/SettingsCertificatesActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/settings/SettingsCertificatesActivity$1;->this$0:Lcom/android/settings/SettingsCertificatesActivity;

    # getter for: Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;
    invoke-static {v0}, Lcom/android/settings/SettingsCertificatesActivity;->access$000(Lcom/android/settings/SettingsCertificatesActivity;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsCertificatesActivity$1;->this$0:Lcom/android/settings/SettingsCertificatesActivity;

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method
