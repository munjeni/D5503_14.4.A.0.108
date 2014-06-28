.class public Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
.super Ljava/lang/Object;
.source "FrequencyFormatter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sonyericsson/fmradio/util/FrequencyFormatter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNbrDecimals:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter$1;

    invoke-direct {v0}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sonyericsson/fmradio/util/FrequencyFormatter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/sonyericsson/fmradio/util/FrequencyFormatter$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/stericsson/hardware/fm/FmBand;)V
    .locals 2
    .param p1, "band"    # Lcom/stericsson/hardware/fm/FmBand;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/stericsson/hardware/fm/FmBand;->getChannelOffset()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 91
    :cond_1
    instance-of v3, p1, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    if-nez v3, :cond_2

    move v1, v2

    .line 92
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;

    .line 95
    .local v0, "formatter":Lcom/sonyericsson/fmradio/util/FrequencyFormatter;
    iget v3, v0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    iget v4, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public format(I)Ljava/lang/String;
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    .line 50
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-float v4, p1

    const/high16 v5, 0x447a0000

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumberOfDecimals()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x2a

    return v0
.end method

.method public toggleNbrDecimalsForTest()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    rem-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 68
    iget v0, p0, Lcom/sonyericsson/fmradio/util/FrequencyFormatter;->mNbrDecimals:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
