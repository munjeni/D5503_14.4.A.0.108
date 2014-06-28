.class final Landroid/mtp/MtpContactServiceDB$ContactMapper;
.super Ljava/lang/Object;
.source "MtpContactServiceDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpContactServiceDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactMapper"
.end annotation


# instance fields
.field final mDataName:Ljava/lang/String;

.field final mIndex:I

.field final mSubType:I

.field final mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    iput-object p1, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mDataName:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mType:Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mSubType:I

    .line 322
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mIndex:I

    .line 323
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "subtype"    # I
    .param p4, "index"    # I

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mDataName:Ljava/lang/String;

    .line 313
    iput-object p2, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mType:Ljava/lang/String;

    .line 314
    iput p3, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mSubType:I

    .line 315
    iput p4, p0, Landroid/mtp/MtpContactServiceDB$ContactMapper;->mIndex:I

    .line 316
    return-void
.end method
