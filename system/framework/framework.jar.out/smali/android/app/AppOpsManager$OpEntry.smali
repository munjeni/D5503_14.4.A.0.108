.class public Landroid/app/AppOpsManager$OpEntry;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpEntry"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDuration:I

.field private final mMode:I

.field private final mOp:I

.field private final mRejectTime:J

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 842
    new-instance v0, Landroid/app/AppOpsManager$OpEntry$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$OpEntry$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$OpEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIJJI)V
    .locals 0
    .param p1, "op"    # I
    .param p2, "mode"    # I
    .param p3, "time"    # J
    .param p5, "rejectTime"    # J
    .param p7, "duration"    # I

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput p1, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 790
    iput p2, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 791
    iput-wide p3, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    .line 792
    iput-wide p5, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    .line 793
    iput p7, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 794
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    .line 836
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    .line 840
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 4

    .prologue
    .line 817
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 801
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    return v0
.end method

.method public getOp()I
    .locals 1

    .prologue
    .line 797
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    return v0
.end method

.method public getRejectTime()J
    .locals 2

    .prologue
    .line 809
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 805
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 813
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 827
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mOp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 830
    iget-wide v0, p0, Landroid/app/AppOpsManager$OpEntry;->mRejectTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 831
    iget v0, p0, Landroid/app/AppOpsManager$OpEntry;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 832
    return-void
.end method
