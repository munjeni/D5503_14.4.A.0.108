.class Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaneDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;


# direct methods
.method private constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;Lcom/sonymobile/movablepanes/paneview/PaneView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView;
    .param p2, "x1"    # Lcom/sonymobile/movablepanes/paneview/PaneView$1;

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    iget-object v1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$PaneDataSetObserver;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    # getter for: Lcom/sonymobile/movablepanes/paneview/PaneView;->mAdapter:Lcom/sonymobile/movablepanes/paneview/PaneAdapter;
    invoke-static {v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$100(Lcom/sonymobile/movablepanes/paneview/PaneView;)Lcom/sonymobile/movablepanes/paneview/PaneAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/movablepanes/paneview/PaneAdapter;->hasStableIds()Z

    move-result v1

    # invokes: Lcom/sonymobile/movablepanes/paneview/PaneView;->onDataChanged(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/movablepanes/paneview/PaneView;->access$200(Lcom/sonymobile/movablepanes/paneview/PaneView;Z)V

    .line 274
    return-void
.end method
