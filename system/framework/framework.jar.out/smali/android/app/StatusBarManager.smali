.class public Landroid/app/StatusBarManager;
.super Ljava/lang/Object;
.source "StatusBarManager.java"


# static fields
.field public static final ACTION_STATUSBAR_EXPAND:Ljava/lang/String; = "com.sonymobile.action.STATUSBAR_EXPAND"

.field public static final DISABLE_BACK:I = 0x400000

.field public static final DISABLE_CLOCK:I = 0x800000

.field public static final DISABLE_EXPAND:I = 0x10000

.field public static final DISABLE_HOME:I = 0x200000

.field public static final DISABLE_MASK:I = 0x3ff0000

.field public static final DISABLE_NAVIGATION:I = 0x1200000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DISABLE_NONE:I = 0x0

.field public static final DISABLE_NOTIFICATION_ALERTS:I = 0x40000

.field public static final DISABLE_NOTIFICATION_ICONS:I = 0x20000

.field public static final DISABLE_NOTIFICATION_TICKER:I = 0x80000

.field public static final DISABLE_RECENT:I = 0x1000000

.field public static final DISABLE_SEARCH:I = 0x2000000

.field public static final DISABLE_SYSTEM_INFO:I = 0x100000

.field public static final NAVIGATION_HINT_BACK_ALT:I = 0x1

.field public static final WINDOW_NAVIGATION_BAR:I = 0x2

.field public static final WINDOW_STATE_HIDDEN:I = 0x2

.field public static final WINDOW_STATE_HIDING:I = 0x1

.field public static final WINDOW_STATE_SHOWING:I = 0x0

.field public static final WINDOW_STATUS_BAR:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    .line 82
    iput-object p1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method private declared-synchronized getService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 87
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 89
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 90
    const-string v0, "StatusBarManager"

    const-string/jumbo v1, "warning: no STATUS_BAR_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/app/StatusBarManager;->mService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static windowStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 196
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string v0, "WINDOW_STATE_HIDING"

    .line 199
    :goto_0
    return-object v0

    .line 197
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "WINDOW_STATE_HIDDEN"

    goto :goto_0

    .line 198
    :cond_1
    if-nez p0, :cond_2

    const-string v0, "WINDOW_STATE_SHOWING"

    goto :goto_0

    .line 199
    :cond_2
    const-string v0, "WINDOW_STATE_UNKNOWN"

    goto :goto_0
.end method


# virtual methods
.method public collapsePanels()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 133
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 134
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->collapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    return-void

    .line 136
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public disable(I)V
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 102
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 103
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Landroid/app/StatusBarManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    return-void

    .line 106
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandNotificationsPanel()V
    .locals 3

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 118
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    return-void

    .line 121
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public expandSettingsPanel()V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 148
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    return-void

    .line 151
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 172
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 173
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    return-void

    .line 176
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setCameraAssist(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 205
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 206
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 207
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCameraAssist(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    return-void

    .line 209
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setIcon(Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconId"    # I
    .param p3, "iconLevel"    # I
    .param p4, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 159
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    .line 160
    .local v0, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Landroid/app/StatusBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/statusbar/IStatusBarService;->setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    return-void

    .line 164
    .end local v0    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v6

    .line 166
    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 184
    :try_start_0
    invoke-direct {p0}, Landroid/app/StatusBarManager;->getService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 185
    .local v1, "svc":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 186
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->setIconVisibility(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    return-void

    .line 188
    .end local v1    # "svc":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
