.class public Lcom/sonymobile/superstamina/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/superstamina/Util$1;,
        Lcom/sonymobile/superstamina/Util$Setting;
    }
.end annotation


# static fields
.field public static final LOG_ENABLED:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "SuperStamina"

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "ui"

.field private static final SHOW_DIALOG_IN_THE_FUTURE_STR:Ljava/lang/String; = "show_dialog_in_future"

.field private static final SHOW_POWERSAVE_DIALOG_IN_THE_FUTURE_STR:Ljava/lang/String; = "show_powersave_dialog_in_future"

.field public static final WHITELIST_PM_FLAGS:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static buildIntArrayString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 277
    if-eqz v0, :cond_0

    .line 278
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    :cond_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildIntArrayString([I)Ljava/lang/String;
    .locals 3
    .param p0, "values"    # [I

    .prologue
    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 260
    if-eqz v0, :cond_0

    .line 261
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 263
    :cond_0
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildStringArrayString(Ljava/util/HashSet;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "mIgnoreList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildUidProcesslist(Landroid/content/pm/IPackageManager;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "uid"    # Ljava/lang/Integer;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/stamina/ProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p3, "pis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    const/16 v2, 0xf

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p0, p2, v2, v3}, Lcom/sonymobile/superstamina/Util;->getPackageInfo(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 316
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "activity"

    invoke-static {v2, v3, p2, p3, v4}, Lcom/sonymobile/superstamina/Util;->processComponentInfos([Landroid/content/pm/ComponentInfo;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 317
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "service"

    invoke-static {v2, v3, p2, p3, v4}, Lcom/sonymobile/superstamina/Util;->processComponentInfos([Landroid/content/pm/ComponentInfo;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 318
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "provider"

    invoke-static {v2, v3, p2, p3, v4}, Lcom/sonymobile/superstamina/Util;->processComponentInfos([Landroid/content/pm/ComponentInfo;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 319
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "receiver"

    invoke-static {v2, v3, p2, p3, v4}, Lcom/sonymobile/superstamina/Util;->processComponentInfos([Landroid/content/pm/ComponentInfo;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SuperStamina"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to build process list for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static clearSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;

    .prologue
    .line 161
    const-string v2, "ui"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 163
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/sonymobile/superstamina/Util;->convertToString(Lcom/sonymobile/superstamina/Util$Setting;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    return-void
.end method

.method private static convertToString(Lcom/sonymobile/superstamina/Util$Setting;)Ljava/lang/String;
    .locals 2
    .param p0, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;

    .prologue
    .line 184
    sget-object v0, Lcom/sonymobile/superstamina/Util$1;->$SwitchMap$com$sonymobile$superstamina$Util$Setting:[I

    invoke-virtual {p0}, Lcom/sonymobile/superstamina/Util$Setting;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    const-string v0, ""

    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    const-string v0, "show_dialog_in_future"

    goto :goto_0

    .line 188
    :pswitch_1
    const-string v0, "show_powersave_dialog_in_future"

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDefaultValue(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, "resources":Landroid/content/res/Resources;
    sget-object v1, Lcom/sonymobile/superstamina/Util$1;->$SwitchMap$com$sonymobile$superstamina$Util$Setting:[I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/Util$Setting;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong setting ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :pswitch_0
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 128
    :goto_0
    return v1

    :pswitch_1
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPackageInfo(Landroid/content/pm/IPackageManager;Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 388
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 389
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 390
    return-object v1

    .line 394
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no package with name, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",can be found on the system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/sonymobile/superstamina/Util;->getDefaultValue(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/superstamina/Util;->getSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)Z

    move-result v0

    return v0
.end method

.method public static getSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 100
    sget-object v1, Lcom/sonymobile/superstamina/Util$1;->$SwitchMap$com$sonymobile$superstamina$Util$Setting:[I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/Util$Setting;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 107
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong setting ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :pswitch_0
    const-string v1, "ui"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 105
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/sonymobile/superstamina/Util;->convertToString(Lcom/sonymobile/superstamina/Util$Setting;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static hasSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;

    .prologue
    .line 142
    sget-object v1, Lcom/sonymobile/superstamina/Util$1;->$SwitchMap$com$sonymobile$superstamina$Util$Setting:[I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/Util$Setting;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 149
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong setting ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :pswitch_0
    const-string v1, "ui"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/sonymobile/superstamina/Util;->convertToString(Lcom/sonymobile/superstamina/Util$Setting;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isPackageWhitelistable(Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p0, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 293
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    if-lez v5, :cond_2

    move v0, v3

    .line 294
    .local v0, "hasActivities":Z
    :goto_0
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    if-lez v5, :cond_3

    move v2, v3

    .line 295
    .local v2, "hasReceivers":Z
    :goto_1
    iget-object v5, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v5, v5

    if-lez v5, :cond_4

    move v1, v3

    .line 297
    .local v1, "hasProviders":Z
    :goto_2
    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v0    # "hasActivities":Z
    .end local v1    # "hasProviders":Z
    .end local v2    # "hasReceivers":Z
    :cond_2
    move v0, v4

    .line 293
    goto :goto_0

    .restart local v0    # "hasActivities":Z
    :cond_3
    move v2, v4

    .line 294
    goto :goto_1

    .restart local v2    # "hasReceivers":Z
    :cond_4
    move v1, v4

    .line 295
    goto :goto_2
.end method

.method private static logStaminaStateChangedIddEvent(Z)V
    .locals 4
    .param p0, "newState"    # Z

    .prologue
    .line 197
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;->newBuilder()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v2

    if-eqz p0, :cond_0

    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;->ENABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->setState(Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->setElapsedRealtime(J)Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;

    move-result-object v0

    .line 203
    .local v0, "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    invoke-virtual {v0}, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;->build()Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/idd/api/Idd;->addEvent(Ljava/lang/Object;)V

    .line 209
    .end local v0    # "builder":Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$Builder;
    :goto_1
    return-void

    .line 197
    :cond_0
    sget-object v1, Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;->DISABLED:Lcom/sonyericsson/idd/probe/android/stamina_mode/StaminaMode$StaminaStateChanged$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static parseCommaSeparatedIntArray(Ljava/lang/String;)[I
    .locals 5
    .param p0, "values"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 239
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 240
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [I

    .line 248
    :cond_1
    return-object v3

    .line 242
    :cond_2
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "fields":[Ljava/lang/String;
    array-length v0, v1

    .line 244
    .local v0, "cnt":I
    new-array v3, v0, [I

    .line 245
    .local v3, "tmp":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 246
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseCommaSeparatedStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "values"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static processComponentInfos([Landroid/content/pm/ComponentInfo;ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6
    .param p0, "components"    # [Landroid/content/pm/ComponentInfo;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p4, "logTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/ComponentInfo;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sony/stamina/ProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 328
    .local p3, "pis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sony/stamina/ProcessInfo;>;"
    if-eqz p0, :cond_1

    .line 329
    move-object v0, p0

    .local v0, "arr$":[Landroid/content/pm/ComponentInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 330
    .local v2, "info":Landroid/content/pm/ComponentInfo;
    new-instance v4, Lcom/sony/stamina/ProcessInfo;

    iget-object v5, v2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Lcom/sony/stamina/ProcessInfo;-><init>(ILjava/lang/String;)V

    .line 331
    .local v4, "pi":Lcom/sony/stamina/ProcessInfo;
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 332
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "arr$":[Landroid/content/pm/ComponentInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Landroid/content/pm/ComponentInfo;
    .end local v3    # "len$":I
    .end local v4    # "pi":Lcom/sony/stamina/ProcessInfo;
    :cond_1
    return-void
.end method

.method public static saveSetting(Landroid/content/Context;Lcom/sonymobile/superstamina/Util$Setting;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "theSetting"    # Lcom/sonymobile/superstamina/Util$Setting;
    .param p2, "enabled"    # Z

    .prologue
    .line 76
    sget-object v2, Lcom/sonymobile/superstamina/Util$1;->$SwitchMap$com$sonymobile$superstamina$Util$Setting:[I

    invoke-virtual {p1}, Lcom/sonymobile/superstamina/Util$Setting;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 79
    :pswitch_0
    const-string v2, "ui"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 81
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/sonymobile/superstamina/Util;->convertToString(Lcom/sonymobile/superstamina/Util$Setting;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static sendStickyIntentUpdate(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newState"    # Z

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.SUPER_STAMINA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 180
    invoke-static {p1}, Lcom/sonymobile/superstamina/Util;->logStaminaStateChangedIddEvent(Z)V

    .line 181
    return-void
.end method
