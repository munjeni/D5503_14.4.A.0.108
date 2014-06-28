.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mAutoSyncEnabler:Lcom/android/settings/AutoSyncEnabler;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 902
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 904
    iput-object p3, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 905
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 909
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 910
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 911
    new-instance v0, Lcom/android/settings/AutoSyncEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/AutoSyncEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAutoSyncEnabler:Lcom/android/settings/AutoSyncEnabler;

    .line 912
    iput-object p4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 913
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 861
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 862
    const/4 v0, 0x0

    .line 870
    :goto_0
    return v0

    .line 863
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080225

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080226

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 864
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 865
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f080238

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 866
    const/4 v0, 0x3

    goto :goto_0

    .line 867
    :cond_3
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f08023c

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 868
    const/4 v0, 0x4

    goto :goto_0

    .line 870
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1064
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1065
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1067
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1068
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1069
    iget-object v1, p1, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1070
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V
    .locals 8
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 1041
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1043
    iget-object v4, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1045
    .local v0, "accType":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1046
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v2}, Lcom/android/settings/Settings$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 1053
    .end local v0    # "accType":Ljava/lang/String;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v4, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1055
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1056
    iget-object v4, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    iget-object v4, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :goto_1
    return-void

    .line 1047
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_0
    iget-wide v4, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v6, 0x7f080228

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1048
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/settings/Settings;

    # getter for: Lcom/android/settings/Settings;->mOperatorDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/settings/Settings;->access$400(Lcom/android/settings/Settings;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1049
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1051
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v4, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v5, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1059
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v4, p2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 876
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 877
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    const v11, 0x7f080025

    const v10, 0x1020016

    const v9, 0x1020010

    const/4 v7, 0x0

    .line 918
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 919
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 920
    .local v2, "headerType":I
    const/4 v5, 0x0

    .line 922
    .local v5, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 923
    new-instance v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 924
    .local v3, "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 967
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 974
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1037
    :goto_2
    return-object v5

    .line 926
    :pswitch_0
    new-instance v5, Landroid/widget/TextView;

    .end local v5    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    const v9, 0x1010208

    invoke-direct {v5, v6, v8, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5    # "view":Landroid/view/View;
    move-object v6, v5

    .line 928
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 933
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040062

    invoke-virtual {v6, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 935
    const v6, 0x7f0800f5

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->header_:Landroid/view/View;

    .line 936
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 937
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 939
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 941
    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 945
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040060

    invoke-virtual {v6, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 947
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 948
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 950
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 952
    const v6, 0x7f0800f4

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 953
    const v6, 0x7f080082

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 957
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040061

    invoke-virtual {v6, v8, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 960
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 961
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 963
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 969
    .end local v3    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v5, p2

    .line 970
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v3    # "holder":Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 976
    :pswitch_4
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 981
    :pswitch_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f080225

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 982
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 986
    :cond_1
    :goto_3
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 987
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->header_:Landroid/view/View;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$1;

    invoke-direct {v7, p0, v1, p1}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;Landroid/preference/PreferenceActivity$Header;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 983
    :cond_2
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f080226

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 984
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v7, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_3

    .line 997
    :pswitch_6
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAutoSyncEnabler:Lcom/android/settings/AutoSyncEnabler;

    iget-object v8, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v8}, Lcom/android/settings/AutoSyncEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 998
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->header_:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 999
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->header_:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V

    .line 1000
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1004
    :pswitch_7
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f080238

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    .line 1005
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 1006
    .local v0, "hasCert":Z
    if-eqz v0, :cond_6

    .line 1007
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1008
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1010
    .local v4, "isManaged":Z
    :goto_4
    if-eqz v4, :cond_5

    .line 1011
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x7f02006a

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1016
    :goto_5
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/settings/Settings$HeaderAdapter$2;

    invoke-direct {v7, p0}, Lcom/android/settings/Settings$HeaderAdapter$2;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1029
    .end local v0    # "hasCert":Z
    .end local v4    # "isManaged":Z
    :cond_3
    :goto_6
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .restart local v0    # "hasCert":Z
    :cond_4
    move v4, v7

    .line 1009
    goto :goto_4

    .line 1013
    .restart local v4    # "isManaged":Z
    :cond_5
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1025
    .end local v4    # "isManaged":Z
    :cond_6
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1026
    iget-object v6, v3, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1033
    .end local v0    # "hasCert":Z
    :pswitch_8
    invoke-direct {p0, v1, v3}, Lcom/android/settings/Settings$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 974
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x5

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 887
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1081
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAutoSyncEnabler:Lcom/android/settings/AutoSyncEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AutoSyncEnabler;->pause()V

    .line 1082
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1074
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1075
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mAutoSyncEnabler:Lcom/android/settings/AutoSyncEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AutoSyncEnabler;->resume()V

    .line 1076
    return-void
.end method
