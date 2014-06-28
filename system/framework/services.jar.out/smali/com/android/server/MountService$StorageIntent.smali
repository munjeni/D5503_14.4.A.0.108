.class Lcom/android/server/MountService$StorageIntent;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StorageIntent"
.end annotation


# instance fields
.field final mAction:Ljava/lang/String;

.field final mUser:Landroid/os/UserHandle;

.field final mVolume:Landroid/os/storage/StorageVolume;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    .locals 0
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "volume"    # Landroid/os/storage/StorageVolume;
    .param p4, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/MountService$StorageIntent;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p2, p0, Lcom/android/server/MountService$StorageIntent;->mAction:Ljava/lang/String;

    .line 524
    iput-object p3, p0, Lcom/android/server/MountService$StorageIntent;->mVolume:Landroid/os/storage/StorageVolume;

    .line 525
    iput-object p4, p0, Lcom/android/server/MountService$StorageIntent;->mUser:Landroid/os/UserHandle;

    .line 526
    return-void
.end method
