.class public Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;
.super Landroid/app/DialogFragment;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhfMissingDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "phf_missing_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1181
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;
    .locals 1

    .prologue
    .line 1186
    new-instance v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$PhfMissingDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1191
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1193
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05002b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1194
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1196
    .local v1, "content":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1198
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1203
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 1205
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1206
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1207
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 1209
    :cond_0
    return-void
.end method
