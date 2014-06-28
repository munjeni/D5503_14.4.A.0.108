.class public Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;
.super Landroid/app/DialogFragment;
.source "FmRadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavoriteDetailsDialog"
.end annotation


# static fields
.field private static final DLG_FAVORITES_MAX_NAME_LENGTH:I = 0x8

.field private static final DLG_PARAM_EDIT_MODE:Ljava/lang/String; = "edit-mode"

.field private static final DLG_PARAM_FAV_ITEM:Ljava/lang/String; = "fav-item"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 999
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;)Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;->getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    move-result-object v0

    return-object v0
.end method

.method private getFmRadioActivity()Lcom/sonyericsson/fmradio/ui/FmRadioActivity;
    .locals 1

    .prologue
    .line 1019
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/FmRadioActivity;

    return-object v0
.end method

.method public static newInstance(Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;Z)Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;
    .locals 3
    .param p0, "fi"    # Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    .param p1, "editMode"    # Z

    .prologue
    .line 1008
    new-instance v1, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;

    invoke-direct {v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;-><init>()V

    .line 1010
    .local v1, "d":Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1011
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "fav-item"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1012
    const-string v2, "edit-mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1013
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1015
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1024
    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v11

    const-string v12, "/main/favorite_details"

    invoke-virtual {v11, v12}, Lcom/google/analytics/tracking/android/Tracker;->sendView(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "fav-item"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;

    .line 1027
    .local v8, "fi":Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "edit-mode"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1029
    .local v6, "editMode":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0a0003

    invoke-direct {v0, v11, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1031
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFormatter()Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    move-result-object v11

    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFrequency()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->format(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1032
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030002

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1034
    .local v5, "content":Landroid/view/View;
    const v11, 0x7f0c0002

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 1035
    .local v7, "editText":Landroid/widget/EditText;
    const v11, 0x7f0c0009

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1037
    .local v1, "charsLeftIndicator":Landroid/widget/TextView;
    const v11, 0x7f0c0003

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    .line 1040
    .local v4, "colorSelector":Landroid/widget/RadioGroup;
    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFavorite()Lcom/sonyericsson/fmradio/station/Favorite;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/fmradio/station/Favorite;->getName()Ljava/lang/String;

    move-result-object v10

    .line 1043
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;->getFavorite()Lcom/sonyericsson/fmradio/station/Favorite;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sonyericsson/fmradio/station/Favorite;->getColor()I

    move-result v3

    .line 1044
    .local v3, "color":I
    invoke-static {v3}, Lcom/sonyericsson/fmradio/ui/FavoriteUtils;->favoriteColorToId(I)I

    move-result v2

    .line 1045
    .local v2, "checkId":I
    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1048
    const/4 v11, 0x1

    new-array v9, v11, [Landroid/text/InputFilter;

    .line 1049
    .local v9, "filter":[Landroid/text/InputFilter;
    const/4 v11, 0x0

    new-instance v12, Landroid/text/InputFilter$LengthFilter;

    const/16 v13, 0x8

    invoke-direct {v12, v13}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v12, v9, v11

    .line 1050
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1052
    if-eqz v10, :cond_1

    .line 1053
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 1054
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1055
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->length()I

    move-result v11

    rsub-int/lit8 v11, v11, 0x8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :goto_0
    new-instance v11, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$1;

    invoke-direct {v11, p0, v1}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$1;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;Landroid/widget/TextView;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1078
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 1079
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1080
    const v11, 0x7f050025

    new-instance v12, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;

    invoke-direct {v12, p0, v7, v4, v8}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$2;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;Landroid/widget/EditText;Landroid/widget/RadioGroup;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1128
    const v11, 0x7f050026

    const/4 v12, 0x0

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1130
    if-eqz v6, :cond_0

    .line 1131
    const v11, 0x7f050024

    new-instance v12, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;

    invoke-direct {v12, p0, v8}, Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog$3;-><init>(Lcom/sonyericsson/fmradio/ui/FmRadioActivity$FavoriteDetailsDialog;Lcom/sonyericsson/fmradio/ui/FavoriteUtils$FavItem;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1150
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    return-object v11

    .line 1058
    :cond_1
    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
