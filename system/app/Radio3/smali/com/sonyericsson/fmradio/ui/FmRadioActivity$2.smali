.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->setButtonListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 396
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->triggerTouchEvent(Landroid/view/View;)V
    invoke-static {v4, p1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$500(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;Landroid/view/View;)V

    .line 398
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/Tuner;->getFrequency()I

    move-result v2

    .line 402
    .local v2, "frequency":I
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonyericsson/fmradio/service/Tuner;->isFavorite(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    const/4 v0, 0x1

    .line 404
    .local v0, "editMode":Z
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/station/Favorite;

    .line 410
    .local v1, "favorite":Lcom/sonyericsson/fmradio/station/Favorite;
    :goto_0
    new-instance v3, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mFrequencyFormatter:Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;-><init>(Lcom/sonyericsson/fmradio/util/FrequencyFormatter;ILcom/sonyericsson/fmradio/station/Favorite;)V

    .line 411
    .local v3, "item":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    invoke-virtual {v4, v3, v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->showFavoriteDetailsDialog(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)V

    .line 412
    return-void

    .line 406
    .end local v0    # "editMode":Z
    .end local v1    # "favorite":Lcom/sonyericsson/fmradio/station/Favorite;
    .end local v3    # "item":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    :cond_0
    const/4 v0, 0x0

    .line 407
    .restart local v0    # "editMode":Z
    new-instance v1, Lcom/sonyericsson/fmradio/station/Favorite;

    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sonyericsson/fmradio/service/Tuner;->getDisplayName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/sonyericsson/fmradio/station/Favorite;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "favorite":Lcom/sonyericsson/fmradio/station/Favorite;
    goto :goto_0
.end method
