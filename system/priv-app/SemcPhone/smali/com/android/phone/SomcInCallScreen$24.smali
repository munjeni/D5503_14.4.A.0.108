.class Lcom/android/phone/SomcInCallScreen$24;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0

    .prologue
    .line 4798
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 4801
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 4802
    const-string v0, "SomcInCallScreen"

    const-string v1, "Service connected to callWidgetManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4804
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    check-cast p2, Lcom/android/phone/widget/SomcCallWidgetManager;

    .end local p2    # "service":Landroid/os/IBinder;
    # setter for: Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;
    invoke-static {v0, p2}, Lcom/android/phone/SomcInCallScreen;->access$2702(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager;

    .line 4805
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/widget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v1, v1, Lcom/android/phone/SomcInCallScreen;->mCallWidgetListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->registerListener(Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 4806
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 4809
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/widget/SomcCallWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4810
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/widget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v1, v1, Lcom/android/phone/SomcInCallScreen;->mCallWidgetListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetManager;->unregisterListener(Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 4811
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$24;->this$0:Lcom/android/phone/SomcInCallScreen;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;
    invoke-static {v0, v1}, Lcom/android/phone/SomcInCallScreen;->access$2702(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager;

    .line 4813
    :cond_0
    return-void
.end method
