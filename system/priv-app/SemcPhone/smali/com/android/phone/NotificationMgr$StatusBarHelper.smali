.class Lcom/android/phone/NotificationMgr$StatusBarHelper;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusBarHelper"
.end annotation


# instance fields
.field private mCurrentState:I

.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method private constructor <init>(Lcom/android/phone/NotificationMgr;)V
    .locals 1

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    .line 213
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NotificationMgr;Lcom/android/phone/NotificationMgr$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NotificationMgr;
    .param p2, "x1"    # Lcom/android/phone/NotificationMgr$1;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;-><init>(Lcom/android/phone/NotificationMgr;)V

    return-void
.end method

.method private updateStatusBar(ZI)V
    .locals 3
    .param p1, "isEnabled"    # Z
    .param p2, "param"    # I

    .prologue
    .line 287
    if-eqz p1, :cond_1

    .line 288
    iget v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    .line 292
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updating status bar state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/NotificationMgr;->access$100(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 294
    return-void

    .line 290
    :cond_1
    iget v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->mCurrentState:I

    goto :goto_0
.end method


# virtual methods
.method collapse()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/phone/NotificationMgr$StatusBarHelper;->this$0:Lcom/android/phone/NotificationMgr;

    # getter for: Lcom/android/phone/NotificationMgr;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;)Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 301
    return-void
.end method

.method public enableExpandedView(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 233
    const/high16 v0, 0x10000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 234
    return-void
.end method

.method public enableNavigationBarBack(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 272
    const/high16 v0, 0x400000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 273
    return-void
.end method

.method public enableNavigationBarHome(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 264
    const/high16 v0, 0x200000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 265
    return-void
.end method

.method public enableNavigationBarRecent(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 256
    const/high16 v0, 0x1000000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 257
    return-void
.end method

.method public enableNavigationBarSearch(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 280
    const/high16 v0, 0x2000000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 281
    return-void
.end method

.method public enableSystemBarNavigation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 245
    const/high16 v0, 0x3600000

    invoke-direct {p0, p1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->updateStatusBar(ZI)V

    .line 249
    return-void
.end method
