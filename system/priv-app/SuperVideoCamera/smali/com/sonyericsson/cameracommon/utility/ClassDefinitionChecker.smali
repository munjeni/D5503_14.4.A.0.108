.class public Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;
.super Ljava/lang/Object;
.source "ClassDefinitionChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sIsSuperResolutionProcessorAlreadyChecked:Z

.field private static sIsSuperResolutionProcessorSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    const-class v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->TAG:Ljava/lang/String;

    .line 16
    sput-boolean v1, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorAlreadyChecked:Z

    .line 17
    sput-boolean v1, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorSupported:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkSuperResolutionProcessor()V
    .locals 2

    .prologue
    .line 37
    :try_start_0
    const-string v1, "com.sonymobile.imageprocessor.superresolution.SuperResolutionProcessor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 39
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorSupported:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 40
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 43
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorSupported:Z

    goto :goto_0
.end method

.method public static isSuperResolutionProcessorSupported()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorAlreadyChecked:Z

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->checkSuperResolutionProcessor()V

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorAlreadyChecked:Z

    .line 32
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/ClassDefinitionChecker;->sIsSuperResolutionProcessorSupported:Z

    return v0
.end method
