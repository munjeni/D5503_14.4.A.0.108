.class Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
.super Ljava/lang/Object;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field protected location:Lcom/sonymobile/movablepanes/paneview/PaneLocation;

.field protected renderer:Lcom/sonymobile/movablepanes/animation/Renderer;

.field protected rendererIsStandard:Z

.field protected view:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView$1;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;-><init>()V

    return-void
.end method
