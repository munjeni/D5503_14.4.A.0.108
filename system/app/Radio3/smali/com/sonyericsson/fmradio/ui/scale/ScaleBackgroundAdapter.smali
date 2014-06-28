.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;
.super Ljava/lang/Object;
.source "ScaleBackgroundAdapter.java"


# instance fields
.field private mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

.field private mModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;)V
    .locals 0
    .param p2, "backgroundResources"    # Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;",
            ">;",
            "Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "backgroundModel":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mModel:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    .line 37
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mModel:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mModel:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    iget v0, v1, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->pegType:I

    .line 45
    .local v0, "pegType":I
    packed-switch v0, :pswitch_data_0

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid peg type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :pswitch_0
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    .line 50
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getSmallPegDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getMediumPegDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mBackgroundResources:Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;

    invoke-virtual {v1}, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundResources;->getLargePegDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getWidth(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundAdapter;->mModel:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;

    iget v0, v0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    return v0
.end method
