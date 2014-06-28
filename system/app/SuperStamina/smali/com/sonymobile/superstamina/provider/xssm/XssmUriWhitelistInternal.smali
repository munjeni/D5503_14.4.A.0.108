.class public Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistInternal;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "XssmUriWhitelistInternal.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 27
    new-instance v5, Landroid/database/MatrixCursor;

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "package_name"

    aput-object v7, v6, v8

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 28
    .local v5, "result":Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "packages":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 30
    .local v3, "p":Ljava/lang/String;
    new-array v6, v9, [Ljava/lang/String;

    aput-object v3, v6, v8

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    .end local v3    # "p":Ljava/lang/String;
    :cond_0
    return-object v5
.end method
