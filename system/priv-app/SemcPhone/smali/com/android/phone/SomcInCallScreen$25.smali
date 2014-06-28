.class Lcom/android/phone/SomcInCallScreen$25;
.super Ljava/lang/Object;
.source "SomcInCallScreen.java"

# interfaces
.implements Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;


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
    .line 4816
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$25;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4828
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/widget/ISomcCallWidget;>;"
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$25;->this$0:Lcom/android/phone/SomcInCallScreen;

    new-instance v1, Lcom/android/phone/SomcInCallScreen$25$2;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/SomcInCallScreen$25$2;-><init>(Lcom/android/phone/SomcInCallScreen$25;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4835
    return-void
.end method

.method public onWidgetUpdate(Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "widgetType"    # I

    .prologue
    .line 4820
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$25;->this$0:Lcom/android/phone/SomcInCallScreen;

    new-instance v1, Lcom/android/phone/SomcInCallScreen$25$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/phone/SomcInCallScreen$25$1;-><init>(Lcom/android/phone/SomcInCallScreen$25;Landroid/widget/RemoteViews;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4825
    return-void
.end method
