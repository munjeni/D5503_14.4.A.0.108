.class public Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.java"


# instance fields
.field private mUpdated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    return-void
.end method


# virtual methods
.method public isUpdated()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    return v0
.end method

.method public update(DD)D
    .locals 1
    .param p1, "original"    # D
    .param p3, "update"    # D

    .prologue
    .line 42
    cmpl-double v0, p1, p3

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    .line 44
    move-wide p1, p3

    .line 46
    :cond_0
    return-wide p1
.end method

.method public update(FF)D
    .locals 2
    .param p1, "original"    # F
    .param p2, "update"    # F

    .prologue
    .line 50
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    .line 52
    move p1, p2

    .line 54
    :cond_0
    float-to-double v0, p1

    return-wide v0
.end method

.method public update(II)I
    .locals 1
    .param p1, "original"    # I
    .param p2, "update"    # I

    .prologue
    .line 26
    if-eq p1, p2, :cond_0

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    .line 28
    move p1, p2

    .line 30
    :cond_0
    return p1
.end method

.method public update(JJ)J
    .locals 1
    .param p1, "original"    # J
    .param p3, "update"    # J

    .prologue
    .line 34
    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    .line 36
    move-wide p1, p3

    .line 38
    :cond_0
    return-wide p1
.end method

.method public update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "original":Ljava/lang/Object;, "TT;"
    .local p2, "update":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lcom/sonymobile/china/photoeditor/crop/common/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/china/photoeditor/crop/util/UpdateHelper;->mUpdated:Z

    .line 60
    move-object p1, p2

    .line 62
    :cond_0
    return-object p1
.end method
