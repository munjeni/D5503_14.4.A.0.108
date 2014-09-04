.class Lcom/sonymobile/movablepanes/paneview/PaneView$1;
.super Lcom/sonymobile/movablepanes/util/Dynamics;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$1;->this$0:Lcom/sonymobile/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Lcom/sonymobile/movablepanes/util/Dynamics;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUpdate(I)V
    .locals 0
    .param p1, "dt"    # I

    .prologue
    .line 486
    return-void
.end method

.method public setState(FFJ)V
    .locals 0
    .param p1, "position"    # F
    .param p2, "velocity"    # F
    .param p3, "now"    # J

    .prologue
    .line 481
    return-void
.end method
