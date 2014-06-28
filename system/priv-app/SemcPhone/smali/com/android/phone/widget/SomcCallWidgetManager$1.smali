.class Lcom/android/phone/widget/SomcCallWidgetManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SomcCallWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/SomcCallWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/SomcCallWidgetManager;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.extra.UID"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 85
    .local v8, "uid":I
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetsFromUid(I)Ljava/util/List;
    invoke-static {v10, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$000(Lcom/android/phone/widget/SomcCallWidgetManager;I)Ljava/util/List;

    move-result-object v1

    .line 87
    .local v1, "affectedWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/widget/SomcCallWidget;>;"
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 88
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetManager;->loadWidgetsFromUid(I)V
    invoke-static {v10, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$100(Lcom/android/phone/widget/SomcCallWidgetManager;I)V

    .line 127
    :cond_0
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;
    invoke-static {v10}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$500(Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 128
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetManager;->mListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;
    invoke-static {v10}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$500(Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    move-result-object v10

    iget-object v11, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetManager;->getWidgetList()Ljava/util/List;
    invoke-static {v11}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$600(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;->onMenuUpdate(Ljava/util/List;)V

    .line 130
    :cond_1
    return-void

    .line 89
    :cond_2
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 90
    if-eqz v1, :cond_0

    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/widget/SomcCallWidget;

    .line 92
    .local v9, "widget":Lcom/android/phone/widget/SomcCallWidget;
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$200(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v9    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    :cond_3
    const-string v10, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/phone/widget/SomcCallWidget;

    .line 98
    .restart local v9    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetManager;->getResolveInfoFromUid(Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;
    invoke-static {v10, v9, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$300(Lcom/android/phone/widget/SomcCallWidgetManager;Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 99
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_4

    .line 100
    invoke-virtual {v9, v7}, Lcom/android/phone/widget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    goto :goto_1

    .line 103
    :cond_4
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$200(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    :cond_5
    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 108
    const-string v10, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "components":[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 112
    move-object v2, v4

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v6, :cond_0

    aget-object v3, v2, v5

    .line 113
    .local v3, "component":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    iget-object v11, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$200(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v11

    # invokes: Lcom/android/phone/widget/SomcCallWidgetManager;->getWidget(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;
    invoke-static {v10, v11, v3}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$400(Lcom/android/phone/widget/SomcCallWidgetManager;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/phone/widget/ISomcCallWidget;

    move-result-object v9

    check-cast v9, Lcom/android/phone/widget/SomcCallWidget;

    .line 114
    .restart local v9    # "widget":Lcom/android/phone/widget/SomcCallWidget;
    if-eqz v9, :cond_6

    .line 115
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # invokes: Lcom/android/phone/widget/SomcCallWidgetManager;->getResolveInfoFromUid(Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;
    invoke-static {v10, v9, v8}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$300(Lcom/android/phone/widget/SomcCallWidgetManager;Lcom/android/phone/widget/SomcCallWidget;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 116
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_7

    .line 117
    invoke-virtual {v9, v7}, Lcom/android/phone/widget/SomcCallWidget;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 112
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 120
    .restart local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    iget-object v10, p0, Lcom/android/phone/widget/SomcCallWidgetManager$1;->this$0:Lcom/android/phone/widget/SomcCallWidgetManager;

    # getter for: Lcom/android/phone/widget/SomcCallWidgetManager;->mWidgets:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/phone/widget/SomcCallWidgetManager;->access$200(Lcom/android/phone/widget/SomcCallWidgetManager;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3
.end method
