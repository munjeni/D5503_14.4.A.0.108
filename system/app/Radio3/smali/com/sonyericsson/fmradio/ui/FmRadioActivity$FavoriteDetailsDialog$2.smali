.class Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;
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

.field final synthetic val$colorSelector:Landroid/widget/RadioGroup;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;


# direct methods
.method constructor <init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;Landroid/widget/EditText;Landroid/widget/RadioGroup;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V
    .locals 0

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->val$editText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->val$colorSelector:Landroid/widget/RadioGroup;

    iput-object p4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 1083
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1086
    .local v3, "name":Ljava/lang/String;
    const/4 v2, -0x1

    .line 1087
    .local v2, "color":I
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->val$colorSelector:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    .line 1088
    .local v1, "checkedId":I
    invoke-static {v1}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->favoriteIdToColor(I)I

    move-result v2

    .line 1090
    iget-object v4, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->this$0:Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    # invokes: Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    invoke-static {v4}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->access$1800(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    move-result-object v0

    .line 1091
    .local v0, "activity":Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    if-eqz v0, :cond_0

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 1092
    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;->val$fi:Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    invoke-virtual {v5}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v5

    invoke-virtual {v4, v5, v3, v2}, Lcom/sonyericsson/fmradio/service/Tuner;->addFavorite(ILjava/lang/String;I)V

    .line 1095
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const/4 v5, 0x4

    # getter for: Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->mTuner:Lcom/sonyericsson/fmradio/service/Tuner;
    invoke-static {v0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;->access$600(Lcom/sonyericsson/fmradio/ui/FmRadioActivity;)Lcom/sonyericsson/fmradio/service/Tuner;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/fmradio/service/Tuner;->getFavorites()Ljava/util/SortedMap;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/SortedMap;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/analytics/tracking/android/Tracker;->setCustomDimension(ILjava/lang/String;)V

    .line 1099
    sparse-switch v2, :sswitch_data_0

    .line 1120
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorite_added"

    const-string v6, "White"

    const-string v7, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1125
    :cond_0
    :goto_0
    return-void

    .line 1103
    :sswitch_0
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorite_added"

    const-string v6, "Yellow"

    const-string v7, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1107
    :sswitch_1
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorite_added"

    const-string v6, "Blue"

    const-string v7, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1111
    :sswitch_2
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorite_added"

    const-string v6, "Purple"

    const-string v7, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1115
    :sswitch_3
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v4

    const-string v5, "favorite_added"

    const-string v6, "Pink"

    const-string v7, ""

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1099
    nop

    :sswitch_data_0
    .sparse-switch
        -0xff6601 -> :sswitch_1
        -0x66cc34 -> :sswitch_2
        -0x3333cd -> :sswitch_0
        -0xcc9a -> :sswitch_3
    .end sparse-switch
.end method
