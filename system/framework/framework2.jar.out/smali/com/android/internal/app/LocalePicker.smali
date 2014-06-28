.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 63
    return-void
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "fieldId"    # I
    .param p3, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIZ)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 116
    .local v22, "resources":Landroid/content/res/Resources;
    new-instance v18, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v18, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 119
    const-string v2, "zz_ZZ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    const-string v2, "zz_ZZ"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 129
    .local v19, "locales":[Ljava/lang/String;
    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "locales":[Ljava/lang/String;
    check-cast v19, [Ljava/lang/String;

    .line 131
    .restart local v19    # "locales":[Ljava/lang/String;
    const v2, 0x1070007

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 132
    .local v26, "specialLocaleCodes":[Ljava/lang/String;
    const v2, 0x1070008

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v27

    .line 133
    .local v27, "specialLocaleNames":[Ljava/lang/String;
    const v2, 0x1070009

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v24

    .line 135
    .local v24, "specialLanguageCodes":[Ljava/lang/String;
    const v2, 0x107000a

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v25

    .line 137
    .local v25, "specialLanguageNames":[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 138
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 139
    .local v20, "origSize":I
    move/from16 v0, v20

    new-array v0, v0, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v21, v0

    .line 140
    .local v21, "preprocess":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v12, 0x0

    .line 141
    .local v12, "finalSize":I
    const/4 v14, 0x0

    .local v14, "i":I
    move v13, v12

    .end local v12    # "finalSize":I
    .local v13, "finalSize":I
    :goto_0
    move/from16 v0, v20

    if-ge v14, v0, :cond_5

    .line 142
    aget-object v23, v19, v14

    .line 143
    .local v23, "s":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v17

    .line 144
    .local v17, "len":I
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 145
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 146
    .local v16, "language":Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v3, 0x5

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "country":Ljava/lang/String;
    new-instance v15, Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v15, "l":Ljava/util/Locale;
    if-nez v13, :cond_1

    .line 154
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "finalSize":I
    .restart local v12    # "finalSize":I
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v15, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayLanguage(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v21, v13

    .line 141
    .end local v10    # "country":Ljava/lang/String;
    .end local v15    # "l":Ljava/util/Locale;
    .end local v16    # "language":Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move v13, v12

    .end local v12    # "finalSize":I
    .restart local v13    # "finalSize":I
    goto :goto_0

    .line 162
    .restart local v10    # "country":Ljava/lang/String;
    .restart local v15    # "l":Ljava/util/Locale;
    .restart local v16    # "language":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v13, -0x1

    aget-object v2, v21, v2

    iget-object v2, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v13, -0x1

    aget-object v2, v21, v2

    iget-object v2, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zz"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 171
    add-int/lit8 v2, v13, -0x1

    aget-object v2, v21, v2

    add-int/lit8 v3, v13, -0x1

    aget-object v3, v21, v3

    iget-object v3, v3, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v3, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 178
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "finalSize":I
    .restart local v12    # "finalSize":I
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v15, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v21, v13

    goto :goto_1

    .line 184
    .end local v12    # "finalSize":I
    .restart local v13    # "finalSize":I
    :cond_2
    const-string v2, "zz_ZZ"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 185
    const-string v11, "[Developer] Accented English"

    .line 195
    .local v11, "displayName":Ljava/lang/String;
    :goto_2
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "finalSize":I
    .restart local v12    # "finalSize":I
    new-instance v2, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v2, v11, v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v21, v13

    goto :goto_1

    .line 186
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v12    # "finalSize":I
    .restart local v13    # "finalSize":I
    :cond_3
    const-string v2, "zz_ZY"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 187
    const-string v11, "[Developer] Fake Bi-Directional"

    .restart local v11    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 189
    .end local v11    # "displayName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v15, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayLanguage(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "displayName":Ljava/lang/String;
    goto :goto_2

    .line 201
    .end local v10    # "country":Ljava/lang/String;
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v15    # "l":Ljava/util/Locale;
    .end local v16    # "language":Ljava/lang/String;
    .end local v17    # "len":I
    .end local v23    # "s":Ljava/lang/String;
    :cond_5
    new-array v6, v13, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 202
    .local v6, "localeInfos":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_6

    .line 203
    aget-object v2, v21, v14

    aput-object v2, v6, v14

    .line 202
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 205
    :cond_6
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 207
    const-string v2, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 209
    .local v7, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/internal/app/LocalePicker$1;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/LocalePicker$1;-><init>(Landroid/content/Context;II[Lcom/android/internal/app/LocalePicker$LocaleInfo;Landroid/view/LayoutInflater;II)V

    return-object v2

    .end local v6    # "localeInfos":[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v7    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "len":I
    .restart local v23    # "s":Ljava/lang/String;
    :cond_7
    move v12, v13

    .end local v13    # "finalSize":I
    .restart local v12    # "finalSize":I
    goto/16 :goto_1
.end method

.method public static constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInDeveloperMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    const v0, 0x109005a

    const v1, 0x1020184

    invoke-static {p0, v0, v1, p1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;IIZ)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayLanguage(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLanguageCodes"    # [Ljava/lang/String;
    .param p2, "specialLanguageNames"    # [Ljava/lang/String;

    .prologue
    .line 254
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 257
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    aget-object v2, p2, v1

    .line 262
    :goto_1
    return-object v2

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "specialLocaleCodes"    # [Ljava/lang/String;
    .param p2, "specialLocaleNames"    # [Ljava/lang/String;

    .prologue
    .line 241
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 244
    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    aget-object v2, p2, v1

    .line 249
    :goto_1
    return-object v2

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .restart local p0    # "s":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 303
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 304
    .local v0, "am":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 308
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-virtual {v1, p0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 310
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 312
    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "am":Landroid/app/IActivityManager;
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected isInDeveloperMode()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->isInDeveloperMode()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;Z)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 270
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 271
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 293
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .line 295
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 280
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 281
    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    .line 275
    return-void
.end method
