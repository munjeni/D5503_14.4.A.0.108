.class public Landroid/app/Dialog;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Dialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private mActionBar:Lcom/android/internal/app/ActionBarImpl;

.field private mActionMode:Landroid/view/ActionMode;

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field mWindow:Landroid/view/Window;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 157
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createContextThemeWrapper"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-boolean v4, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 112
    iput-boolean v2, p0, Landroid/app/Dialog;->mCreated:Z

    .line 113
    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 114
    iput-boolean v2, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 116
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v2, Landroid/app/Dialog$1;

    invoke-direct {v2, p0}, Landroid/app/Dialog$1;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    .line 160
    if-eqz p3, :cond_1

    .line 161
    if-nez p2, :cond_0

    .line 162
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 163
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 165
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 167
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    .line 172
    :goto_0
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    .line 173
    iget-object v2, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 174
    .local v1, "w":Landroid/view/Window;
    iput-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    .line 175
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 176
    iget-object v2, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 177
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 178
    invoke-static {v1, p1}, Lcom/sony/smallapp/internal/util/DialogHelper;->changeWindowTypeIfNeeded(Landroid/view/Window;Landroid/content/Context;)V

    .line 179
    new-instance v2, Landroid/app/Dialog$ListenersHandler;

    invoke-direct {v2, p0}, Landroid/app/Dialog$ListenersHandler;-><init>(Landroid/app/Dialog;)V

    iput-object v2, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    .line 180
    return-void

    .line 169
    .end local v1    # "w":Landroid/view/Window;
    :cond_1
    iput-object p1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 197
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 198
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 199
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 190
    iput-boolean p2, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 191
    iput-object p3, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 192
    return-void
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1010
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1011
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1012
    .local v1, "context":Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1013
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1014
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1016
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 1021
    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_2
.end method

.method private sendDismissMessage()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    :cond_0
    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 363
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 519
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 1117
    iget-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 1120
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1122
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1123
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    .line 909
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 910
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 319
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/app/Dialog;->dismissDialog()V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/app/Dialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method dismissDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-nez v0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    const-string v0, "Dialog"

    const-string v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 337
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 342
    :cond_3
    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 343
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 344
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 345
    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 347
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    .line 340
    iget-object v1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 342
    :cond_4
    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 343
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 344
    invoke-virtual {p0}, Landroid/app/Dialog;->onStop()V

    .line 345
    iput-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    .line 347
    invoke-direct {p0}, Landroid/app/Dialog;->sendDismissMessage()V

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 788
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    const/4 v0, 0x1

    .line 791
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 717
    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 723
    :cond_0
    :goto_0
    return v0

    .line 720
    :cond_1
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 723
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 737
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x1

    .line 740
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/Dialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 368
    iget-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCreated:Z

    .line 372
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 795
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 798
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 799
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 801
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 803
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    .line 799
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 754
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x1

    .line 757
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 771
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    const/4 v0, 0x1

    .line 774
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 475
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1085
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 1225
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 917
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1001
    iget-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 1002
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 1004
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 991
    iput-object p1, p0, Landroid/app/Dialog;->mActionMode:Landroid/view/ActionMode;

    .line 992
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 605
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 607
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 696
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 950
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 957
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 923
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 870
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 817
    if-nez p1, :cond_0

    .line 818
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 810
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 705
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 686
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 554
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 555
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 556
    const/4 v0, 0x1

    .line 559
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 595
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 620
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 581
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 839
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 840
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 842
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 896
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 856
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 857
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 859
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 882
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 828
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 829
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 830
    .local v0, "goforit":Z
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 832
    .end local v0    # "goforit":Z
    :cond_0
    :goto_0
    return v1

    .line 830
    .restart local v0    # "goforit":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 430
    const-string v1, "android:dialogHierarchy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 431
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 436
    iget-object v1, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 437
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 411
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:dialogShowing"

    iget-boolean v2, p0, Landroid/app/Dialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 413
    iget-boolean v1, p0, Landroid/app/Dialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "android:dialogHierarchy"

    iget-object v2, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 416
    :cond_0
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 963
    iget-object v4, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 967
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Landroid/app/Dialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 968
    .local v3, "appName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    .line 969
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 970
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 971
    const/4 v2, 0x1

    .line 973
    :cond_0
    return v2
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 397
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    .line 636
    const/4 v0, 0x1

    .line 639
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 690
    iget-object v0, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 693
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 699
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 978
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 981
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 943
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 944
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    .line 902
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 903
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 929
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 930
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1049
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1155
    iput-object p1, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1156
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1093
    iput-boolean p1, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1094
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    if-nez v0, :cond_0

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Dialog;->mCancelable:Z

    .line 1109
    :cond_0
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1110
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I

    .prologue
    .line 485
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    .line 486
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 496
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 497
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 508
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1192
    iput-object p1, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1193
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1073
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1074
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1081
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1082
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1057
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1058
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1066
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 1137
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_0
    if-eqz p1, :cond_1

    .line 1143
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    .line 1147
    :goto_0
    return-void

    .line 1145
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1163
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1168
    :cond_0
    if-eqz p1, :cond_1

    .line 1169
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    .line 1173
    :goto_0
    return-void

    .line 1171
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 1232
    iput-object p1, p0, Landroid/app/Dialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1233
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    .line 1180
    if-eqz p1, :cond_0

    .line 1181
    iget-object v0, p0, Landroid/app/Dialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    .line 1185
    :goto_0
    return-void

    .line 1183
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mShowMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    iput-object p1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    .line 228
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Dialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 229
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 539
    iget-object v0, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 528
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1218
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1219
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 257
    iget-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    if-eqz v3, :cond_2

    .line 258
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 262
    :cond_0
    iget-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 300
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    iput-boolean v5, p0, Landroid/app/Dialog;->mCanceled:Z

    .line 269
    iget-boolean v3, p0, Landroid/app/Dialog;->mCreated:Z

    if-nez v3, :cond_3

    .line 270
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 273
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->onStart()V

    .line 274
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    .line 276
    iget-object v3, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    iget-object v3, p0, Landroid/app/Dialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 278
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDefaultIcon(I)V

    .line 279
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDefaultLogo(I)V

    .line 280
    new-instance v3, Lcom/android/internal/app/ActionBarImpl;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl;-><init>(Landroid/app/Dialog;)V

    iput-object v3, p0, Landroid/app/Dialog;->mActionBar:Lcom/android/internal/app/ActionBarImpl;

    .line 283
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    iget-object v3, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 284
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_5

    .line 286
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 287
    .local v2, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 288
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 290
    move-object v1, v2

    .line 294
    .end local v2    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    :try_start_0
    iget-object v3, p0, Landroid/app/Dialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/app/Dialog;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/Dialog;->mShowing:Z

    .line 297
    invoke-direct {p0}, Landroid/app/Dialog;->sendShowMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 298
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1198
    iget-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1199
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1204
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1205
    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1206
    iput-object p1, p0, Landroid/app/Dialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1208
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1200
    :cond_1
    iget-object v0, p0, Landroid/app/Dialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Dialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1201
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1034
    iget-object v0, p0, Landroid/app/Dialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1035
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 936
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 937
    return-void
.end method
