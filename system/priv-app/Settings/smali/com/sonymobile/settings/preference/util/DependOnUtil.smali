.class public Lcom/sonymobile/settings/preference/util/DependOnUtil;
.super Ljava/lang/Object;
.source "DependOnUtil.java"


# instance fields
.field private mAdd:Z

.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mHasMetaData:Z

.field private final mHasSystemFeature:Ljava/lang/String;

.field private final mIsOwnerOnly:Z

.field private final mIsValidIntent:Z

.field private final mSettingsSecure:Ljava/lang/String;

.field private final mSettingsSystem:Ljava/lang/String;

.field private final mSystemProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v3, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 86
    sget-object v1, Lcom/android/settings/R$styleable;->DependOnPreference:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 88
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    .line 89
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 91
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    .line 92
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    .line 93
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    .line 94
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    .line 96
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    .line 97
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    .line 98
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    return-void
.end method

.method public static addPreferencesFromResource(Landroid/content/Context;Landroid/preference/PreferenceScreen;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preferenceAdder"    # Lcom/sonymobile/settings/preference/util/PreferencesAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/preference/PreferenceScreen;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 445
    .local p3, "resumeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    if-eqz p1, :cond_0

    .line 446
    invoke-static {p1, p1, p2, p3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    .line 448
    :cond_0
    return-void
.end method

.method private static addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V
    .locals 20
    .param p0, "screen"    # Landroid/preference/PreferenceScreen;
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceAdder"    # Lcom/sonymobile/settings/preference/util/PreferencesAdder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Landroid/preference/PreferenceGroup;",
            "Lcom/sonymobile/settings/preference/util/PreferencesAdder;",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p3, "resumeListeners":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v12, "removePrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/Preference;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v13, "sortPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_6

    .line 362
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 363
    .local v10, "pref":Landroid/preference/Preference;
    const/4 v8, 0x0

    .line 364
    .local v8, "isRemoved":Z
    instance-of v0, v10, Lcom/sonymobile/settings/preference/IncludePreference;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object v7, v10

    .line 366
    check-cast v7, Lcom/sonymobile/settings/preference/IncludePreference;

    .line 367
    .local v7, "includePref":Lcom/sonymobile/settings/preference/IncludePreference;
    invoke-virtual {v7}, Lcom/sonymobile/settings/preference/IncludePreference;->dependOn()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 368
    invoke-virtual {v7}, Lcom/sonymobile/settings/preference/IncludePreference;->getIncludeResId()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/sonymobile/settings/preference/util/PreferencesAdder;->addPreferencesFromResource(I)V

    .line 370
    :cond_0
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    const/4 v8, 0x1

    .line 390
    .end local v7    # "includePref":Lcom/sonymobile/settings/preference/IncludePreference;
    :cond_1
    :goto_1
    if-nez v8, :cond_2

    instance-of v0, v10, Landroid/preference/PreferenceGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v10

    check-cast v17, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v17

    if-lez v17, :cond_2

    move-object/from16 v17, v10

    .line 393
    check-cast v17, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->addPreferencesFromResource(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/PreferencesAdder;Ljava/util/Collection;)V

    move-object/from16 v17, v10

    .line 396
    check-cast v17, Landroid/preference/PreferenceGroup;

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v17

    if-nez v17, :cond_2

    .line 397
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 372
    :cond_3
    instance-of v0, v10, Lcom/sonymobile/settings/preference/util/DependOn;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v4, v10

    .line 373
    check-cast v4, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 374
    .local v4, "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    invoke-interface {v4}, Lcom/sonymobile/settings/preference/util/DependOn;->dependOn()Z

    move-result v17

    if-nez v17, :cond_4

    .line 375
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const/4 v8, 0x1

    goto :goto_1

    .line 381
    :cond_4
    invoke-static {v4}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 382
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_5
    invoke-interface {v4}, Lcom/sonymobile/settings/preference/util/DependOn;->hasResumeActions()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 385
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 404
    .end local v4    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v8    # "isRemoved":Z
    .end local v10    # "pref":Landroid/preference/Preference;
    :cond_6
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V

    .line 407
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/preference/Preference;

    .line 411
    .restart local v10    # "pref":Landroid/preference/Preference;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    instance-of v0, v10, Lcom/sonymobile/settings/preference/RemovePreference;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object v11, v10

    .line 416
    check-cast v11, Lcom/sonymobile/settings/preference/RemovePreference;

    .line 417
    .local v11, "removePref":Lcom/sonymobile/settings/preference/RemovePreference;
    invoke-virtual {v11}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetKey()Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, "targetKey":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/sonymobile/settings/preference/RemovePreference;->getTargetParentKey()Ljava/lang/String;

    move-result-object v9

    .line 419
    .local v9, "parentKey":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 420
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v14, p0

    .line 423
    .local v14, "targetGroup":Landroid/preference/PreferenceGroup;
    :goto_3
    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 424
    .local v16, "targetPref":Landroid/preference/Preference;
    if-eqz v16, :cond_9

    .line 425
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 420
    .end local v14    # "targetGroup":Landroid/preference/PreferenceGroup;
    .end local v16    # "targetPref":Landroid/preference/Preference;
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceGroup;

    move-object/from16 v14, v17

    goto :goto_3

    .line 427
    .restart local v14    # "targetGroup":Landroid/preference/PreferenceGroup;
    .restart local v16    # "targetPref":Landroid/preference/Preference;
    :cond_9
    const-string v17, "SomcPreferences"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Removing targetKey="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", targetParentKey="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " failed."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 433
    .end local v9    # "parentKey":Ljava/lang/String;
    .end local v10    # "pref":Landroid/preference/Preference;
    .end local v11    # "removePref":Lcom/sonymobile/settings/preference/RemovePreference;
    .end local v14    # "targetGroup":Landroid/preference/PreferenceGroup;
    .end local v15    # "targetKey":Ljava/lang/String;
    .end local v16    # "targetPref":Landroid/preference/Preference;
    :cond_a
    return-void
.end method

.method private static findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 2
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "dependOnPref"    # Lcom/sonymobile/settings/preference/util/DependOn;

    .prologue
    .line 232
    const-string v0, "last"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;
    .locals 2
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "dependOnPref"    # Lcom/sonymobile/settings/preference/util/DependOn;

    .prologue
    .line 246
    const-string v0, "first"

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMoving(Lcom/sonymobile/settings/preference/util/DependOn;)Z
    .locals 1
    .param p0, "dependOn"    # Lcom/sonymobile/settings/preference/util/DependOn;

    .prologue
    .line 221
    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getAfter()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/sonymobile/settings/preference/util/DependOn;->getBefore()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V
    .locals 5
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "order"    # I

    .prologue
    .line 262
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    instance-of v4, p1, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 268
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 269
    .local v3, "internalGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 270
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 271
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 272
    .local v0, "child":Landroid/preference/Preference;
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 274
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 276
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setOrder(I)V

    .line 270
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 279
    .end local v0    # "child":Landroid/preference/Preference;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "internalGroup":Landroid/preference/PreferenceGroup;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setOrder(I)V

    .line 280
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 282
    :cond_1
    return-void
.end method

.method private static sortPreferences(Landroid/preference/PreferenceGroup;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/settings/preference/util/DependOn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 290
    .local p1, "sortPrefs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/settings/preference/util/DependOn;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->isOrderingAsAdded()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 306
    .local v2, "count":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v4, v10, 0x1

    .line 307
    .local v4, "distance":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_2

    .line 308
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    .line 309
    .local v9, "pref":Landroid/preference/Preference;
    add-int/lit8 v10, v5, 0x1

    mul-int/2addr v10, v4

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOrder(I)V

    .line 307
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 314
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_2
    move v8, v4

    .line 317
    .local v8, "orderOfFirstPreference":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 318
    const/4 v4, 0x0

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/settings/preference/util/DependOn;

    .line 320
    .local v3, "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    .line 321
    check-cast v9, Landroid/preference/Preference;

    .line 322
    .restart local v9    # "pref":Landroid/preference/Preference;
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findAfter(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v0

    .line 323
    .local v0, "afterPref":Landroid/preference/Preference;
    invoke-static {p0, v3}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->findBefore(Landroid/preference/PreferenceGroup;Lcom/sonymobile/settings/preference/util/DependOn;)Landroid/preference/Preference;

    move-result-object v1

    .line 324
    .local v1, "beforePref":Landroid/preference/Preference;
    if-eqz v0, :cond_4

    .line 325
    invoke-virtual {v0}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    .line 326
    :cond_4
    if-eqz v1, :cond_5

    .line 329
    invoke-virtual {v1}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 330
    .local v7, "order":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int v10, v7, v10

    add-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x1

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    .line 332
    .end local v7    # "order":I
    :cond_5
    instance-of v10, v9, Lcom/sonymobile/settings/preference/PreferenceGroup;

    if-eqz v10, :cond_3

    .line 334
    invoke-virtual {v9}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    invoke-static {p0, v9, v10}, Lcom/sonymobile/settings/preference/util/DependOnUtil;->reorderPreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;I)V

    goto :goto_2

    .line 342
    .end local v0    # "afterPref":Landroid/preference/Preference;
    .end local v1    # "beforePref":Landroid/preference/Preference;
    .end local v3    # "dependOnPref":Lcom/sonymobile/settings/preference/util/DependOn;
    .end local v9    # "pref":Landroid/preference/Preference;
    :cond_6
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dependOn(Landroid/content/Context;Landroid/preference/Preference;Landroid/content/Intent;)Z
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 116
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    if-eqz v10, :cond_0

    .line 117
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasSystemFeature:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 119
    :cond_0
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSecure:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 121
    .local v9, "value":I
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_7

    if-lez v9, :cond_7

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 123
    .end local v9    # "value":I
    :cond_1
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v11, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSettingsSystem:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 125
    .restart local v9    # "value":I
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_8

    if-lez v9, :cond_8

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 127
    .end local v9    # "value":I
    :cond_2
    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 128
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mSystemProperty:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 130
    :cond_3
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsOwnerOnly:Z

    if-eqz v10, :cond_4

    .line 131
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    if-eqz v10, :cond_a

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_a

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 134
    :cond_4
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mIsValidIntent:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v10, :cond_f

    .line 135
    :cond_5
    if-nez p3, :cond_b

    .line 136
    const/4 v10, 0x0

    .line 196
    :goto_5
    return v10

    .line 117
    :cond_6
    const/4 v10, 0x0

    goto :goto_0

    .line 121
    .restart local v9    # "value":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 125
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 128
    .end local v9    # "value":I
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 131
    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    .line 140
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 141
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x80

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 142
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 143
    :cond_c
    const/16 v10, 0x80

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 145
    :cond_d
    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 146
    :cond_e
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    .line 196
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    :goto_6
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAdd:Z

    goto :goto_5

    .line 150
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_10
    iget-boolean v10, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mHasMetaData:Z

    if-eqz v10, :cond_f

    .line 151
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_11

    .line 152
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 153
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v10, "SomcPreferences"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has more than one intent for metadata in:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 160
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_11
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 162
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 164
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v10, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 165
    .local v3, "metaData":Landroid/os/Bundle;
    if-eqz v5, :cond_f

    if-eqz v3, :cond_f

    .line 166
    const-string v10, "com.sonymobile.settings.preference.TITLE"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 167
    .local v6, "resId":I
    if-nez v6, :cond_12

    const-string v10, "com.sonyericsson.preference.title"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_13

    .line 169
    :cond_12
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :cond_13
    const-string v10, "com.sonymobile.settings.preference.SUMMARY"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 172
    if-nez v6, :cond_14

    const-string v10, "com.sonyericsson.preference.summary"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_15

    .line 175
    :cond_14
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    :cond_15
    instance-of v10, p2, Landroid/preference/TwoStatePreference;

    if-eqz v10, :cond_f

    .line 178
    move-object v0, p2

    check-cast v0, Landroid/preference/TwoStatePreference;

    move-object v8, v0

    .line 179
    .local v8, "twoStatePreference":Landroid/preference/TwoStatePreference;
    const-string v10, "com.sonymobile.settings.preference.SUMMARY_ON"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 180
    if-eqz v6, :cond_16

    .line 181
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 183
    :cond_16
    const-string v10, "com.sonymobile.settings.preference.SUMMARY_OFF"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 184
    if-eqz v6, :cond_f

    .line 185
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setSummaryOff(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_6

    .line 189
    .end local v3    # "metaData":Landroid/os/Bundle;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "resId":I
    .end local v8    # "twoStatePreference":Landroid/preference/TwoStatePreference;
    :catch_0
    move-exception v10

    goto/16 :goto_6

    .line 191
    :catch_1
    move-exception v10

    goto/16 :goto_6
.end method

.method public getAfter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mAfter:Ljava/lang/String;

    return-object v0
.end method

.method public getBefore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/DependOnUtil;->mBefore:Ljava/lang/String;

    return-object v0
.end method
