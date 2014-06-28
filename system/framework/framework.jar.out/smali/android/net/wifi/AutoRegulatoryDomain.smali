.class final Landroid/net/wifi/AutoRegulatoryDomain;
.super Ljava/lang/Object;
.source "AutoRegulatoryDomain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;
    }
.end annotation


# instance fields
.field private final mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiStateMachine"    # Landroid/net/wifi/WifiStateMachine;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/AutoRegulatoryDomain;->mUpdateLogic:Landroid/net/wifi/AutoRegulatoryDomain$UpdateLogic;

    .line 42
    return-void
.end method
