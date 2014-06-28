.class Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
.super Ljava/lang/Object;
.source "MtpDeviceServiceDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDeviceServiceDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnchorInfo"
.end annotation


# instance fields
.field _id:I

.field anchor:Ljava/lang/String;

.field isValid:I

.field objectId:I

.field serviceId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
