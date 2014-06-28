.class public interface abstract Lcom/sony/stamina/IApplicationDependency;
.super Ljava/lang/Object;
.source "IApplicationDependency.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sony/stamina/IApplicationDependency$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDependency(Lcom/sony/stamina/ProcessInfo;)[Lcom/sony/stamina/ProcessInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setObserver(Lcom/sony/stamina/IApplicationDependencyObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
