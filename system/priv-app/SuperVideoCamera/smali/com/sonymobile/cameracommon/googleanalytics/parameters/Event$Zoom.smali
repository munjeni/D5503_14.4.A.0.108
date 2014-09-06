.class public final enum Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;
.super Ljava/lang/Enum;
.source "Event.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Zoom"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;",
        ">;",
        "Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

.field public static final enum TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

.field public static final enum VALUE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    const-string v1, "TYPE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;->TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    .line 49
    new-instance v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;->VALUE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;->TYPE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;->VALUE:Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;->$VALUES:[Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/cameracommon/googleanalytics/parameters/Event$Zoom;

    return-object v0
.end method
