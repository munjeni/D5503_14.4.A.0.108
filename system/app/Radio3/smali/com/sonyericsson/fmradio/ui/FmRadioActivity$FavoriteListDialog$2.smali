.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 981
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 982
    .local v2, "tag":Ljava/lang/Object;
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;->getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;->access$1700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    move-result-object v0

    .line 983
    .local v0, "activity":Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    if-eqz p1, :cond_0

    instance-of v3, v2, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    if-eqz v3, :cond_0

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 984
    check-cast v1, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    .line 985
    .local v1, "fi":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/fmradio/service/Tuner;->setFrequency(I)V

    .line 986
    invoke-virtual {v0, v5, v5}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 987
    iget-object v3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 989
    .end local v1    # "fi":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    :cond_0
    return-void
.end method
