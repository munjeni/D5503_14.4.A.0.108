.class public Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;
.super Ljava/lang/Object;
.source "DefaultLayoutPatternApplier.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPatternApplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;
    }
.end annotation


# static fields
.field public static final H:I = 0x2

.field public static final N:I = 0x0

.field public static final S:I = 0x1


# instance fields
.field private mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

.field private final mVisibilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mVisibilities:Ljava/util/Map;

    .line 162
    return-void
.end method

.method protected static set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V
    .locals 1
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;
    .param p2, "captureButton"    # I
    .param p3, "captureMethodIndicators"    # I
    .param p4, "modeIndicators"    # I
    .param p5, "geotagIndicators"    # I
    .param p6, "storageIndicator"    # I
    .param p7, "zoombar"    # I
    .param p8, "contentView"    # I
    .param p9, "modeSelectorButton"    # I
    .param p10, "balloonTips"    # I
    .param p11, "recordingProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;",
            ">;",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "IIIIIIIIII)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;>;"
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;-><init>()V

    .line 190
    .local v0, "visibilities":Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;
    iput p2, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->captureButton:I

    .line 191
    iput p3, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->captureMethodIndicators:I

    .line 192
    iput p4, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->modeIndicators:I

    .line 193
    iput p5, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->geotagIndicators:I

    .line 194
    iput p6, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->storageIndicator:I

    .line 195
    iput p7, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->zoombar:I

    .line 196
    iput p8, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->contentView:I

    .line 197
    iput p9, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->modeSelectorButton:I

    .line 198
    iput p10, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->balloonTips:I

    .line 199
    iput p11, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->recordingProgress:I

    .line 201
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method


# virtual methods
.method public apply(Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;)V
    .locals 6
    .param p1, "pattern"    # Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 32
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mVisibilities:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;

    .line 33
    .local v0, "visibilities":Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;
    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 37
    :cond_0
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->captureButton:I

    if-ne v1, v2, :cond_a

    .line 38
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_1
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->contentView:I

    if-ne v1, v2, :cond_d

    .line 51
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->showContentsViewController()V

    .line 56
    :cond_1
    :goto_2
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->modeSelectorButton:I

    if-ne v1, v2, :cond_e

    .line 57
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :cond_2
    :goto_3
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->captureMethodIndicators:I

    if-ne v1, v2, :cond_f

    .line 63
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_3
    :goto_4
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->modeIndicators:I

    if-ne v1, v2, :cond_10

    .line 69
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :cond_4
    :goto_5
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->geotagIndicators:I

    if-ne v1, v2, :cond_11

    .line 75
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 80
    :cond_5
    :goto_6
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->storageIndicator:I

    if-ne v1, v2, :cond_12

    .line 81
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->show()V

    .line 86
    :cond_6
    :goto_7
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->zoombar:I

    if-ne v1, v2, :cond_13

    .line 87
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->show()V

    .line 92
    :cond_7
    :goto_8
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->balloonTips:I

    if-ne v1, v2, :cond_14

    .line 93
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->isBalloonTipsEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 94
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->show()V

    .line 100
    :cond_8
    :goto_9
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->recordingProgress:I

    if-ne v1, v2, :cond_15

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_9
    :goto_a
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->refresh()V

    goto/16 :goto_0

    .line 39
    :cond_a
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->captureButton:I

    if-ne v1, v3, :cond_b

    .line 40
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 43
    :cond_b
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;->isTouched()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 46
    :cond_c
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getOnScreenButtonGroup()Lcom/sonyericsson/cameracommon/viewfinder/onscreenbutton/OnScreenButtonGroup;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 52
    :cond_d
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->contentView:I

    if-ne v1, v3, :cond_1

    .line 53
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->hideContentsViewController()V

    goto/16 :goto_2

    .line 58
    :cond_e
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->modeSelectorButton:I

    if-ne v1, v3, :cond_2

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCapturingModeButton()Lcom/sonyericsson/cameracommon/viewfinder/capturingmode/CapturingModeButton;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 64
    :cond_f
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->captureMethodIndicators:I

    if-ne v1, v3, :cond_3

    .line 65
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getCaptureMethodIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 70
    :cond_10
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->modeIndicators:I

    if-ne v1, v3, :cond_4

    .line 71
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getModeIndicatorContainer()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 76
    :cond_11
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->geotagIndicators:I

    if-ne v1, v3, :cond_5

    .line 77
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto/16 :goto_6

    .line 82
    :cond_12
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->storageIndicator:I

    if-ne v1, v3, :cond_6

    .line 83
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getLowMemoryIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->hide()V

    goto/16 :goto_7

    .line 88
    :cond_13
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->zoombar:I

    if-ne v1, v3, :cond_7

    .line 89
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getZoomBar()Lcom/sonyericsson/cameracommon/zoombar/Zoombar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/zoombar/Zoombar;->hide()V

    goto/16 :goto_8

    .line 96
    :cond_14
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->balloonTips:I

    if-ne v1, v3, :cond_8

    .line 97
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getBalloonTips()Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/balloontips/BalloonTips;->hide()V

    goto/16 :goto_9

    .line 102
    :cond_15
    iget v1, v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;->recordingProgress:I

    if-ne v1, v3, :cond_9

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;->getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public setup(Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;Z)V
    .locals 1
    .param p1, "baseLayout"    # Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;
    .param p2, "isOneshot"    # Z

    .prologue
    .line 26
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mLayout:Lcom/sonyericsson/cameracommon/viewfinder/BaseViewFinderLayout;

    .line 27
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->mVisibilities:Ljava/util/Map;

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->setupVisibilities(Ljava/util/Map;Z)V

    .line 28
    return-void
.end method

.method protected setupVisibilities(Ljava/util/Map;Z)V
    .locals 12
    .param p2, "oneshot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;",
            "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier$Visibilities;>;"
    if-eqz p2, :cond_0

    .line 132
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 133
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 134
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 135
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 136
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 137
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 138
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 139
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 140
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 141
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 142
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 157
    :goto_0
    return-void

    .line 145
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 146
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 147
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 148
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 149
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 150
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 151
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 152
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 153
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 154
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    .line 155
    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v7, 0x2

    const/4 v8, 0x2

    const/4 v9, 0x2

    const/4 v10, 0x2

    const/4 v11, 0x2

    move-object v0, p1

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPatternApplier;->set(Ljava/util/Map;Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;IIIIIIIIII)V

    goto/16 :goto_0
.end method
