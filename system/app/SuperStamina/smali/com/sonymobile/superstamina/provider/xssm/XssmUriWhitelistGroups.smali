.class public Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "XssmUriWhitelistGroups.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups$WifiCallingGroup;
    }
.end annotation


# static fields
.field private static final WHERE_GROUP_RULE:Ljava/lang/String; = "\\s*group\\s*=\\s*\\?\\s*"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 42
    if-eqz p3, :cond_1

    const-string v4, "\\s*group\\s*=\\s*\\?\\s*"

    invoke-virtual {p3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    array-length v4, p4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 44
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Wrong selection format, should be \'group=?\' and one selectionArgs"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_1
    new-instance v2, Landroid/database/MatrixCursor;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "label"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "icon"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "settingIntentPkg"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "settingIntentCls"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "infoIntentPkg"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "infoIntentCls"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "packages"

    aput-object v6, v4, v5

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 53
    .local v2, "result":Landroid/database/MatrixCursor;
    if-nez p3, :cond_4

    const-string v0, "*"

    .line 55
    .local v0, "groupName":Ljava/lang/String;
    :goto_0
    const-string v4, "wificalling"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "*"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/superstamina/provider/xssm/XssmUriWhitelistGroups$WifiCallingGroup;->isPresent(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "packages":[Ljava/lang/String;
    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "com.movial.wificall:string/wificalling_label"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "com.movial.wificall:mipmap/ic_launcher_wifi_calling"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "com.movial.wificall"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "com.movial.wificall.PrefSettings"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "com.movial.wificall"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "com.movial.wificall.Questions"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, ","

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    .local v3, "values":[Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 68
    .end local v1    # "packages":[Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_3
    return-object v2

    .line 53
    .end local v0    # "groupName":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
