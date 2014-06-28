.class public abstract Landroid/os/storage/MountServiceListener;
.super Ljava/lang/Object;
.source "MountServiceListener.java"


# static fields
.field public static final EXTRA_STORAGE_ACTION:Ljava/lang/String; = "storageAction"

.field public static final MEDIA_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.intent.action.MEDIA_STATE_CHANGED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onStorageStateChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method

.method onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z

    .prologue
    .line 35
    return-void
.end method
