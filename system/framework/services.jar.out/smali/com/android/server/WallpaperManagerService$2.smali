.class Lcom/android/server/WallpaperManagerService$2;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WallpaperManagerService;->systemRunning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "newUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 580
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 1
    .param p1, "newUserId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 575
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$2;->this$0:Lcom/android/server/WallpaperManagerService;

    # invokes: Lcom/android/server/WallpaperManagerService;->informReady()V
    invoke-static {v0}, Lcom/android/server/WallpaperManagerService;->access$400(Lcom/android/server/WallpaperManagerService;)V

    .line 576
    return-void
.end method