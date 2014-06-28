.class Landroid/mtp/MtpContactServiceDB$PropertyIndex;
.super Ljava/lang/Object;
.source "MtpContactServiceDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpContactServiceDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyIndex"
.end annotation


# instance fields
.field homePhoneIndex:I

.field imIndex:I

.field mobilePhoneIndex:I

.field personalEmailIndex:I

.field webSiteIndex:I

.field workEmailIndex:I

.field workPhoneIndex:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workPhoneIndex:I

    .line 447
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->mobilePhoneIndex:I

    .line 448
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->homePhoneIndex:I

    .line 449
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->workEmailIndex:I

    .line 450
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->personalEmailIndex:I

    .line 451
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->imIndex:I

    .line 452
    iput v0, p0, Landroid/mtp/MtpContactServiceDB$PropertyIndex;->webSiteIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpContactServiceDB$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/mtp/MtpContactServiceDB$1;

    .prologue
    .line 445
    invoke-direct {p0}, Landroid/mtp/MtpContactServiceDB$PropertyIndex;-><init>()V

    return-void
.end method
