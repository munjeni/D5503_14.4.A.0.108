.class final Landroid/net/wifi/SupplicantConf$Entry;
.super Ljava/lang/Object;
.source "SupplicantConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Entry"
.end annotation


# instance fields
.field public mBlock:Ljava/lang/String;

.field public mKey:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/SupplicantConf$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/wifi/SupplicantConf$1;

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/net/wifi/SupplicantConf$Entry;-><init>()V

    return-void
.end method
