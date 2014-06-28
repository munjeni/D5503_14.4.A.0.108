.class Landroid/content/pm/RuntimeSkinInfo$VersionCodeFilter;
.super Landroid/content/pm/RuntimeSkinInfo$Filter;
.source "RuntimeSkinInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RuntimeSkinInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionCodeFilter"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rangeStart"    # Ljava/lang/Integer;
    .param p2, "rangeEnd"    # Ljava/lang/Integer;

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo$Filter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 128
    return-void
.end method


# virtual methods
.method getValidity(Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 135
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 136
    .local v0, "ver":I
    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeStart:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeStart:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeEnd:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeEnd:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 138
    :cond_1
    const/4 v1, 0x0

    .line 140
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
