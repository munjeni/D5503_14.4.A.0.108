.class public Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "px"    # F
    .param p2, "py"    # F

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    .line 26
    iput p2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->y:F

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    .line 31
    iget v0, p1, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->y:F

    iput v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->y:F

    .line 32
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 40
    move-object v0, p1

    check-cast v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;

    .line 41
    .local v0, "p":Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;
    iget v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 42
    const/4 v1, 0x1

    .line 46
    :goto_0
    return v1

    .line 43
    :cond_0
    iget v1, v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 44
    const/4 v1, -0x1

    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public copy()Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;

    iget v1, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->x:F

    iget v2, p0, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;->y:F

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/china/photoeditor/filtershow/ui/ControlPoint;-><init>(FF)V

    return-object v0
.end method
