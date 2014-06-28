.class public final Lcom/sony/smallapp/internal/util/WindowUtils;
.super Ljava/lang/Object;
.source "WindowUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/smallapp/internal/util/WindowUtils$LayoutParams;
    }
.end annotation


# static fields
.field public static final EXTRA_ENABLE_SHOW_HIDE_ANIMATION:Ljava/lang/String; = "com.sony.smallapp.intent.extra.ENABLE_HIDE_SHOW_ANIMATION"

.field public static final EXTRA_HIDE_SMALLAPPS_CALLER:Ljava/lang/String; = "com.sony.smallapp.intent.extra.HIDE_WINDOWS_CALLER"

.field public static final EXTRA_SOFTKEYBOARD_VISIBLE:Ljava/lang/String; = "com.sony.smallapp.intent.extra.SOFTKEYBOARD_VISIBLE"

.field public static final HIDE_SMALLAPPS_INTENT_ACTION:Ljava/lang/String; = "com.sony.smallapp.intent.action.HIDE_WINDOWS"

.field public static final SHOW_SMALLAPPS_INTENT_ACTION:Ljava/lang/String; = "com.sony.smallapp.intent.action.SHOW_WINDOWS"

.field private static final SMALLAPP_MANAGER_PACKAGE_NAME:Ljava/lang/String; = "com.sony.smallapp.managerservice"

.field private static final SMALLAPP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.sony.smallapp.managerservice.SmallAppManagerService"

.field public static final SOFTKEYBOARD_VISIBILITY_CHANGED_INTENT_ACTION:Ljava/lang/String; = "com.sony.smallapp.intent.action.SOFTKEYBOARD_VISIBILITY_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static hideSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.smallapp.intent.action.HIDE_WINDOWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "smallAppIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sony.smallapp.managerservice"

    const-string v3, "com.sony.smallapp.managerservice.SmallAppManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    const-string v1, "com.sony.smallapp.intent.extra.HIDE_WINDOWS_CALLER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    return-void
.end method

.method public static showSmallAppWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "caller"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sony.smallapp.intent.action.SHOW_WINDOWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "smallAppIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sony.smallapp.managerservice"

    const-string v3, "com.sony.smallapp.managerservice.SmallAppManagerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    const-string v1, "com.sony.smallapp.intent.extra.HIDE_WINDOWS_CALLER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void
.end method
