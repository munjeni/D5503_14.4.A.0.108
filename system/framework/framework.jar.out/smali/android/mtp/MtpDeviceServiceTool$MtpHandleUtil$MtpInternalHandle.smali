.class Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;
.super Ljava/lang/Object;
.source "MtpDeviceServiceTool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MtpInternalHandle"
.end annotation


# instance fields
.field final type:I

.field final value:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "t"    # I
    .param p2, "v"    # I

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput p1, p0, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;->type:I

    .line 422
    iput p2, p0, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;->value:I

    .line 423
    return-void
.end method
