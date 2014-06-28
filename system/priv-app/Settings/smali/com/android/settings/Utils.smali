.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleResId"    # I
    .param p2, "positiveAction"    # Ljava/lang/Runnable;

    .prologue
    .line 592
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 593
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 594
    const v1, 0x7f0b0851

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 595
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/Utils$1;

    invoke-direct {v2, p2}, Lcom/android/settings/Utils$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 601
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 603
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v5, 0x1

    .line 496
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 498
    .local v1, "contactUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v1, v5}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 502
    .local v0, "avatarDataStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 503
    const/4 v5, 0x0

    .line 512
    :goto_0
    return v5

    .line 505
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 506
    .local v4, "userId":I
    :goto_1
    const-string v6, "user"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 507
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 508
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3, v4, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 510
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 511
    :catch_0
    move-exception v6

    goto :goto_0

    .line 505
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userId":I
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    goto :goto_1
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    if-nez p0, :cond_0

    .line 381
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 382
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "brokenDownLocale":[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 385
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 387
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 389
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 1
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/widget/ListView;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    .line 438
    const/high16 v0, 0x2000000

    invoke-virtual {p2, v0}, Landroid/widget/AbsListView;->setScrollBarStyle(I)V

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 440
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 441
    return-void
.end method

.method private static formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;
    .locals 4
    .param p0, "prop"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x0

    .line 360
    if-nez p0, :cond_1

    .line 370
    :cond_0
    return-object v0

    .line 361
    :cond_1
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 363
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 365
    const-string v0, ""

    .line 366
    .local v0, "addresses":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 398
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 399
    .local v0, "level":I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 400
    .local v1, "scale":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 9
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 404
    move-object v0, p1

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, "plugType":I
    const-string v5, "status"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 410
    .local v3, "status":I
    if-ne v3, v8, :cond_3

    .line 411
    const v5, 0x7f0b00f1

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 412
    .local v4, "statusString":Ljava/lang/String;
    if-lez v1, :cond_0

    .line 414
    if-ne v1, v7, :cond_1

    .line 415
    const v2, 0x7f0b00f2

    .line 421
    .local v2, "resId":I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 433
    .end local v2    # "resId":I
    :cond_0
    :goto_1
    return-object v4

    .line 416
    :cond_1
    if-ne v1, v8, :cond_2

    .line 417
    const v2, 0x7f0b00f3

    .restart local v2    # "resId":I
    goto :goto_0

    .line 419
    .end local v2    # "resId":I
    :cond_2
    const v2, 0x7f0b00f4

    .restart local v2    # "resId":I
    goto :goto_0

    .line 423
    .end local v2    # "resId":I
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x3

    if-ne v3, v5, :cond_4

    .line 424
    const v5, 0x7f0b00f5

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 425
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 426
    const v5, 0x7f0b00f6

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 427
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x5

    if-ne v3, v5, :cond_6

    .line 428
    const v5, 0x7f0b00f7

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1

    .line 430
    .end local v4    # "statusString":Ljava/lang/String;
    :cond_6
    const v5, 0x7f0b00f0

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "statusString":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 355
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 356
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 529
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 533
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v11

    const-string v3, "account_type IS NULL AND account_name IS NULL"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    .local v6, "localRawProfile":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-object v4

    .line 542
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 545
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v7

    .line 547
    .local v7, "localRowProfileId":J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 551
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "data2"

    aput-object v3, v2, v11

    const-string v3, "data3"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 557
    .local v10, "structuredName":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 560
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_3

    .line 569
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 547
    .end local v7    # "localRowProfileId":J
    .end local v10    # "structuredName":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 563
    .restart local v7    # "localRowProfileId":J
    .restart local v10    # "structuredName":Landroid/database/Cursor;
    :cond_3
    const/4 v1, 0x0

    :try_start_3
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 564
    .local v9, "partialName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 565
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v9

    .line 569
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object v4, v9

    goto :goto_0

    .end local v9    # "partialName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static getMeProfileName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "full"    # Z

    .prologue
    .line 516
    if-eqz p1, :cond_0

    .line 517
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 519
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 574
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 575
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 577
    .local v6, "profile":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 585
    :goto_0
    return-object v3

    .line 580
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 585
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 583
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 585
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static getShorterNameIfPossible(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    invoke-static {p0}, Lcom/android/settings/Utils;->getLocalProfileGivenName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "given":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .end local v0    # "given":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "given":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getProfileDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 10
    .param p0, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    const v8, 0x7f0b0448

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 469
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 470
    .local v3, "usbRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 471
    .local v5, "wifiRegexs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "bluetoothRegexs":[Ljava/lang/String;
    array-length v9, v3

    if-eqz v9, :cond_0

    move v2, v6

    .line 474
    .local v2, "usbAvailable":Z
    :goto_0
    array-length v9, v5

    if-eqz v9, :cond_1

    move v4, v6

    .line 475
    .local v4, "wifiAvailable":Z
    :goto_1
    array-length v9, v1

    if-eqz v9, :cond_2

    move v0, v6

    .line 477
    .local v0, "bluetoothAvailable":Z
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v6, v8

    .line 490
    :goto_3
    return v6

    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v4    # "wifiAvailable":Z
    :cond_0
    move v2, v7

    .line 473
    goto :goto_0

    .restart local v2    # "usbAvailable":Z
    :cond_1
    move v4, v7

    .line 474
    goto :goto_1

    .restart local v4    # "wifiAvailable":Z
    :cond_2
    move v0, v7

    .line 475
    goto :goto_2

    .line 479
    .restart local v0    # "bluetoothAvailable":Z
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    move v6, v8

    .line 480
    goto :goto_3

    .line 481
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    move v6, v8

    .line 482
    goto :goto_3

    .line 483
    :cond_5
    if-eqz v4, :cond_6

    .line 484
    const v6, 0x7f0b0445

    goto :goto_3

    .line 485
    :cond_6
    if-eqz v2, :cond_7

    if-eqz v0, :cond_7

    .line 486
    const v6, 0x7f0b0447

    goto :goto_3

    .line 487
    :cond_7
    if-eqz v2, :cond_8

    .line 488
    const v6, 0x7f0b0444

    goto :goto_3

    .line 490
    :cond_8
    const v6, 0x7f0b0446

    goto :goto_3
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 342
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    .line 343
    .local v1, "prop":Landroid/net/LinkProperties;
    invoke-static {v1}, Lcom/android/settings/Utils;->formatIpAddresses(Landroid/net/LinkProperties;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasMultipleUsers(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 607
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBatteryPresent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "batteryChangedIntent"    # Landroid/content/Intent;

    .prologue
    .line 394
    const-string v0, "present"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 323
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 325
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 329
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V
    .locals 9
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "child"    # Landroid/view/View;
    .param p2, "list"    # Landroid/view/View;
    .param p3, "ignoreSidePadding"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 450
    invoke-virtual {p2}, Landroid/view/View;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x2000000

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 451
    .local v1, "movePadding":Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 454
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 455
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x7f0d0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 456
    .local v3, "paddingSide":I
    const v5, 0x105002a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 459
    .local v2, "paddingBottom":I
    if-eqz p3, :cond_2

    move v0, v6

    .line 460
    .local v0, "effectivePaddingSide":I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 462
    .end local v0    # "effectivePaddingSide":I
    .end local v2    # "paddingBottom":I
    .end local v3    # "paddingSide":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1    # "movePadding":Z
    :cond_1
    move v1, v6

    .line 450
    goto :goto_0

    .restart local v1    # "movePadding":Z
    .restart local v2    # "paddingBottom":I
    .restart local v3    # "paddingSide":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v0, v3

    .line 459
    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Landroid/graphics/drawable/Drawable;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "header"    # Landroid/preference/PreferenceActivity$Header;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Landroid/preference/PreferenceActivity$Header;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 256
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 259
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v12, 0x80

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 260
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 261
    .local v5, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 262
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 263
    .local v9, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 267
    .local v11, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 271
    .local v10, "summary":Ljava/lang/String;
    :try_start_0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 273
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 275
    .local v6, "metaData":Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 276
    const-string v12, "com.android.settings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 277
    const-string v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 278
    const-string v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 288
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v8    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 289
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 295
    :cond_1
    move-object/from16 v0, p2

    iput-object v11, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 296
    move-object/from16 v0, p2

    iput-object v10, v0, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 298
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 309
    .end local v1    # "i":I
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "listSize":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "summary":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 261
    .restart local v1    # "i":I
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "listSize":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "listSize":I
    .end local v7    # "pm":Landroid/content/pm/PackageManager;
    .end local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 309
    const/4 v2, 0x0

    goto :goto_2

    .line 282
    .restart local v1    # "i":I
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "listSize":I
    .restart local v7    # "pm":Landroid/content/pm/PackageManager;
    .restart local v9    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10    # "summary":Ljava/lang/String;
    .restart local v11    # "title":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 280
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentPreferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preferenceKey"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v7, 0x0

    .line 127
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 128
    .local v5, "preference":Landroid/preference/Preference;
    if-nez v5, :cond_0

    .line 161
    :goto_0
    return v7

    .line 132
    :cond_0
    invoke-virtual {v5}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 136
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 138
    .local v3, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 139
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 140
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    .line 144
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 148
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 150
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 138
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "listSize":I
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
