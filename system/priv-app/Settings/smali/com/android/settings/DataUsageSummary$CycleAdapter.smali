.class public Lcom/android/settings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1503
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1497
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1498
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1504
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1505
    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    .line 1506
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 1520
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1523
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I
    .locals 4
    .param p1, "target"    # Lcom/android/settings/DataUsageSummary$CycleItem;

    .prologue
    .line 1530
    if-eqz p1, :cond_2

    .line 1531
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 1532
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1533
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1534
    .local v2, "item":Lcom/android/settings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1532
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1536
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/settings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1541
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/android/settings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .param p1, "possible"    # Z

    .prologue
    .line 1509
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1510
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1511
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1514
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1515
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1516
    return-void
.end method
