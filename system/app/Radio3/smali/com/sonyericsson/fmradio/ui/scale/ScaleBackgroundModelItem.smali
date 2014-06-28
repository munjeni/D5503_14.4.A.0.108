.class public Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;
.super Ljava/lang/Object;
.source "ScaleBackgroundModelItem.java"


# static fields
.field public static final LARGE_PEG:I = 0x2

.field public static final MEDIUM_PEG:I = 0x1

.field public static final NO_PEG:I = -0x1

.field public static final SMALL_PEG:I


# instance fields
.field public final pegType:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "w"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->pegType:I

    .line 50
    iput p2, p0, Lcom/sonyericsson/fmradio/ui/scale/ScaleBackgroundModelItem;->width:I

    .line 51
    return-void
.end method
