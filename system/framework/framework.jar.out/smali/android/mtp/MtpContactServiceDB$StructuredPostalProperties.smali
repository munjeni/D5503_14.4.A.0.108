.class final Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;
.super Ljava/lang/Object;
.source "MtpContactServiceDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpContactServiceDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StructuredPostalProperties"
.end annotation


# instance fields
.field addressFull:I

.field city:I

.field country:I

.field postalCode:I

.field region:I

.field street:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "addressFull"    # I
    .param p2, "country"    # I
    .param p3, "region"    # I
    .param p4, "city"    # I
    .param p5, "street"    # I
    .param p6, "postalCode"    # I

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput p1, p0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->addressFull:I

    .line 724
    iput p2, p0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->country:I

    .line 725
    iput p3, p0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->region:I

    .line 726
    iput p4, p0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->city:I

    .line 727
    iput p5, p0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->street:I

    .line 728
    iput p6, p0, Landroid/mtp/MtpContactServiceDB$StructuredPostalProperties;->postalCode:I

    .line 729
    return-void
.end method
