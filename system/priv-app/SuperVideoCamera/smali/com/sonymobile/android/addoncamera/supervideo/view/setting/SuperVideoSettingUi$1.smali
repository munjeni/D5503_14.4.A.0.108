.class Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;
.super Ljava/lang/Object;
.source "SuperVideoSettingUi.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/cameracommon/setting/executor/SettingExecutorInterface",
        "<",
        "Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;


# direct methods
.method constructor <init>(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExecute(Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem",
            "<",
            "Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "item":Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;, "Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem<Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;>;"
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/setting/settingitem/TypedSettingItem;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;

    .line 246
    .local v0, "tag":Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$Shortcut;
    sget-object v1, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$2;->$SwitchMap$com$sonymobile$android$addoncamera$supervideo$view$setting$SuperVideoSettingUi$Shortcut:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$000(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$100(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_0

    .line 251
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->generateControlItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openControlDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$300(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$400(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->generateTorchItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    const v3, 0x7f0a023e

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openShortcutDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;ILjava/lang/Object;)V

    goto :goto_0

    .line 269
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$500(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->isOpened(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->mDialogStack:Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;
    invoke-static {v1}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$600(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/setting/controller/SettingDialogStack;->closeDialogs()V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    iget-object v2, p0, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi$1;->this$0:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->mItemResolver:Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;
    invoke-static {v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$200(Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;)Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/ModeSettingItemResolver;->generateVideoSettingItems()Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;

    move-result-object v2

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$700()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v3

    # getter for: Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->TABS:[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;
    invoke-static {}, Lcom/sonymobile/android/addoncamera/supervideo/view/setting/SuperVideoSettingUi;->access$700()[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/sonyericsson/cameracommon/viewfinder/setting/SettingUi;->openMenuDialog(Lcom/sonyericsson/cameracommon/setting/dialog/SettingAdapter;[Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Lcom/sonyericsson/cameracommon/setting/dialog/SettingTabs$Tab;Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
