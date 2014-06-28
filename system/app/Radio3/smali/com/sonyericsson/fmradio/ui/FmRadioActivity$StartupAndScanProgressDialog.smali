.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;
.super Landroid/app/Dialog;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartupAndScanProgressDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1156
    const v0, 0x7f0a0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1157
    return-void
.end method

.method static synthetic access$1400(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;
    .locals 1
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 1154
    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;->show(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private static show(Landroid/app/Activity;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;
    .locals 5
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x2

    .line 1161
    const-string v3, "accessibility"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1164
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1165
    const/4 v2, 0x0

    .line 1176
    :goto_0
    return-object v2

    .line 1167
    :cond_0
    new-instance v2, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;

    invoke-direct {v2, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1168
    .local v2, "dialog":Lcom/sonyericsson/fmradio/ui/FmRadioActivity$StartupAndScanProgressDialog;
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 1169
    .local v1, "bar":Landroid/widget/ProgressBar;
    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1170
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1172
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1173
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 1175
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
