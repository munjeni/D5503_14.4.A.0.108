.class abstract Landroid/content/pm/RuntimeSkinInfo$Filter;
.super Ljava/lang/Object;
.source "RuntimeSkinInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/RuntimeSkinInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Filter"
.end annotation


# static fields
.field static final FILTER_BLOCK:I = 0x2

.field static final FILTER_IGNORE:I = -0x1

.field static final FILTER_INVALID:I = 0x1

.field static final FILTER_VALID:I


# instance fields
.field final mRangeEnd:Ljava/lang/Integer;

.field final mRangeStart:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "rangeStart"    # Ljava/lang/Integer;
    .param p2, "rangeEnd"    # Ljava/lang/Integer;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeStart:Ljava/lang/Integer;

    .line 92
    iput-object p2, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeEnd:Ljava/lang/Integer;

    .line 93
    return-void
.end method


# virtual methods
.method abstract getValidity(Landroid/content/pm/PackageParser$Package;)I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeStart:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/RuntimeSkinInfo$Filter;->mRangeEnd:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
