.class public final Lcom/sonymobile/china/photoeditor/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ArbitrayLayout:[I

.field public static final ArbitrayLayout_x:I = 0x0

.field public static final ArbitrayLayout_y:I = 0x1

.field public static final CenteredLinearLayout:[I

.field public static final CenteredLinearLayout_max_width:I = 0x0

.field public static final ImageButtonTitle:[I

.field public static final ImageButtonTitle_android_text:I = 0x1

.field public static final ImageButtonTitle_android_textColor:I = 0x0

.field public static final Theme_GalleryBase:[I

.field public static final Theme_GalleryBase_listPreferredItemHeightSmall:I = 0x0

.field public static final Theme_GalleryBase_switchStyle:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1448
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonymobile/china/photoeditor/R$styleable;->ArbitrayLayout:[I

    .line 1493
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f010002

    aput v2, v0, v1

    sput-object v0, Lcom/sonymobile/china/photoeditor/R$styleable;->CenteredLinearLayout:[I

    .line 1524
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sonymobile/china/photoeditor/R$styleable;->ImageButtonTitle:[I

    .line 1551
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sonymobile/china/photoeditor/R$styleable;->Theme_GalleryBase:[I

    return-void

    .line 1448
    :array_0
    .array-data 4
        0x7f010003
        0x7f010004
    .end array-data

    .line 1524
    :array_1
    .array-data 4
        0x1010098
        0x101014f
    .end array-data

    .line 1551
    :array_2
    .array-data 4
        0x7f010000
        0x7f010001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1435
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
