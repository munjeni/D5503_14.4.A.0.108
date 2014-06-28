.class Lcom/android/phone/SomcInCallScreen$25$2;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen$25;->onMenuUpdate(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SomcInCallScreen$25;

.field final synthetic val$widgetList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen$25;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 4828
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$25$2;->this$1:Lcom/android/phone/SomcInCallScreen$25;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$25$2;->val$widgetList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4830
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$25$2;->this$1:Lcom/android/phone/SomcInCallScreen$25;

    iget-object v0, v0, Lcom/android/phone/SomcInCallScreen$25;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$2700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/widget/SomcCallWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4831
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$25$2;->this$1:Lcom/android/phone/SomcInCallScreen$25;

    iget-object v0, v0, Lcom/android/phone/SomcInCallScreen$25;->this$0:Lcom/android/phone/SomcInCallScreen;

    # getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$25$2;->val$widgetList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->updateWidgetMenu(Ljava/util/List;)V

    .line 4833
    :cond_0
    return-void
.end method
