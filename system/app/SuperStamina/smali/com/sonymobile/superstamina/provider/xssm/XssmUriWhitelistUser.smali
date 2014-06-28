.class public Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "XssmUriWhitelistUser.java"


# static fields
.field private static final KEY_USER_WHITELIST:Ljava/lang/String; = "user_whitelist"

.field private static final LOG_TAG:Ljava/lang/String; = "SuperStamina-UserWhitelist"

.field private static final USER_WHITELIST_SHARED_PREFERENCES_DELIMITER:Ljava/lang/String; = ":"

.field private static final USER_WHITELIST_SHARED_PREFERENCES_VER_1:Ljava/lang/String; = "^(\\d)+$"

.field private static final USER_WHITELIST_SHARED_PREFERENCES_VER_2:Ljava/lang/String; = "^([a-zA-Z]+[\\w.])+$"

.field private static final USER_WHITELIST_SHARED_PREFERENCES_VER_3:Ljava/lang/String; = "^([a-zA-Z][\\w\\-.]+)+:[0-9]+$"

.field private static final WHERE_USER_PACKAGE_RULE:Ljava/lang/String; = "\\s*user\\s*=\\s*\\?\\s*and\\s*package\\s*=\\s*\\?"

.field private static final WHERE_USER_RULE:Ljava/lang/String; = "\\s*user\\s*=\\s*\\?\\s*"


# instance fields
.field private mWhitelists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    .line 78
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->readWhitelists()V

    .line 79
    return-void
.end method

.method private addToUserWhitelist(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 206
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->get(I)Ljava/util/HashSet;

    move-result-object v1

    .line 207
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "SuperStamina-UserWhitelist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to parse integer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queryUser(ILandroid/database/MatrixCursor;)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "cursor"    # Landroid/database/MatrixCursor;

    .prologue
    .line 123
    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 124
    .local v1, "whitelist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 126
    .local v2, "wl":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "wl":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private readUserWhitelistOldPackageNameFormat(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->get(I)Ljava/util/HashSet;

    move-result-object v0

    .line 236
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method private readUserWhitelistOldUIDFormat(Ljava/lang/String;)V
    .locals 11
    .param p1, "stringUID"    # Ljava/lang/String;

    .prologue
    .line 218
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 219
    .local v7, "uid":I
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "packages":[Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->get(I)Ljava/util/HashSet;

    move-result-object v4

    .line 221
    .local v4, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v5, :cond_0

    .line 222
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 223
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "uid":I
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "SuperStamina-UserWhitelist"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to parse integer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    return-void
.end method

.method private readWhitelists()V
    .locals 10

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "oldFormat":Z
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "user_whitelist"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "values":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 169
    invoke-static {v6}, Lcom/sonymobile/superstamina/Util;->parseCommaSeparatedStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 170
    .local v2, "item":Ljava/lang/String;
    const-string v7, "^([a-zA-Z][\\w\\-.]+)+:[0-9]+$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 171
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "strs":[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 173
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->addToUserWhitelist(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v5    # "strs":[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_1
    const/4 v4, 0x1

    .line 177
    const-string v7, "^([a-zA-Z]+[\\w.])+$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 178
    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->readUserWhitelistOldPackageNameFormat(Ljava/lang/String;)V

    goto :goto_1

    .line 179
    :cond_2
    const-string v7, "^(\\d)+$"

    invoke-virtual {v2, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 180
    invoke-direct {p0, v2}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->readUserWhitelistOldUIDFormat(Ljava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v2    # "item":Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 185
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->writeUserWhiteList()V

    .line 188
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :cond_4
    return-void
.end method

.method private whitelistPackage(ILjava/lang/String;)V
    .locals 2
    .param p1, "user"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 91
    .local v0, "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 93
    .restart local v0    # "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method private writeUserWhiteList()V
    .locals 11

    .prologue
    .line 245
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 246
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .line 247
    .local v0, "first":Z
    iget-object v8, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 248
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 249
    iget-object v8, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 250
    .local v6, "userId":I
    iget-object v8, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashSet;

    .line 251
    .local v7, "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 252
    .local v3, "pkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 253
    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 248
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "userId":I
    .end local v7    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "user_whitelist"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    array-length v2, p3

    if-ne v2, v4, :cond_2

    const-string v2, "\\s*user\\s*=\\s*\\?\\s*"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    aget-object v2, p3, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 138
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->writeUserWhiteList()V

    .line 139
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    .line 159
    :cond_0
    :goto_0
    return v4

    .line 142
    :cond_1
    aget-object v2, p3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    .local v0, "userId":I
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->writeUserWhiteList()V

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    goto :goto_0

    .line 150
    .end local v0    # "userId":I
    :cond_2
    array-length v2, p3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const-string v2, "\\s*user\\s*=\\s*\\?\\s*and\\s*package\\s*=\\s*\\?"

    invoke-virtual {p2, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    aget-object v2, p3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 152
    .restart local v0    # "userId":I
    iget-object v2, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 153
    .local v1, "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    aget-object v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->writeUserWhiteList()V

    .line 156
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    goto :goto_0

    .line 161
    .end local v0    # "userId":I
    .end local v1    # "wl":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Wrong selection format, should be \'user=?\' or \'user=? and package=?\'"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public get(I)Ljava/util/HashSet;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v1, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 197
    .local v0, "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 199
    .restart local v0    # "userWhiteList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    :cond_0
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->whitelistPackage(ILjava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->writeUserWhiteList()V

    .line 85
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    .line 86
    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    if-eqz p3, :cond_1

    const-string v3, "\\s*user\\s*=\\s*\\?\\s*"

    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, p4

    if-eq v3, v6, :cond_1

    .line 103
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Wrong selection format, should be \'user=?\' and one selectionArgs"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 107
    :cond_1
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "user"

    aput-object v4, v3, v5

    const-string v4, "package"

    aput-object v4, v3, v6

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    .local v1, "result":Landroid/database/MatrixCursor;
    if-nez p3, :cond_2

    const-string v2, "*"

    .line 112
    .local v2, "userId":Ljava/lang/String;
    :goto_0
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 114
    iget-object v3, p0, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->mWhitelists:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->queryUser(ILandroid/database/MatrixCursor;)V

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    .end local v2    # "userId":Ljava/lang/String;
    :cond_2
    aget-object v3, p4, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    .restart local v2    # "userId":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, v1}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistUser;->queryUser(ILandroid/database/MatrixCursor;)V

    .line 119
    :cond_4
    return-object v1
.end method
