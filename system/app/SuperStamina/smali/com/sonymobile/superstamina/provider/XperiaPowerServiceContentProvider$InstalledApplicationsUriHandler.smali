.class Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider$InstalledApplicationsUriHandler;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "XperiaPowerServiceContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstalledApplicationsUriHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 189
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v19, Landroid/database/MatrixCursor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "uid"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "package_name"

    aput-object v3, v1, v2

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 198
    .local v19, "result":Landroid/database/MatrixCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 199
    .local v18, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0xb

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v17

    .line 201
    .local v17, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI_WHITELIST_GROUPS:Landroid/net/Uri;
    invoke-static {}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->access$000()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 203
    .local v8, "c":Landroid/database/Cursor;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 205
    .local v9, "filteredPackages":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    const-string v1, "packages"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 206
    .local v14, "packagesIndex":I
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 208
    .local v13, "packages":[Ljava/lang/String;
    move-object v7, v13

    .local v7, "arr$":[Ljava/lang/String;
    array-length v11, v7

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v16, v7, v10

    .line 209
    .local v16, "pkg":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 208
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 213
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "packages":[Ljava/lang/String;
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->CONTENT_URI_WHITELIST_OPERATOR:Landroid/net/Uri;
    invoke-static {}, Lcom/sonymobile/superstamina/provider/XperiaPowerServiceContentProvider;->access$100()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 219
    :try_start_1
    const-string v1, "package"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 220
    .local v12, "packageIndex":I
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 224
    .end local v12    # "packageIndex":I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 213
    .end local v14    # "packagesIndex":I
    :catchall_1
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 224
    .restart local v12    # "packageIndex":I
    .restart local v14    # "packagesIndex":I
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 227
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageInfo;

    .line 228
    .local v15, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v15}, Lcom/sonymobile/superstamina/Util;->isPackageWhitelistable(Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 230
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v15, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 235
    .end local v15    # "pi":Landroid/content/pm/PackageInfo;
    :cond_4
    return-object v19
.end method
