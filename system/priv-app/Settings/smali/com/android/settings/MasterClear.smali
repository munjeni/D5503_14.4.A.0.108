.class public Lcom/android/settings/MasterClear;
.super Landroid/app/Fragment;
.source "MasterClear.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 132
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->runRestrictionsChallenge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private establishInitialState()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 158
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0800c5

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 159
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0800c3

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 161
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0800c4

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 170
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 171
    .local v2, "isExtStorageEmulated":Z
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0800c2

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "externalOption":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v9, 0x7f0800be

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "externalAlsoErased":Landroid/view/View;
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v9, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    if-nez v2, :cond_1

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 194
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v1    # "externalOption":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "user"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 195
    .local v4, "userMan":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUserCount()I

    move-result v6

    if-le v6, v7, :cond_0

    move v5, v8

    .line 196
    .local v5, "visibility":I
    :cond_0
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    const v7, 0x7f0800bf

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 198
    .local v3, "masterClearDescMultiuser":Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->loadAccountList()V

    .line 201
    return-void

    .end local v3    # "masterClearDescMultiuser":Landroid/view/View;
    .end local v4    # "userMan":Landroid/os/UserManager;
    .end local v5    # "visibility":I
    .restart local v0    # "externalAlsoErased":Landroid/view/View;
    .restart local v1    # "externalOption":Landroid/view/View;
    :cond_1
    move v6, v8

    .line 182
    goto :goto_0

    .line 184
    .end local v0    # "externalAlsoErased":Landroid/view/View;
    .end local v1    # "externalOption":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    new-instance v9, Lcom/android/settings/MasterClear$2;

    invoke-direct {v9, p0}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 204
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList()V
    .locals 25

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800c0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 210
    .local v8, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0800c1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 211
    .local v11, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    .line 215
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v21

    .line 216
    .local v21, "mgr":Landroid/accounts/AccountManager;
    invoke-virtual/range {v21 .. v21}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v7

    .line 217
    .local v7, "accounts":[Landroid/accounts/Account;
    array-length v5, v7

    .line 218
    .local v5, "N":I
    if-nez v5, :cond_0

    .line 219
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 220
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_0
    return-void

    .line 224
    :cond_0
    const-string v22, "layout_inflater"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/view/LayoutInflater;

    .line 227
    .local v19, "inflater":Landroid/view/LayoutInflater;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v14

    .line 228
    .local v14, "descs":[Landroid/accounts/AuthenticatorDescription;
    array-length v4, v14

    .line 231
    .local v4, "M":I
    new-instance v16, Lcom/android/settings/accounts/AccountVisibilityFilter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountVisibilityFilter;-><init>(Landroid/content/Context;)V

    .line 233
    .local v16, "filter":Lcom/android/settings/accounts/AccountVisibilityFilter;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v5, :cond_7

    .line 234
    aget-object v6, v7, v17

    .line 235
    .local v6, "account":Landroid/accounts/Account;
    const/4 v13, 0x0

    .line 236
    .local v13, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v4, :cond_1

    .line 237
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v23, v14, v20

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 238
    aget-object v13, v14, v20

    .line 242
    :cond_1
    if-nez v13, :cond_4

    .line 243
    const-string v22, "MasterClear"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No descriptor for account name="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " type="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 236
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 247
    :cond_4
    iget-object v0, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountVisibilityFilter;->isAccountVisibleInManagerList(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 251
    const/16 v18, 0x0

    .line 253
    .local v18, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 254
    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v0, v1}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 255
    .local v9, "authContext":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 261
    .end local v9    # "authContext":Landroid/content/Context;
    :cond_5
    :goto_4
    const v22, 0x7f040048

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 263
    .local v10, "child":Landroid/widget/TextView;
    iget-object v0, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    if-eqz v18, :cond_6

    .line 265
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_6
    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 257
    .end local v10    # "child":Landroid/widget/TextView;
    :catch_0
    move-exception v15

    .line 258
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "MasterClear"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No icon for account type "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 270
    .end local v6    # "account":Landroid/accounts/Account;
    .end local v13    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v18    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v20    # "j":I
    :cond_7
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 271
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b0436

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b0437

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private runRestrictionsChallenge()Z
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RESTRICTIONS_CHALLENGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x38

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 92
    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 120
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 121
    const-class v0, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 122
    const v0, 0x7f0b0439

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 123
    invoke-virtual {v1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "erase_sd"

    iget-object v3, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/preference/PreferenceActivity;->onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z

    .line 125
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 102
    if-ne p2, v1, :cond_0

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 112
    if-ne p2, v1, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 115
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 277
    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 279
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 280
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 288
    iget-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v0, :cond_0

    .line 289
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 290
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 294
    :cond_0
    return-void
.end method
