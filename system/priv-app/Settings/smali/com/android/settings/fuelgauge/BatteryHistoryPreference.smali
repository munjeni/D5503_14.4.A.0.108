.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 40
    const v0, 0x7f04005a

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 41
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    .line 42
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 52
    const v1, 0x7f0800e2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .line 54
    .local v0, "chart":Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    .line 55
    return-void
.end method
