.class Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SomcSettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;->this$0:Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment;

    iput-object p2, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;->val$list:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/settings/preference/util/SomcSettingsPreferenceFragment$1;->val$list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 65
    return-void
.end method
