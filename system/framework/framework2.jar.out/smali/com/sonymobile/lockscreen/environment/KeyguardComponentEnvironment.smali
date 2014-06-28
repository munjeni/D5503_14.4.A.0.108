.class public interface abstract Lcom/sonymobile/lockscreen/environment/KeyguardComponentEnvironment;
.super Ljava/lang/Object;
.source "KeyguardComponentEnvironment.java"


# virtual methods
.method public abstract getKeyguardContentContainers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyguardDismisser()Lcom/sonymobile/lockscreen/environment/ExternalKeyguardDismisser;
.end method

.method public abstract getKeyguardPowerManager()Lcom/sonymobile/lockscreen/environment/ExternalKeyguardPowerManager;
.end method

.method public abstract getViewStubInitializer()Lcom/sonymobile/lockscreen/environment/ExternalViewStubInitializer;
.end method
