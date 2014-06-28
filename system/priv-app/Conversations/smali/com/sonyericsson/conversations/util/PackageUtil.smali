.class public Lcom/sonyericsson/conversations/util/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# static fields
.field public static final NOTES_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.notes"

.field public static final SKETCH_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.sketch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNotesPickerAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 58
    const-string v5, "com.sonymobile.notes"

    invoke-static {v5, p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 59
    .local v2, "packageAvailable":Z
    if-nez v2, :cond_0

    .line 70
    :goto_0
    return v4

    .line 63
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v5

    if-nez v5, :cond_1

    .line 64
    new-instance v5, Lcom/sonyericsson/conversations/ui/IntentFactory;

    invoke-direct {v5}, Lcom/sonyericsson/conversations/ui/IntentFactory;-><init>()V

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/IntentFactory;->injectFactory(Lcom/sonyericsson/conversations/ui/IntentFactory;)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getNotesPickerIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v0, v3

    .line 70
    .local v0, "canHandleIntent":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0    # "canHandleIntent":Z
    :cond_2
    move v0, v4

    .line 67
    goto :goto_1

    .restart local v0    # "canHandleIntent":Z
    :cond_3
    move v3, v4

    .line 70
    goto :goto_2
.end method

.method public static isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 82
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSketchAvailable(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 32
    const-string v5, "com.sonymobile.sketch"

    invoke-static {v5, p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isPackageAvailable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v2

    .line 33
    .local v2, "packageAvailable":Z
    if-nez v2, :cond_0

    .line 44
    :goto_0
    return v4

    .line 37
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v5

    if-nez v5, :cond_1

    .line 38
    new-instance v5, Lcom/sonyericsson/conversations/ui/IntentFactory;

    invoke-direct {v5}, Lcom/sonyericsson/conversations/ui/IntentFactory;-><init>()V

    invoke-static {v5}, Lcom/sonyericsson/conversations/ui/IntentFactory;->injectFactory(Lcom/sonyericsson/conversations/ui/IntentFactory;)V

    .line 40
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getSketchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/high16 v6, 0x10000

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v0, v3

    .line 44
    .local v0, "canHandleIntent":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0    # "canHandleIntent":Z
    :cond_2
    move v0, v4

    .line 41
    goto :goto_1

    .restart local v0    # "canHandleIntent":Z
    :cond_3
    move v3, v4

    .line 44
    goto :goto_2
.end method

.method public static isSketchAvailableAndEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDoodleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isSketchAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
