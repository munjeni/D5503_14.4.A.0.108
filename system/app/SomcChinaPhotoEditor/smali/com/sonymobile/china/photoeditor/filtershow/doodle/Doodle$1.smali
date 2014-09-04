.class final Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle$1;
.super Ljava/lang/Object;
.source "Doodle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .local v0, "color":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 120
    .local v3, "size":I
    if-lez v3, :cond_0

    .line 121
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-direct {v1, v0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;-><init>(ILandroid/graphics/PointF;)V

    .line 122
    .local v1, "doodle":Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 123
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;->addControlPoint(Landroid/graphics/PointF;)Z

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v1    # "doodle":Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    .end local v2    # "i":I
    :cond_0
    new-instance v1, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v1, v0, v4}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;-><init>(ILandroid/graphics/PointF;)V

    :cond_1
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 132
    new-array v0, p1, [Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle$1;->newArray(I)[Lcom/sonymobile/china/photoeditor/filtershow/doodle/Doodle;

    move-result-object v0

    return-object v0
.end method
