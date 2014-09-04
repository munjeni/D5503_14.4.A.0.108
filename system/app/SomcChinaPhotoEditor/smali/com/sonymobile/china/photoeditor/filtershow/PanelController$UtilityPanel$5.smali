.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$5;
.super Ljava/lang/Object;
.source "PanelController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;->setSelectFaceToolbar(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$5;->this$1:Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;
    .param p2, "rhs"    # Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .prologue
    .line 418
    invoke-virtual {p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->getFaceRect()Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v0

    iget v0, v0, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    invoke-virtual {p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;->getFaceRect()Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    move-result-object v1

    iget v1, v1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 415
    check-cast p1, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$UtilityPanel$5;->compare(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageShow$FaceRectItem;)I

    move-result v0

    return v0
.end method
