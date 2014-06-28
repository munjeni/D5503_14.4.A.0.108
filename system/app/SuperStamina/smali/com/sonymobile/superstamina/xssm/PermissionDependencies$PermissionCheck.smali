.class Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionDependencies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/xssm/PermissionDependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PermissionCheck"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field packageUid:I

.field permissionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->permissionName:Ljava/lang/String;

    .line 229
    iput p2, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageUid:I

    .line 230
    iput-object p3, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageName:Ljava/lang/String;

    .line 231
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    if-ne p1, p0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    instance-of v3, p1, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 237
    check-cast v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;

    .line 238
    .local v0, "other":Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;
    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->permissionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->permissionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageUid:I

    iget v4, v0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageUid:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 244
    const/16 v0, 0x11

    .line 245
    .local v0, "result":I
    iget-object v1, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->permissionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 246
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 247
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/sonymobile/superstamina/xssm/PermissionDependencies$PermissionCheck;->packageUid:I

    add-int v0, v1, v2

    .line 248
    return v0
.end method
