.class Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
.super Ljava/lang/Object;
.source "CollageLaunchActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/CollageLaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentElement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public isGrid:Z

.field public orderId:I

.field public templateId:I

.field public thumbnailId:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "templateIdSoc"    # I
    .param p2, "thumbnailIdSoc"    # I
    .param p3, "isGridSoc"    # Z

    .prologue
    .line 856
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->orderId:I

    .line 858
    iput p1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    .line 859
    iput p2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    .line 860
    iput-boolean p3, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->isGrid:Z

    .line 861
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 841
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 842
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "elements":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->orderId:I

    .line 844
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    .line 845
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    .line 846
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->isGrid:Z

    .line 847
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 892
    const/4 v1, 0x1

    .line 893
    .local v1, "result":I
    instance-of v2, p1, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 894
    check-cast v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    .line 895
    .local v0, "others":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->orderId:I

    iget v3, v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->orderId:I

    if-le v2, v3, :cond_1

    const/4 v1, 0x1

    .line 897
    .end local v0    # "others":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    :cond_0
    :goto_0
    return v1

    .line 895
    .restart local v0    # "others":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "result":Z
    instance-of v2, p1, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 877
    check-cast v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;

    .line 878
    .local v0, "others":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    iget v3, v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    iget v3, v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->isGrid:Z

    iget-boolean v3, v0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->isGrid:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 880
    .end local v0    # "others":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    :cond_0
    :goto_0
    return v1

    .line 878
    .restart local v0    # "others":Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 885
    iget v0, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->orderId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->templateId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->thumbnailId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/china/collage/CollageLaunchActivity$RecentElement;->isGrid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
