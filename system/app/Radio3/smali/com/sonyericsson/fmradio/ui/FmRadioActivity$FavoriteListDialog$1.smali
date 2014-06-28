.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 971
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 972
    return-void
.end method
