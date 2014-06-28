.class abstract Lcom/sonyericsson/conversations/settings/RROSettingsManager;
.super Ljava/lang/Object;
.source "ResourceSettings.java"


# static fields
.field protected static final RES_TYPE_BOOL:Ljava/lang/String; = "bool"

.field protected static final RES_TYPE_INTEGER:Ljava/lang/String; = "integer"

.field protected static final RES_TYPE_STRING:Ljava/lang/String; = "string"

.field private static final TAG:Ljava/lang/String; = "RROSettingsManager"


# instance fields
.field protected mResources:Landroid/content/res/Resources;

.field protected mSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    .line 49
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    const-string v0, "RROSettingsManager"

    const-string v1, "invalid parameter"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mResources:Landroid/content/res/Resources;

    .line 55
    iput-object p2, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    goto :goto_0
.end method


# virtual methods
.method public containKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/settings/RROSettingsManager;->mSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract getBoolean(Ljava/lang/String;Z)Z
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
