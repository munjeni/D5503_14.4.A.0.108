.class Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;
.super Ljava/lang/Object;
.source "PanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/china/photoeditor/filtershow/PanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewType"
.end annotation


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 597
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput p1, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;->mType:I

    .line 599
    return-void
.end method


# virtual methods
.method public type()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/sonymobile/china/photoeditor/filtershow/PanelController$ViewType;->mType:I

    return v0
.end method
