.class Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
.super Lcom/sonymobile/movablepanes/paneview/PaneView$Item;
.source "PaneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/movablepanes/paneview/PaneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdapterItem"
.end annotation


# instance fields
.field private id:J

.field private position:I

.field protected viewValid:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/movablepanes/paneview/PaneView$Item;-><init>(Lcom/sonymobile/movablepanes/paneview/PaneView$1;)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->viewValid:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/movablepanes/paneview/PaneView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView$1;

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;-><init>()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 256
    iget v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I

    return v0
.end method

.method static synthetic access$502(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .param p1, "x1"    # I

    .prologue
    .line 256
    iput p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->position:I

    return p1
.end method

.method static synthetic access$600(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;J)J
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;
    .param p1, "x1"    # J

    .prologue
    .line 256
    iput-wide p1, p0, Lcom/sonymobile/movablepanes/paneview/PaneView$AdapterItem;->id:J

    return-wide p1
.end method
