.class public interface abstract Lorg/codeaurora/ims/IImsService;
.super Ljava/lang/Object;
.source "IImsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/IImsService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deregisterCallback(Lorg/codeaurora/ims/IImsServiceListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCallDetailsExtrasinCall(I)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRegistrationState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract queryImsServiceStatus(ILandroid/os/Messenger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lorg/codeaurora/ims/IImsServiceListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRegistrationState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setServiceStatus(IIIIILandroid/os/Messenger;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
