.class public Lcom/android/phone/widget/SomcDefaultWidgetActionHandler;
.super Ljava/lang/Object;
.source "SomcDefaultWidgetActionHandler.java"

# interfaces
.implements Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;

    .prologue
    .line 41
    new-instance v0, Landroid/content/ComponentName;

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.callwidgetframework.WIDGET_ACTION_DESTROYED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "widgetIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public focusChange(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;
    .param p3, "widgetType"    # I
    .param p4, "hasFocus"    # Z

    .prologue
    .line 50
    new-instance v0, Landroid/content/ComponentName;

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.callwidgetframework.WIDGET_ACTION_FOCUSCHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "startWidgetIntent":Landroid/content/Intent;
    const-string v2, "com.sonymobile.callwidgetframework.WIDGET_EXTRA_WIDGETYPE"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string v2, "com.sonymobile.callwidgetframework.WIDGET_EXTRA_HASFOCUS"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public select(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "widget"    # Lcom/android/phone/widget/ISomcCallWidget;
    .param p3, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Landroid/content/ComponentName;

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sonymobile.callwidgetframework.WIDGET_ACTION_SELECTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .local v1, "startWidgetIntent":Landroid/content/Intent;
    if-eqz p3, :cond_0

    .line 33
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :cond_0
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
