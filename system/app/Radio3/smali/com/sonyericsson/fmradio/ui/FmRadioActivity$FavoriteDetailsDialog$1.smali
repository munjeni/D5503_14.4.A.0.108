.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$1;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

.field final synthetic val$charsLeftIndicator:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$1;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$1;->val$charsLeftIndicator:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1075
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1071
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$1;->val$charsLeftIndicator:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    return-void
.end method
