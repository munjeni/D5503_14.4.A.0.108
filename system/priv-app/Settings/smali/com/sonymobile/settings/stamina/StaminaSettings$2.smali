.class Lcom/sonymobile/settings/stamina/StaminaSettings$2;
.super Ljava/lang/Object;
.source "StaminaSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/settings/stamina/StaminaSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/stamina/StaminaSettings;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sonymobile/settings/stamina/StaminaSettings$2;->this$0:Lcom/sonymobile/settings/stamina/StaminaSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/settings/stamina/StaminaDataProviderUtils;->togglePowersaveEnable(Landroid/content/Context;)V

    .line 69
    return-void
.end method
