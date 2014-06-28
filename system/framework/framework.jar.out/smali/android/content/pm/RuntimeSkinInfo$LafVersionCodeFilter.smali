.class Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;
.super Landroid/content/pm/RuntimeSkinInfo$Filter;
.source "RuntimeSkinInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RuntimeSkinInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LafVersionCodeFilter"
.end annotation


# static fields
.field static final BLOCKER:Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    new-instance v0, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    sput-object v0, Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;->BLOCKER:Landroid/content/pm/RuntimeSkinInfo$LafVersionCodeFilter;

    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rangeStart"    # Ljava/lang/Integer;
    .param p2, "rangeEnd"    # Ljava/lang/Integer;

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Landroid/content/pm/RuntimeSkinInfo$Filter;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 162
    return-void
.end method


# virtual methods
.method getValidity(Landroid/content/pm/PackageParser$Package;)I
    .locals 7
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    .line 170
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v6, "com.sonymobile.runtimeskinning.LAF_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v6, "com.sonymobile.runtimeskinning.LAF_VERSION"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 175
    .local v1, "o":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "ver":I
    iget-object v3, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeStart:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeStart:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_4

    :cond_2
    iget-object v3, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeEnd:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeEnd:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v2, v3, :cond_4

    .line 183
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 186
    :cond_4
    const-string v3, "RuntimeSkinInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.sonymobile.runtimeskinning.LAF_VERSION in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " blocks runtime skin from being applied, version value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 188
    goto :goto_0

    .line 189
    .end local v2    # "ver":I
    :catch_0
    move-exception v0

    .line 190
    .local v0, "nex":Ljava/lang/NumberFormatException;
    const-string v3, "RuntimeSkinInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown com.sonymobile.runtimeskinning.LAF_VERSION in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 193
    goto :goto_0
.end method
