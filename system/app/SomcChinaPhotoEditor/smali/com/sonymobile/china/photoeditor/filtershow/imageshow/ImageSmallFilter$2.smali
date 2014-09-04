.class Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$2;
.super Ljava/lang/Object;
.source "ImageSmallFilter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;->mapFaceRects()V
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
        "Lcom/sonymobile/android/facebeauty/engine/FaceRect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;


# direct methods
.method constructor <init>(Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$2;->this$0:Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/android/facebeauty/engine/FaceRect;Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I
    .locals 2
    .param p1, "lhs"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;
    .param p2, "rhs"    # Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .prologue
    .line 413
    iget v0, p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    iget v1, p2, Lcom/sonymobile/android/facebeauty/engine/FaceRect;->left:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 409
    check-cast p1, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/android/facebeauty/engine/FaceRect;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSmallFilter$2;->compare(Lcom/sonymobile/android/facebeauty/engine/FaceRect;Lcom/sonymobile/android/facebeauty/engine/FaceRect;)I

    move-result v0

    return v0
.end method
