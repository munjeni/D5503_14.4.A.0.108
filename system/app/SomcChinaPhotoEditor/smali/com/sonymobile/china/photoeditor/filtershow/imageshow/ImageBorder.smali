.class public Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageBorder;
.super Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;
.source "ImageBorder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/china/photoeditor/filtershow/imageshow/ImageSlave;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public showTitle()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
