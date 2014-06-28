.class public Landroid/mtp/MtpServiceDatabase$ChangeItem;
.super Ljava/lang/Object;
.source "MtpServiceDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpServiceDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ChangeItem"
.end annotation


# instance fields
.field public id:I

.field public status:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/mtp/MtpServiceDatabase$ChangeItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/mtp/MtpServiceDatabase$ChangeItem;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
