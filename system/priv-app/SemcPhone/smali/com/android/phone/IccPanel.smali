.class public Lcom/android/phone/IccPanel;
.super Landroid/app/Dialog;
.source "IccPanel.java"


# instance fields
.field private mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const v0, 0x7f0d0009

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 46
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 48
    .local v1, "winP":Landroid/view/Window;
    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 49
    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 51
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 72
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 73
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    const-string v2, "statusbar"

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 75
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 91
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 92
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 81
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 82
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 87
    iget-object v0, p0, Lcom/android/phone/IccPanel;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 88
    return-void
.end method
