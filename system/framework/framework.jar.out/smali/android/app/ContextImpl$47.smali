.class final Landroid/app/ContextImpl$47;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Landroid/app/ContextImpl;

    .prologue
    .line 632
    # getter for: Landroid/app/ContextImpl;->sIsSupportingWifiSimAuth:Z
    invoke-static {}, Landroid/app/ContextImpl;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    new-instance v0, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;

    invoke-direct {v0, p1}, Lcom/sonyericsson/authentication/simcard/SimcardAuthenticationManagerImpl;-><init>(Landroid/content/Context;)V

    .line 635
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
