.class public Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorHandlingInfo"
.end annotation


# instance fields
.field public mCrashLevel:I

.field public final mDebugBuild:Z

.field public final mDropboxType:Ljava/lang/String;

.field public final mEventType:Ljava/lang/String;

.field public final mProcessName:Ljava/lang/String;

.field public mSystemAppCrash:Z

.field public mSystemCrash:Z

.field public mSystemDump:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pn"    # Ljava/lang/String;
    .param p2, "dbt"    # Ljava/lang/String;
    .param p3, "et"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 16802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16803
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mProcessName:Ljava/lang/String;

    .line 16804
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mDropboxType:Ljava/lang/String;

    .line 16805
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mEventType:Ljava/lang/String;

    .line 16806
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "userdebug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mDebugBuild:Z

    .line 16807
    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mSystemDump:Z

    .line 16808
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$ErrorHandlingInfo;->mCrashLevel:I

    .line 16809
    return-void

    :cond_1
    move v0, v1

    .line 16806
    goto :goto_0
.end method
