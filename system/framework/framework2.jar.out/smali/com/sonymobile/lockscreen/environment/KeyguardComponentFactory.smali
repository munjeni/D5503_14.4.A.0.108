.class public Lcom/sonymobile/lockscreen/environment/KeyguardComponentFactory;
.super Ljava/lang/Object;
.source "KeyguardComponentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBackground(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;)Lcom/sonymobile/lockscreen/environment/KeyguardBackground;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public createKeyguardNoSecurityView(Landroid/content/Context;Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "keyguardComponentEnvironment"    # Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
