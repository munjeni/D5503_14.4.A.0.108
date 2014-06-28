.class public abstract Lcom/sonymobile/lockscreen/environment/ExternalKeyguardSecurityView;
.super Landroid/widget/RelativeLayout;
.source "ExternalKeyguardSecurityView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/lockscreen/environment/ExternalKeyguardSecurityView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sonymobile/lockscreen/environment/ExternalKeyguardSecurityView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 63
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "arg0"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 83
    return-void
.end method
