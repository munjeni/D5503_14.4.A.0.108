.class Lcom/android/internal/policy/impl/PhoneWindowManager$31;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$needsMenu:Z

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V
    .locals 0

    .prologue
    .line 6270
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$visibility:I

    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    iput-boolean p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$needsMenu:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 6274
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 6275
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 6277
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$visibility:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v5

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->filterSystemUiVisibility(II)I
    invoke-static {v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;II)I

    move-result v2

    .line 6278
    .local v2, "vis":I
    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V

    .line 6279
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->val$needsMenu:Z

    invoke-interface {v1, v3}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6285
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    .end local v2    # "vis":I
    :cond_0
    :goto_0
    return-void

    .line 6281
    :catch_0
    move-exception v0

    .line 6283
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$31;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
