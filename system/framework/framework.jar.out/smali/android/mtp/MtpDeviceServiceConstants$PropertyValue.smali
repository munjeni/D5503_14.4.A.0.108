.class Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;
.super Ljava/lang/Object;
.source "MtpDeviceServiceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDeviceServiceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PropertyValue"
.end annotation


# instance fields
.field final mDataType:I

.field mLongValue:J

.field final mPropertyCode:I

.field mStringValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJ)V
    .locals 1
    .param p1, "property"    # I
    .param p2, "type"    # I
    .param p3, "value"    # J

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p1, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mPropertyCode:I

    .line 283
    iput p2, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mDataType:I

    .line 284
    iput-wide p3, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mLongValue:J

    .line 285
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mStringValue:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1, "property"    # I
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p1, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mPropertyCode:I

    .line 290
    iput p2, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mDataType:I

    .line 291
    iput-object p3, p0, Landroid/mtp/MtpDeviceServiceConstants$PropertyValue;->mStringValue:Ljava/lang/String;

    .line 292
    return-void
.end method
