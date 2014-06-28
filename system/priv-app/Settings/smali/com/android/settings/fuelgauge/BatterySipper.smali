.class public Lcom/android/settings/fuelgauge/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field static final sUidCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field gpsTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field mPackages:[Ljava/lang/String;

.field final mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mobileRxBytes:J

.field mobileTxBytes:J

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field percent:D

.field uidObj:Landroid/os/BatteryStats$Uid;

.field usageTime:J

.field value:D

.field values:[D

.field wakeLockTime:J

.field wifiRunningTime:J

.field wifiRxBytes:J

.field wifiTxBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "drainType"    # Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    .param p6, "iconId"    # I
    .param p7, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p8, "values"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;",
            "I",
            "Landroid/os/BatteryStats$Uid;",
            "[D)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p2, "requestQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    .line 76
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p8, p0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    .line 78
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 80
    if-lez p6, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_0
    if-eqz p8, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p8, v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 84
    :cond_1
    if-eqz p4, :cond_2

    if-nez p6, :cond_3

    :cond_2
    if-eqz p7, :cond_3

    .line 85
    invoke-virtual {p0, p7}, Lcom/android/settings/fuelgauge/BatterySipper;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 87
    :cond_3
    iput-object p7, p0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 88
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lcom/android/settings/fuelgauge/BatterySipper;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/android/settings/fuelgauge/BatterySipper;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatterySipper;->compareTo(Lcom/android/settings/fuelgauge/BatterySipper;)I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 7
    .param p1, "uidObj"    # Landroid/os/BatteryStats$Uid;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    .line 132
    .local v2, "uid":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "uidString":Ljava/lang/String;
    sget-object v5, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    sget-object v5, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    .line 135
    .local v4, "utd":Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    iget-object v5, v4, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 136
    iget-object v5, v4, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 137
    iget-object v5, v4, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 161
    .end local v4    # "utd":Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 141
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "packages":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 143
    if-nez v0, :cond_4

    .line 145
    if-nez v2, :cond_3

    .line 146
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b066c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 150
    :cond_2
    :goto_1
    const v5, 0x7f020067

    iput v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 151
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 147
    :cond_3
    const-string v5, "mediaserver"

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b066d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_1

    .line 156
    :cond_4
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 157
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v6

    .line 158
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatterySipper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method getSortValue()D
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    return-wide v0
.end method

.method public loadNameAndIcon()V
    .locals 24

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 176
    .local v15, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v17

    .line 177
    .local v17, "uid":I
    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 178
    .local v6, "defaultActivityIcon":Landroid/graphics/drawable/Drawable;
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 180
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v12, v0, [Ljava/lang/String;

    .line 185
    .local v12, "packageLabels":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    const/16 v16, -0x1

    .line 189
    .local v16, "preferredIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_5

    .line 191
    aget-object v20, v12, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    move/from16 v16, v7

    .line 193
    :cond_3
    :try_start_0
    aget-object v20, v12, v7

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 194
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4, v15}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 195
    .local v9, "label":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    .line 196
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v12, v7

    .line 198
    :cond_4
    iget v0, v4, Landroid/content/pm/PackageItemInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v7

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 200
    invoke-virtual {v4, v15}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "label":Ljava/lang/CharSequence;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_6
    array-length v0, v12

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 209
    const/16 v20, 0x0

    aget-object v20, v12, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 231
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    .line 232
    .local v18, "uidString":Ljava/lang/String;
    new-instance v19, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;

    invoke-direct/range {v19 .. v19}, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;-><init>()V

    .line 233
    .local v19, "utd":Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->name:Ljava/lang/String;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;->packageName:Ljava/lang/String;

    .line 236
    sget-object v20, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 203
    .end local v18    # "uidString":Ljava/lang/String;
    .end local v19    # "utd":Lcom/android/settings/fuelgauge/BatterySipper$UidToDetail;
    :catch_0
    move-exception v20

    .line 189
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 212
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPackages:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v10, v5

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v10, :cond_7

    aget-object v14, v5, v8

    .line 214
    .local v14, "pkgName":Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_1
    move/from16 v0, v20

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .line 215
    .local v13, "pi":Landroid/content/pm/PackageInfo;
    iget v0, v13, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 216
    iget v0, v13, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v20, v0

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v14, v0, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 218
    .local v11, "nm":Ljava/lang/CharSequence;
    if-eqz v11, :cond_a

    .line 219
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    .line 220
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 221
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 222
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 227
    .end local v11    # "nm":Ljava/lang/CharSequence;
    .end local v13    # "pi":Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v20

    .line 212
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method
