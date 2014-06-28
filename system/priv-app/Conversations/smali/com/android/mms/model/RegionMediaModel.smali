.class public abstract Lcom/android/mms/model/RegionMediaModel;
.super Lcom/android/mms/model/MediaModel;
.source "RegionMediaModel.java"


# instance fields
.field protected mRegion:Lcom/android/mms/model/RegionModel;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "region"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "uri"    # Landroid/net/Uri;
    .param p6, "region"    # Lcom/android/mms/model/RegionModel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 46
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/android/mms/model/RegionModel;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "src"    # Ljava/lang/String;
    .param p5, "data"    # [B
    .param p6, "region"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/MediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 52
    iput-object p6, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 53
    return-void
.end method


# virtual methods
.method public getRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    return v0
.end method

.method public setRegion(Lcom/android/mms/model/RegionModel;)V
    .locals 1
    .param p1, "region"    # Lcom/android/mms/model/RegionModel;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/model/RegionMediaModel;->mRegion:Lcom/android/mms/model/RegionModel;

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 62
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 76
    return-void
.end method
