.class public Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;
.super Lcom/sonymobile/superstamina/provider/BaseUriHandler;
.source "PowerSaverUriFeatures.java"


# static fields
.field private static final FEATURE_LIST:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Brightness"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "AutoSync"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BT"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "DataTraffic"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Gamma"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GPS"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "haptic"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BraviaEngine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "xLOUD"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "XReality"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;->FEATURE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private getFeature(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 81
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v5

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-p"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
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
    const/4 v9, 0x0

    .line 62
    move-object v3, p3

    .line 63
    .local v3, "id":Ljava/lang/String;
    new-instance v5, Landroid/database/MatrixCursor;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "id"

    aput-object v7, v6, v9

    const/4 v7, 0x1

    const-string v8, "overriden"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "param"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "saved_state"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "state"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "available"

    aput-object v8, v6, v7

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 67
    .local v5, "result":Landroid/database/MatrixCursor;
    if-eqz v3, :cond_1

    .line 68
    invoke-direct {p0, v3}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;->getFeature(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-object v5

    .line 70
    :cond_1
    sget-object v0, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;->FEATURE_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 72
    .local v1, "feature":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 73
    invoke-direct {p0, v1}, Lcom/sonymobile/superstamina/provider/powersaver/PowerSaverUriFeatures;->getFeature(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 70
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 39
    move-object v2, p3

    .line 40
    .local v2, "id":Ljava/lang/String;
    const-string v7, "param"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 41
    .local v4, "param":Ljava/lang/Integer;
    const-string v7, "overriden"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 42
    .local v3, "overriden":Ljava/lang/Boolean;
    const-string v7, "saved_state"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 43
    .local v5, "savedState":Ljava/lang/Integer;
    const-string v7, "state"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 44
    .local v6, "state":Ljava/lang/Integer;
    const-string v7, "available"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 46
    .local v1, "featureAvailable":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v0, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    :cond_0
    if-eqz v4, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-p"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    :cond_1
    if-eqz v5, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    :cond_2
    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 52
    :cond_3
    if-eqz v1, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    :cond_4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/provider/BaseUriHandler;->notifyChanged()V

    .line 56
    const/4 v7, 0x0

    return v7
.end method
