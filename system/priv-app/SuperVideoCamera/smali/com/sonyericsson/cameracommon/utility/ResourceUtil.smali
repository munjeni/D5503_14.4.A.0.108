.class public Lcom/sonyericsson/cameracommon/utility/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# static fields
.field public static final INVALID_RESOURCE_ID:I = -0x1

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cameracommon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 89
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 95
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 97
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 164
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getColorStateList(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/res/ColorStateList;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 170
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 172
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDimension(Landroid/content/Context;I)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 149
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimension(Landroid/content/Context;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getDimension(Landroid/content/Context;Ljava/lang/String;I)F
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 155
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 157
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 134
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 140
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 141
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 142
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 119
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 125
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 126
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 127
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 104
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 110
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 112
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 113
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getInteger(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 74
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 80
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 82
    .end local v0    # "camR":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResourceUtil"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method

.method public static getLayout(Landroid/content/Context;ILandroid/view/ViewGroup;Landroid/view/LayoutInflater$Factory;)Landroid/view/View;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 33
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getLayout(Landroid/content/Context;Ljava/lang/String;ILandroid/view/ViewGroup;Landroid/view/LayoutInflater$Factory;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static getLayout(Landroid/content/Context;Ljava/lang/String;ILandroid/view/ViewGroup;Landroid/view/LayoutInflater$Factory;)Landroid/view/View;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "root"    # Landroid/view/ViewGroup;
    .param p4, "factory"    # Landroid/view/LayoutInflater$Factory;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 40
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 42
    .local v6, "xml":Landroid/content/res/XmlResourceParser;
    const/4 v7, 0x2

    invoke-virtual {p0, p1, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 44
    .local v1, "ctx":Landroid/content/Context;
    const-string v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 46
    .local v3, "inflater":Landroid/view/LayoutInflater;
    if-eqz p4, :cond_0

    .line 47
    invoke-virtual {v3, p4}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 49
    :cond_0
    invoke-virtual {v3, v6, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 53
    .end local v0    # "camR":Landroid/content/res/Resources;
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "xml":Landroid/content/res/XmlResourceParser;
    :goto_0
    return-object v5

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "ResourceUtil"

    const-string v8, ""

    invoke-static {v7, v8, v2}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 58
    const-string v0, "com.sonymobile.cameracommon"

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 64
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "camR":Landroid/content/res/Resources;
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 69
    .end local v0    # "camR":Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ResourceUtil"

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/sonyericsson/cameracommon/utility/CameraLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v3, 0x0

    goto :goto_0
.end method
