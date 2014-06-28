.class Lcom/android/settings/wifi/WifiSettings$12;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$WpsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 1043
    return-void
.end method

.method public onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 1046
    packed-switch p1, :pswitch_data_0

    .line 1064
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;I)I

    .line 1067
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    # getter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$700(Lcom/android/settings/wifi/WifiSettings;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x6

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$800(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 1070
    :cond_0
    return-void

    .line 1048
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f0b02c7

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1051
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f0b02c4

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1054
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f0b02c5

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1057
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f0b02c2

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1060
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$12;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v1, 0x7f0b02c6

    # setter for: Lcom/android/settings/wifi/WifiSettings;->mErrorResId:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$702(Lcom/android/settings/wifi/WifiSettings;I)I

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public onStartSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1040
    return-void
.end method
