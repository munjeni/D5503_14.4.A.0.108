.class final Landroid/widget/ActivityChooserModel$DefaultSorter;
.super Ljava/lang/Object;
.source "ActivityChooserModel.java"

# interfaces
.implements Landroid/widget/ActivityChooserModel$ActivitySorter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultSorter"
.end annotation


# static fields
.field private static final WEIGHT_DECAY_COEFFICIENT:F = 0.95f


# instance fields
.field private final mPackageNameToActivityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 1

    .prologue
    .line 970
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 973
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p2, "x1"    # Landroid/widget/ActivityChooserModel$1;

    .prologue
    .line 970
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 978
    .local p2, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .local p3, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    iget-object v3, p0, Landroid/widget/ActivityChooserModel$DefaultSorter;->mPackageNameToActivityMap:Ljava/util/Map;

    .line 980
    .local v3, "componentNameToActivityMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 982
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 983
    .local v1, "activityCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 984
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 985
    .local v0, "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    const/4 v8, 0x0

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 986
    new-instance v2, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sonymobile.socialengine.plugins"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 991
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sonymobile.socialengine.plugins.facebook_sharefrwk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 992
    const v8, 0x4059999a

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 983
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sonymobile.socialengine.plugins.twitter_sharefrwk"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 994
    const v8, 0x404ccccd

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    goto :goto_1

    .line 996
    :cond_2
    const/high16 v8, 0x40400000

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    goto :goto_1

    .line 1001
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1002
    .local v6, "lastShareIndex":I
    const/high16 v7, 0x3f800000

    .line 1003
    .local v7, "nextRecordWeight":F
    move v5, v6

    :goto_2
    if-ltz v5, :cond_5

    .line 1004
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1005
    .local v4, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    iget-object v2, v4, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1006
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 1007
    .restart local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v0, :cond_4

    .line 1008
    iget v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v9, v4, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    mul-float/2addr v9, v7

    add-float/2addr v8, v9

    iput v8, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    .line 1009
    const v8, 0x3f733333

    mul-float/2addr v7, v8

    .line 1003
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1013
    .end local v0    # "activity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :cond_5
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1020
    return-void
.end method
