.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForceQuit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Label;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

.field public static final enum DURING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    const-string v1, "DURING_RECORDING"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;->DURING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;->DURING_RECORDING:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$ForceQuit;

    return-object v0
.end method