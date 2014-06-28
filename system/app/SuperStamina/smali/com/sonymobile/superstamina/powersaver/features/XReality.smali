.class public Lcom/sonymobile/superstamina/powersaver/features/XReality;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "XReality.java"


# static fields
.field private static final XREALITY_DEFAULT:I

.field private static final XREALITY_ENABLED:Ljava/lang/String; = "persist.service.swiqi3.enable"

.field private static final XREALITY_OFF:I = 0x0

.field private static final XREALITY_SUPPORTED:Z

.field private static final XREALITY_SUPPORTED_PROPERTY:Ljava/lang/String; = "ro.service.swiqi3.supported"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-string v0, "persist.service.swiqi3.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sonymobile/superstamina/powersaver/features/XReality;->XREALITY_DEFAULT:I

    .line 32
    const-string v0, "ro.service.swiqi3.supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/superstamina/powersaver/features/XReality;->XREALITY_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v0, "XReality"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 42
    return-void
.end method

.method private getCurrentMode()I
    .locals 2

    .prologue
    .line 91
    const-string v0, "persist.service.swiqi3.enable"

    sget v1, Lcom/sonymobile/superstamina/powersaver/features/XReality;->XREALITY_DEFAULT:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setXReality(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 82
    const-string v0, "persist.service.swiqi3.enable"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/XReality;->setXReality(I)V

    .line 57
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/sonymobile/superstamina/powersaver/features/XReality;->XREALITY_SUPPORTED:Z

    return v0
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/XReality;->setXReality(I)V

    .line 62
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/XReality;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected stopListening()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
