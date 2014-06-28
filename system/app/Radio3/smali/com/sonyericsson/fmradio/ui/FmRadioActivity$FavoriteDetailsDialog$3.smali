.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;
.super Ljava/lang/Object;
.source "FmRadioActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V
    .locals 0

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->access$1800(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    move-result-object v0

    .line 1136
    .local v0, "parent":Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    if-eqz v0, :cond_0

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1137
    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-virtual {v2}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/fmradio/service/Tuner;->removeFavorite(I)V

    .line 1139
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const/4 v2, 0x4

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 1143
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v1

    const-string v2, "favorite_deleted"

    const-string v3, "favorite_deleted"

    const-string v4, ""

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1146
    :cond_0
    return-void
.end method
