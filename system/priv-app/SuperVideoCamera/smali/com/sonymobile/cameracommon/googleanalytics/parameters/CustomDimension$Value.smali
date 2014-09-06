.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;
.super Ljava/lang/Enum;
.source "CustomDimension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum HOME:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum HW_CAMERA_KEY_SLEEP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum LOCK_SCREEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum ONE_SHOT_APP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum SAME_PACKAGE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

.field public static final enum SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;


# instance fields
.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "BUILD_MODEL"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 30
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "BUILD_ID"

    sget-object v2, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-direct {v0, v1, v5, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 33
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "SAMPLE_RATE"

    invoke-static {}, Lcom/google/analytics/tracking/android/EasyTracker;->getTracker()Lcom/google/analytics/tracking/android/Tracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/tracking/android/Tracker;->getSampleRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 36
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "BUILD_TYPE"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-direct {v0, v1, v7, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 39
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "LOCK_SCREEN"

    const-string v2, "LOCK_SCREEN"

    invoke-direct {v0, v1, v8, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->LOCK_SCREEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 40
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "HW_CAMERA_KEY"

    const/4 v2, 0x5

    const-string v3, "HW_CAMERA_KEY"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 41
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "HW_CAMERA_KEY_SLEEP"

    const/4 v2, 0x6

    const-string v3, "HW_CAMERA_KEY_SLEEP"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HW_CAMERA_KEY_SLEEP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 42
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "HOME"

    const/4 v2, 0x7

    const-string v3, "HOME"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HOME:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 43
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "ONE_SHOT_APP"

    const/16 v2, 0x8

    const-string v3, "ONE_SHOT_APP"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 44
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "SAME_PACKAGE"

    const/16 v2, 0x9

    const-string v3, "SAME_PACKAGE"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->SAME_PACKAGE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 45
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "MODE_SELECTOR"

    const/16 v2, 0xa

    const-string v3, "MODE_SELECTOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 46
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    const-string v1, "OTHER"

    const/16 v2, 0xb

    const-string v3, "OTHER"

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_MODEL:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_ID:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->SAMPLE_RATE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->BUILD_TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->LOCK_SCREEN:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HW_CAMERA_KEY:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HW_CAMERA_KEY_SLEEP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->HOME:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->ONE_SHOT_APP:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->SAME_PACKAGE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->MODE_SELECTOR:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->OTHER:Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->mName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/CustomDimension$Value;

    return-object v0
.end method
