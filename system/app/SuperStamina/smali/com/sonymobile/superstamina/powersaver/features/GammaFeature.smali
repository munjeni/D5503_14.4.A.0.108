.class public Lcom/sonymobile/superstamina/powersaver/features/GammaFeature;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "GammaFeature.java"


# static fields
.field public static final FILE_GAMMA_SETTING:Ljava/lang/String; = "/sys/devices/platform/mipi_dsi.524288/eco_mode"


# instance fields
.field private mService:Lcom/sonymobile/superstamina/XperiaPowerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/superstamina/XperiaPowerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/sonymobile/superstamina/XperiaPowerService;

    .prologue
    .line 23
    const-string v0, "Gamma"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 24
    iput-object p2, p0, Lcom/sonymobile/superstamina/powersaver/features/GammaFeature;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    .line 25
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GammaFeature;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/XperiaPowerService;->enableGamma(Z)V

    .line 37
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/mipi_dsi.524288/eco_mode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method protected restoreSetting(I)V
    .locals 2
    .param p1, "savedState"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/GammaFeature;->mService:Lcom/sonymobile/superstamina/XperiaPowerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/superstamina/XperiaPowerService;->enableGamma(Z)V

    .line 48
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected startListening()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method protected stopListening()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
