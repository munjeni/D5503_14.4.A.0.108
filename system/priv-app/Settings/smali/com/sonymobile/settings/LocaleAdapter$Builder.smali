.class public Lcom/sonymobile/settings/LocaleAdapter$Builder;
.super Ljava/lang/Object;
.source "LocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/LocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomizedCountry:Ljava/lang/String;

.field private mCustomizedLanguage:Ljava/lang/String;

.field private mDefaultSimCountry:Ljava/lang/String;

.field private mDefaultSwCountry:Ljava/lang/String;

.field private mDefaultSwLanguage:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    .line 187
    return-void
.end method

.method private buildLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "fwkLocaleList":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v13, 0x0

    const/4 v10, 0x0

    .line 252
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v8, "localeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v4, 0x0

    .line 255
    .local v4, "isSwLocaleValid":Z
    const/4 v3, 0x0

    .line 256
    .local v3, "isSimCountryValid":Z
    const/4 v9, 0x0

    .line 258
    .local v9, "topLanguageFound":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v11

    if-ge v2, v11, :cond_4

    .line 259
    invoke-virtual {p1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 260
    .local v7, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {v7}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 262
    .local v5, "l":Ljava/util/Locale;
    invoke-direct {p0, v5}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 263
    const/4 v9, 0x1

    .line 267
    :cond_0
    if-nez v4, :cond_1

    .line 268
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v4, 0x1

    .line 271
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 272
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 258
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v4, v10

    .line 268
    goto :goto_1

    .line 276
    .end local v5    # "l":Ljava/util/Locale;
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_4
    if-nez v9, :cond_5

    .line 278
    invoke-direct {p0, v4, v3}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->changeStateWhenNoDefaultLocale(ZZ)V

    .line 285
    :cond_5
    const/4 v1, 0x0

    .line 286
    .local v1, "divider":I
    const/4 v0, 0x0

    .line 287
    .local v0, "defaultLocale":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v2, v11, -0x1

    .line 288
    :cond_6
    :goto_2
    if-lt v2, v1, :cond_8

    .line 289
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 290
    .local v6, "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    .line 291
    .restart local v5    # "l":Ljava/util/Locale;
    invoke-direct {p0, v5}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 292
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v8, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 296
    :cond_7
    add-int/lit8 v2, v2, -0x1

    .line 297
    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 298
    move-object v0, v6

    goto :goto_2

    .line 304
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_8
    if-eqz v1, :cond_9

    iget v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    .line 305
    new-instance v5, Ljava/util/Locale;

    iget-object v11, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    iget-object v12, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-direct {v5, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .restart local v5    # "l":Ljava/util/Locale;
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    .line 308
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 309
    .restart local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 310
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v8, v10, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 318
    .end local v5    # "l":Ljava/util/Locale;
    .end local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_9
    new-instance v10, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct {v10, v13, v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 319
    if-eqz v0, :cond_a

    .line 320
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 321
    invoke-virtual {v8, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 323
    :cond_a
    return-object v8

    .line 307
    .restart local v5    # "l":Ljava/util/Locale;
    .restart local v6    # "loc":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private changeStateWhenNoDefaultLocale(ZZ)V
    .locals 3
    .param p1, "isSwLocaleValid"    # Z
    .param p2, "isSimCountryValid"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 333
    iget v0, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 356
    :pswitch_0
    const-string v0, "LocaleAdapter.Builder"

    const-string v1, "Error, wrong state. Defaulting to resolve default locale"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    .line 360
    :goto_0
    return-void

    .line 336
    :pswitch_1
    if-eqz p2, :cond_0

    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 338
    :cond_0
    if-eqz p1, :cond_1

    .line 339
    iput v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 341
    :cond_1
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 345
    :pswitch_2
    if-eqz p1, :cond_2

    .line 346
    iput v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 348
    :cond_2
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 352
    :pswitch_3
    iput v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_0

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isDefaultLocale(Ljava/util/Locale;)Z
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "isDefaultLocale":Z
    if-eqz p1, :cond_0

    .line 370
    iget v3, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    packed-switch v3, :pswitch_data_0

    .line 389
    const-string v1, "LocaleAdapter.Builder"

    const-string v2, "Error, unsupported state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    :goto_0
    return v0

    .line 372
    :pswitch_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 374
    :goto_1
    goto :goto_0

    :cond_1
    move v0, v2

    .line 372
    goto :goto_1

    .line 376
    :pswitch_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 377
    goto :goto_0

    .line 379
    :pswitch_2
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 380
    goto :goto_0

    .line 382
    :pswitch_3
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 384
    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    .line 382
    goto :goto_2

    .line 386
    :pswitch_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 387
    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setUpDefaultLocales()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x1

    const/4 v9, 0x5

    const/4 v7, 0x0

    .line 201
    iget-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 202
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 204
    .local v3, "manager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    if-ne v5, v9, :cond_0

    move v2, v6

    .line 208
    .local v2, "isSimReady":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSimCountry:Ljava/lang/String;

    .line 210
    const-string v5, "ro.product.locale.language"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwLanguage:Ljava/lang/String;

    .line 211
    const-string v5, "ro.product.locale.region"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mDefaultSwCountry:Ljava/lang/String;

    .line 214
    const v5, 0x7f0b0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "custLocaleStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 218
    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedCountry:Ljava/lang/String;

    .line 219
    const/4 v5, 0x2

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mCustomizedLanguage:Ljava/lang/String;

    .line 221
    const v5, 0x7f09000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 223
    .local v0, "custLocaleSortOrderSingle":Z
    if-eqz v0, :cond_2

    .line 224
    iput v10, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    .line 233
    .end local v0    # "custLocaleSortOrderSingle":Z
    :goto_2
    return-void

    .end local v1    # "custLocaleStr":Ljava/lang/String;
    .end local v2    # "isSimReady":Z
    :cond_0
    move v2, v7

    .line 204
    goto :goto_0

    .line 208
    .restart local v2    # "isSimReady":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 226
    .restart local v0    # "custLocaleSortOrderSingle":Z
    .restart local v1    # "custLocaleStr":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x4

    iput v5, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_2

    .line 228
    .end local v0    # "custLocaleSortOrderSingle":Z
    :cond_3
    if-eqz v2, :cond_4

    .line 229
    iput v7, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_2

    .line 231
    :cond_4
    iput v6, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mState:I

    goto :goto_2
.end method


# virtual methods
.method public create()Lcom/sonymobile/settings/LocaleAdapter;
    .locals 4

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->setUpDefaultLocales()V

    .line 192
    iget-object v1, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 194
    .local v0, "fwkLocaleList":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    new-instance v1, Lcom/sonymobile/settings/LocaleAdapter;

    iget-object v2, p0, Lcom/sonymobile/settings/LocaleAdapter$Builder;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonymobile/settings/LocaleAdapter$Builder;->buildLanguageList(Landroid/widget/ArrayAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/settings/LocaleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-object v1
.end method
