.class public Landroid/content/pm/RuntimeSkinVerificationInfo;
.super Ljava/lang/Object;
.source "RuntimeSkinVerificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/RuntimeSkinVerificationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public assetPath:Ljava/lang/String;

.field public digest:Landroid/content/pm/RuntimeSkinDigest;

.field public targetPackageName:Ljava/lang/String;

.field public targetSignatures:[Landroid/content/pm/Signature;

.field public targetVersionCode:I

.field public valid:Z

.field public verified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Landroid/content/pm/RuntimeSkinVerificationInfo$1;

    invoke-direct {v0}, Landroid/content/pm/RuntimeSkinVerificationInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/RuntimeSkinVerificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetVersionCode:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->valid:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/RuntimeSkinDigest;->createDigestFromString(Ljava/lang/String;)Landroid/content/pm/RuntimeSkinDigest;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    .line 51
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetSignatures:[Landroid/content/pm/Signature;

    .line 52
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    :cond_1
    move v1, v2

    .line 49
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/RuntimeSkinVerificationInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/RuntimeSkinVerificationInfo$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/content/pm/RuntimeSkinVerificationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->assetPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-boolean v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->verified:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->valid:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->targetSignatures:[Landroid/content/pm/Signature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 110
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v1, v2

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Landroid/content/pm/RuntimeSkinVerificationInfo;->digest:Landroid/content/pm/RuntimeSkinDigest;

    invoke-virtual {v0}, Landroid/content/pm/RuntimeSkinDigest;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
