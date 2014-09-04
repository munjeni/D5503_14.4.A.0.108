.class Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$1;
.super Ljava/lang/Object;
.source "GridCollageAdapter.java"

# interfaces
.implements Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$UpdatePaneDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$1;->this$0:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMove(FFIZ)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "position"    # I
    .param p4, "adjustDefaultLAndT"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$1;->this$0:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    # getter for: Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->access$000(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-virtual {v0, p1, p2, p4}, Lcom/sonymobile/china/collage/grid/model/PaneData;->setLeftAndTop(FFZ)V

    .line 60
    return-void
.end method

.method public onScale(FI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter$1;->this$0:Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;

    # getter for: Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->mPaneModel:Ljava/util/List;
    invoke-static {v0}, Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;->access$000(Lcom/sonymobile/china/collage/grid/model/GridCollageAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/china/collage/grid/model/PaneData;

    invoke-virtual {v0, p1}, Lcom/sonymobile/china/collage/grid/model/PaneData;->setScaleFactor(F)V

    .line 55
    return-void
.end method
