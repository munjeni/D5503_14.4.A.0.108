.class public interface abstract Lcom/sony/stamina/IApplicationDependencyObserver;
.super Ljava/lang/Object;
.source "IApplicationDependencyObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/stamina/IApplicationDependencyObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDependencyAdded(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDependencyRemoved(Lcom/sony/stamina/ProcessInfo;Lcom/sony/stamina/ProcessInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
