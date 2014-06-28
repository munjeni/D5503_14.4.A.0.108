.class public Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;
.super Landroid/app/DialogFragment;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteListDialog"
.end annotation


# static fields
.field private static final DLG_PARAM_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final DLG_PARAM_FORMATTER:Ljava/lang/String; = "formatter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 930
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;

    .prologue
    .line 930
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;->getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    move-result-object v0

    return-object v0
.end method

.method private getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .locals 1

    .prologue
    .line 949
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    return-object v0
.end method

.method public static newInstance(Ljava/util/SortedMap;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;)Landroid/app/DialogFragment;
    .locals 4
    .param p1, "frequencyFormatter"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/fmradio/station/Favorite;",
            ">;",
            "Lcom/sonyericsson/fmradio/util/FrequencyFormatter;",
            ")",
            "Landroid/app/DialogFragment;"
        }
    .end annotation

    .prologue
    .line 938
    .local p0, "favorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;

    invoke-direct {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;-><init>()V

    .line 940
    .local v1, "d":Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 941
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "favorites"

    invoke-static {p0}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->toBundle(Ljava/util/SortedMap;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 942
    const-string v2, "formatter"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 943
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 945
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 954
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v7

    const-string v8, "/main/favorite_list"

    invoke-virtual {v7, v8}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "favorites"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 957
    .local v3, "favBundle":Landroid/os/Bundle;
    invoke-static {v3}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->getFavorites(Landroid/os/Bundle;)Ljava/util/SortedMap;

    move-result-object v4

    .line 958
    .local v4, "favorites":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Lcom/sonyericsson/fmradio/station/Favorite;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "formatter"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 960
    .local v5, "formatter":Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v5, v4}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->createFavoritesAdapter(Landroid/content/Context;Lcom/sonyericsson/fmradio/util/FrequencyFormatter;Ljava/util/Map;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 963
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0a0003

    invoke-direct {v1, v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 965
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f050020

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 966
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 967
    const v7, 0x7f050026

    new-instance v8, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$1;

    invoke-direct {v8, p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$1;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 974
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 976
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 977
    .local v6, "listView":Landroid/widget/ListView;
    new-instance v7, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;

    invoke-direct {v7, p0, v2}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog$2;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteListDialog;Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 991
    return-object v2
.end method
