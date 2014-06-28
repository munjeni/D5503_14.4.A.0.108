.class Lcom/android/phone/MobileNetworkSettings$ButtonRes;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonRes"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final resId:I

.field final shownByTrue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/MobileNetworkSettings$ButtonRes;-><init>(Ljava/lang/String;IZ)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "shownByDefault"    # Z

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->label:Ljava/lang/String;

    .line 137
    iput p2, p0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->resId:I

    .line 138
    iput-boolean p3, p0, Lcom/android/phone/MobileNetworkSettings$ButtonRes;->shownByTrue:Z

    .line 139
    return-void
.end method
