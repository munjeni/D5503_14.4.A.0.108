.class Lcom/android/server/StatusBarManagerService$1;
.super Landroid/database/ContentObserver;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StatusBarManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StatusBarManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService$1;->this$0:Lcom/android/server/StatusBarManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$1;->this$0:Lcom/android/server/StatusBarManagerService;

    # invokes: Lcom/android/server/StatusBarManagerService;->updateSystemIconExclusionList()V
    invoke-static {v0}, Lcom/android/server/StatusBarManagerService;->access$100(Lcom/android/server/StatusBarManagerService;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService$1;->this$0:Lcom/android/server/StatusBarManagerService;

    # invokes: Lcom/android/server/StatusBarManagerService;->refreshAllSystemIcons()V
    invoke-static {v0}, Lcom/android/server/StatusBarManagerService;->access$200(Lcom/android/server/StatusBarManagerService;)V

    .line 132
    return-void
.end method
