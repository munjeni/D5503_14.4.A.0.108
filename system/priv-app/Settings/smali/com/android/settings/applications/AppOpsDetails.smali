.class public Lcom/android/settings/applications/AppOpsDetails;
.super Landroid/app/Fragment;
.source "AppOpsDetails.java"


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppVersion:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOperationsSection:Landroid/widget/LinearLayout;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppOpsDetails;)Landroid/app/AppOpsManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/AppOpsDetails;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private refreshUi()Z
    .locals 24

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 107
    const/16 v20, 0x0

    .line 158
    :goto_0
    return v20

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 114
    .local v15, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 115
    const-string v10, ""

    .line 116
    .local v10, "lastPermGroup":Ljava/lang/String;
    sget-object v4, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .local v4, "arr$":[Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .local v9, "i$":I
    :goto_1
    if-ge v9, v11, :cond_4

    aget-object v18, v4, v9

    .line 117
    .local v18, "tpl":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 119
    .local v5, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9    # "i$":I
    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 120
    .local v6, "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;

    move-result-object v7

    .line 121
    .local v7, "firstOp":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f040007

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 123
    .local v19, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 124
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, "perm":Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 127
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    .line 128
    .local v14, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v0, v14, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    iget-object v0, v14, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 129
    iget-object v10, v14, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    iget-object v0, v14, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v13

    .line 131
    .local v13, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget v0, v13, Landroid/content/pm/PackageItemInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 132
    const v20, 0x7f08000d

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v13    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v14    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_1
    :goto_3
    const v20, 0x7f08000e

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    const v20, 0x7f08000f

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v6, v15, v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const v20, 0x7f080010

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Switch;

    .line 144
    .local v16, "sw":Landroid/widget/Switch;
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v20

    invoke-static/range {v20 .. v20}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v17

    .line 145
    .local v17, "switchOp":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v21

    invoke-virtual {v6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getPackageOps()Landroid/app/AppOpsManager$PackageOps;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v20

    if-nez v20, :cond_2

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 147
    new-instance v20, Lcom/android/settings/applications/AppOpsDetails$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v6}, Lcom/android/settings/applications/AppOpsDetails$1;-><init>(Lcom/android/settings/applications/AppOpsDetails;ILcom/android/settings/applications/AppOpsState$AppOpEntry;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_2

    .line 145
    :cond_2
    const/16 v20, 0x0

    goto :goto_4

    .line 116
    .end local v6    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v7    # "firstOp":Landroid/app/AppOpsManager$OpEntry;
    .end local v12    # "perm":Ljava/lang/String;
    .end local v16    # "sw":Landroid/widget/Switch;
    .end local v17    # "switchOp":I
    .end local v19    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v8, v9, 0x1

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto/16 :goto_1

    .line 158
    .end local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    .end local v18    # "tpl":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    :cond_4
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 136
    .end local v9    # "i$":I
    .restart local v5    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    .restart local v6    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .restart local v7    # "firstOp":Landroid/app/AppOpsManager$OpEntry;
    .local v8, "i$":Ljava/util/Iterator;
    .restart local v12    # "perm":Ljava/lang/String;
    .restart local v18    # "tpl":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .restart local v19    # "view":Landroid/view/View;
    :catch_0
    move-exception v20

    goto/16 :goto_3
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 84
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "package"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v3, :cond_0

    .line 87
    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 89
    .local v2, "intent":Landroid/content/Intent;
    :goto_1
    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 94
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x2200

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_2
    return-object v3

    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 85
    goto :goto_0

    .line 87
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_2
    const-string v4, "intent"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    move-object v2, v4

    goto :goto_1

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppOpsDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    iput-object v5, p0, Lcom/android/settings/applications/AppOpsDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, 0x0

    .line 63
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 66
    const v3, 0x7f080011

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    const v3, 0x7f080012

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v3, 0x7f0800bb

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    .line 74
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0511

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 162
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 165
    .local v1, "pa":Landroid/preference/PreferenceActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 166
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 174
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mAppOps:Landroid/app/AppOpsManager;

    .line 178
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 181
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 186
    const v1, 0x7f040006

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 189
    iput-object v0, p0, Lcom/android/settings/applications/AppOpsDetails;->mRootView:Landroid/view/View;

    .line 190
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsDetails;->mOperationsSection:Landroid/widget/LinearLayout;

    .line 191
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 197
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/AppOpsDetails;->setIntentAndFinish(ZZ)V

    .line 200
    :cond_0
    return-void
.end method
