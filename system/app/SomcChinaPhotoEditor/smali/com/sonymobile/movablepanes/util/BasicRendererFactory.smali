.class public Lcom/sonymobile/movablepanes/util/BasicRendererFactory;
.super Ljava/lang/Object;
.source "BasicRendererFactory.java"

# interfaces
.implements Lcom/sonymobile/movablepanes/paneview/RendererFactory;


# instance fields
.field private final mAddInterpolator:Landroid/view/animation/Interpolator;

.field private mIgnoreNextDeleteRendererRequest:I

.field private mOverrideAddRenderers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonymobile/movablepanes/animation/Renderer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    .line 39
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x3fc00000

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mAddInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public getAddRenderer(I)Lcom/sonymobile/movablepanes/animation/Renderer;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/movablepanes/animation/Renderer;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeleteRenderer()Lcom/sonymobile/movablepanes/animation/Renderer;
    .locals 7

    .prologue
    .line 83
    iget v1, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    if-lez v1, :cond_0

    .line 84
    iget v1, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    .line 85
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->obtain()Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;

    move-result-object v0

    .line 89
    .local v0, "renderer":Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;
    const/16 v1, 0x190

    iget-object v2, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mAddInterpolator:Landroid/view/animation/Interpolator;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    const/high16 v6, 0x3e800000

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/movablepanes/animation/ScaleAlphaRenderer;->setProperties(ILandroid/view/animation/Interpolator;IIFF)V

    goto :goto_0
.end method

.method public getMoveRenderer(I)Lcom/sonymobile/movablepanes/animation/Renderer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 78
    invoke-static {}, Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;->obtain()Lcom/sonymobile/movablepanes/animation/SpringMoveRenderer;

    move-result-object v0

    return-object v0
.end method

.method public getStandardRenderer(I)Lcom/sonymobile/movablepanes/animation/Renderer;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreNextGetDeleteRenderer(I)V
    .locals 0
    .param p1, "nbr"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mIgnoreNextDeleteRendererRequest:I

    .line 65
    return-void
.end method

.method public recycle(Lcom/sonymobile/movablepanes/animation/Renderer;)V
    .locals 1
    .param p1, "renderer"    # Lcom/sonymobile/movablepanes/animation/Renderer;

    .prologue
    .line 95
    instance-of v0, p1, Lcom/sonymobile/movablepanes/util/Recyclable;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/sonymobile/movablepanes/util/Recyclable;

    .end local p1    # "renderer":Lcom/sonymobile/movablepanes/animation/Renderer;
    invoke-interface {p1}, Lcom/sonymobile/movablepanes/util/Recyclable;->recycle()V

    .line 99
    :cond_0
    return-void
.end method

.method public setNextAddRenderer(Lcom/sonymobile/movablepanes/animation/Renderer;I)V
    .locals 2
    .param p1, "renderer"    # Lcom/sonymobile/movablepanes/animation/Renderer;
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/movablepanes/util/BasicRendererFactory;->mOverrideAddRenderers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
