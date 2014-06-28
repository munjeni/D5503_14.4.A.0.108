.class Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;
.super Ljava/lang/Object;
.source "SelectRegionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

.field final synthetic val$regionSaved:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;Z)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;->this$0:Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

    iput-boolean p2, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;->val$regionSaved:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;->this$0:Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

    # getter for: Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->mCurrentRegion:I
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;->access$000(Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;)I

    move-result v1

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;->val$regionSaved:Z

    if-nez v1, :cond_1

    .line 68
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FM band changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/fmradio/util/LogUtil;->logd([Ljava/lang/Object;)V

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/SelectRegionDialog$1;->this$0:Lcom/sonyericsson/fmradio/ui/SelectRegionDialog;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    .line 70
    .local v0, "activity":Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    invoke-virtual {v0, p2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->reloadNewFmBand(I)V

    .line 72
    .end local v0    # "activity":Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    :cond_1
    return-void
.end method
