.class Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$EstimatesObserver;
.super Landroid/database/ContentObserver;
.source "StaminaAppwidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EstimatesObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 56
    iput-object p1, p0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$EstimatesObserver;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget$EstimatesObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/superstamina/appwidget/StaminaAppwidget;->updateWidget(Landroid/content/Context;)V

    .line 62
    return-void
.end method
