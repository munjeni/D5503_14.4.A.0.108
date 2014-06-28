.class Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;
.super Landroid/widget/Filter;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 552
    iget-object v6, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 553
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 554
    const/4 v5, 0x0

    monitor-exit v7

    .line 568
    :goto_0
    return-object v5

    .line 556
    :cond_0
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 557
    .local v5, "results":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 558
    .local v1, "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "constraintLowerCase":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1100(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 560
    .local v4, "printerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 561
    iget-object v6, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;
    invoke-static {v6}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1100(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrinterInfo;

    .line 562
    .local v3, "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v3}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 563
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 566
    .end local v3    # "printer":Landroid/print/PrinterInfo;
    :cond_2
    iput-object v1, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 567
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 568
    monitor-exit v7

    goto :goto_0

    .line 569
    .end local v0    # "constraintLowerCase":Ljava/lang/String;
    .end local v1    # "filteredPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .end local v2    # "i":I
    .end local v4    # "printerCount":I
    .end local v5    # "results":Landroid/widget/Filter$FilterResults;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 6
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 576
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 577
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1200(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 578
    .local v0, "oldPrinterCount":I
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # setter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mLastSearchString:Ljava/lang/CharSequence;
    invoke-static {v3, p1}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1302(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 579
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1200(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 580
    if-nez p2, :cond_1

    .line 581
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1200(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mPrinters:Ljava/util/List;
    invoke-static {v5}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1100(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 586
    :goto_0
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1200(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    const/4 v2, 0x1

    .line 587
    .local v2, "resultCountChanged":Z
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    if-eqz v2, :cond_0

    .line 589
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v3, v3, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    # invokes: Lcom/android/settings/print/PrintServiceSettingsFragment;->announceSearchResult()V
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1400(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    .line 591
    :cond_0
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 592
    return-void

    .line 583
    .end local v2    # "resultCountChanged":Z
    :cond_1
    :try_start_1
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 584
    .local v1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v3, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$1;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->mFilteredPrinters:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->access$1200(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 587
    .end local v0    # "oldPrinterCount":I
    .end local v1    # "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 586
    .restart local v0    # "oldPrinterCount":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method
