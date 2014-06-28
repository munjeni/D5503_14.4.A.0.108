.class public Lcom/android/phone/SomcPluginViewManager;
.super Ljava/lang/Object;
.source "SomcPluginViewManager.java"


# static fields
.field private static instance:Lcom/android/phone/SomcPluginViewManager;


# instance fields
.field private mPluginViewPackage:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/SomcPluginViewManager;->instance:Lcom/android/phone/SomcPluginViewManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private static createPluginViewContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 62
    .local v1, "newContext":Landroid/content/Context;
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :cond_0
    :goto_0
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "SomcPluginViewManager"

    const-string v3, "Exception when creating context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getInstance()Lcom/android/phone/SomcPluginViewManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/SomcPluginViewManager;->instance:Lcom/android/phone/SomcPluginViewManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/android/phone/SomcPluginViewManager;

    invoke-direct {v0}, Lcom/android/phone/SomcPluginViewManager;-><init>()V

    sput-object v0, Lcom/android/phone/SomcPluginViewManager;->instance:Lcom/android/phone/SomcPluginViewManager;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/phone/SomcPluginViewManager;->instance:Lcom/android/phone/SomcPluginViewManager;

    return-object v0
.end method

.method private getPluginViewPackage(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "className":Ljava/lang/String;
    const/4 v2, 0x0

    .line 81
    .local v2, "info":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/phone/SomcPluginViewManager;->mPluginViewPackage:Landroid/content/ComponentName;

    if-nez v6, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 83
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 85
    .local v3, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 86
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 88
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.sony.smallapp.launcher.api.CLASS_PHONE_ENTRY"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 91
    new-instance v2, Landroid/content/ComponentName;

    .end local v2    # "info":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v2    # "info":Landroid/content/ComponentName;
    :cond_1
    iput-object v2, p0, Lcom/android/phone/SomcPluginViewManager;->mPluginViewPackage:Landroid/content/ComponentName;

    .line 100
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v2

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SomcPluginViewManager;->mPluginViewPackage:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static instantiatePluginView(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 134
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 135
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    .line 171
    :goto_0
    return-object v0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "SomcPluginViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External plugin view class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "SomcPluginViewManager"

    const-string v2, "External plugin view constructor could not be found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 145
    :catch_2
    move-exception v0

    .line 146
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 147
    const-string v0, "SomcPluginViewManager"

    const-string v2, "Security Exception when obtaining External plugin view constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 149
    :catch_3
    move-exception v0

    .line 150
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 151
    const-string v0, "SomcPluginViewManager"

    const-string v2, "IllegalArgumentException when obtaining External plugin view constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 154
    :catch_4
    move-exception v0

    .line 155
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    .line 156
    const-string v0, "SomcPluginViewManager"

    const-string v2, "InstantiationException when obtaining External plugin view constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 159
    :catch_5
    move-exception v0

    .line 160
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    .line 161
    const-string v0, "SomcPluginViewManager"

    const-string v2, "IllegalAccessException when obtaining External plugin view constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 164
    :catch_6
    move-exception v0

    .line 165
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    .line 166
    const-string v0, "SomcPluginViewManager"

    const-string v2, "InvocationTargetException when obtaining External plugin view constructor"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static validatePluginView(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sonymobile.permission.TASK_SWITCHER_PLUGIN_VIEW"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const/4 v1, 0x1

    .line 117
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v1

    .line 114
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 115
    const-string v1, "SomcPluginViewManager"

    const-string v2, "Validation of external task switcher failed!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPluginView(Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, "pluginView":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/phone/SomcPluginViewManager;->getPluginViewPackage(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v3

    .line 186
    .local v3, "pluginViewInfo":Landroid/content/ComponentName;
    invoke-static {p1, v3}, Lcom/android/phone/SomcPluginViewManager;->validatePluginView(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    .line 190
    .local v4, "validationOk":Z
    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/phone/SomcPluginViewManager;->createPluginViewContext(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 193
    .local v2, "pluginViewContext":Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 195
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v0, v3, v2}, Lcom/android/phone/SomcPluginViewManager;->instantiatePluginView(Ljava/lang/ClassLoader;Landroid/content/ComponentName;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 200
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "pluginViewContext":Landroid/content/Context;
    :cond_0
    return-object v1
.end method
