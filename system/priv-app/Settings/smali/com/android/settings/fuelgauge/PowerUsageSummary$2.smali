.class Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
.super Landroid/os/Handler;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 240
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 259
    return-void

    .line 242
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 243
    .local v1, "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 246
    .local v2, "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    if-eqz v2, :cond_0

    .line 247
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    .end local v1    # "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    .end local v2    # "pgp":Lcom/android/settings/fuelgauge/PowerGaugePreference;
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
