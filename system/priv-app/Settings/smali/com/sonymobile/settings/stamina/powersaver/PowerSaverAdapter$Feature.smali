.class public Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;
.super Ljava/lang/Object;
.source "PowerSaverAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field public enabled:Z

.field public iconId:I

.field public id:Ljava/lang/String;

.field public param:I

.field public saved:I

.field public state:I

.field public titleId:I

.field public viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "param"    # I
    .param p4, "saved"    # I
    .param p5, "state"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->viewType:I

    .line 77
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->id:Ljava/lang/String;

    .line 78
    iput-boolean p2, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->enabled:Z

    .line 79
    iput p3, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->param:I

    .line 80
    iput p4, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->saved:I

    .line 81
    iput p5, p0, Lcom/sonymobile/settings/stamina/powersaver/PowerSaverAdapter$Feature;->state:I

    .line 82
    return-void
.end method
